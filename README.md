# ndnsim-ddos
深入了研究了ndn和ndnSIM的使用，关于ns-3项目所用的waf,个人感觉不太好用，所以我在project/ns-3目录下新建了一个文件夹test  
在test中可以新建实验cpp文件，使用cmake来设置头文件路径，动态库路径来编译，从而绕过waf，更直接的看到项目各种信息.  

关于ddos攻击，项目新建了一个ndn-consumer-ddos.hpp和ndn-consumer-ddos.cpp文件，将这两个文件复制到ns-3/src/ndnSIM/apps路径下  
随后进入到该路径下ndn-consumer.hpp文件下，将SendPacket()声明为virtual，因为consumerddos继承自consumer,而程序运行时节点上的应用  
不断发送interest包的实现原理是向simulator加入consumer::SendPacket()事件，而ndn-consumer-ddos对它进行了重写.  

使用：ndn::AppHelper consumerHelper("ns3::ndn::Consumerddos");即可创建一个使用ddos攻击的AppHelper类.
