CH********** 概述：
1、脱离PS的GEMAC和DMA，通过AXI Ethernet和AXI DMA搭建PL端的以太网连接
2、正确配置AXI Ethernet和AXI DMA IP核的参数设置
3、修改SDK的LWIP库实现88E1512 PHY芯片的配置
4、修改SDK的LWIP库实现PS通过AXI总线控制AXI Ethernet配置PHY芯片
5、通过SDK的lwip echo server例程在ETH_LAN_SFP子卡上分别验证光、电网络TCP通信


