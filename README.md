# ndnsim-ddos
深入了研究了ndn和ndnSIM的使用，关于ns-3项目所用的waf,个人感觉不太好用，所以我在project/ns-3目录下新建了一个文
件夹test在test中可以新建实验cpp文件，使用cmake来设置头文件路径，动态库路径来编译，从而绕过waf，更直接的看到项目
的各种信息.    


关于ddos攻击，项目新建了一个ndn-consumer-ddos.hpp和ndn-consumer-ddos.cpp文件，将这两个文件复制到ns-3/src/ndnSIM/apps  
路径下，随后进入到该路径下ndn-consumer.hpp文件下，将SendPacket()声明为virtual，因为consumerddos继承自consumer,  
而程序运行时节点上的应用不断发送interest包的实现原理是向simulator加入consumer::SendPacket()事件，而ndn-consumer-ddos  
对它进行了重写.  


consumer发包过程：  
1.而其中发包则是由函数 ScheduleNextPacket 控制，即m_sendEvent = Simulator::Schedule(Seconds(0.0), &Consumer::SendPacket, this);  
该函数的事件请求调用基类的 Consumer::SendPacket 函数，该函数造出一个兴趣包，然后用 m_appLink->onReceiveInterest 发出去。  

2.ppLinkService::onReceiveInterest 则是调用了LinkService::receiveInterest 函数，该函数触发了 LinkService 的 afterReceiveInterest 信号。   

3.在Forwarder 的构造函数，里面的 faceTable 将里面每个 face 的 afterReceiveInterest 信号都连接到了 Forwarder::startProcessInterest 上。  
LinkService 的 afterReceiveInterest 信号等价于 Forwarder::startProcessInterest 函数。而 Forwarder::startProcessInterest 移交给了   
Forwarder::onIncomingInterest 函数。总之就是 Forwarder 对兴趣包进行处理。如果找到了，就会执行 Strategy::sendData 。否则就是   
onOutgoingInterest 向下一跳继续往后找。  

4.这里我们假设没找到，继续向下一跳找。随后执行 face.sendInterest 函数，又执行 LinkService::sendInterest ，然后   
GenericLinkService::doSendInterest 到 sendNetPacket 给链路层进行 Frag 分片，分完片执行 sendLpPacket ，再通过   
sendPacket 交给物理传输层执行 Transport::send ，再交给 NetDeviceTransport::doSend ，移交给 PointToPointNetDevice::Send ，  
其中执行了 TransmitStart ，又踢皮球给了 PointToPointChannel::TransmitStart   

5.PointToPointNetDevice::Receive 事件触发后，会执行 m_promiscCallback 回调函数。这个回调函数是由 Node::RegisterProtocolHandler   
执行 m_handlers.push_back   


使用：  
ndn::AppHelper consumerHelper("ns3::ndn::Consumerddos");即可创建一个使用ddos攻击的AppHelper类.  
