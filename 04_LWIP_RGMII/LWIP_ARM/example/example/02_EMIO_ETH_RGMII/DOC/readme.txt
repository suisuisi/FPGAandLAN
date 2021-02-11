CH********** 概述：
1、通过EMIO将PS的ETH1扩展至PL
2、通过GMII to RGMII IP核实现EMIO的GMII接口至RGMII接口的转换
3、修改SDK的LWIP库实现PS通过GMII to RGMII IP核连接外部PHY芯片，实现光电网络通信
4、修改SDK的LWIP库实现PS通过MDIO接口正确配置工作于光口模式的PHY芯片
4、通过SDK的lwip echo server例程在ETH_LAN_SFP子卡上分别验证光、电网络TCP通信


