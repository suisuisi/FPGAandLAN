*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2017 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current README.TXT Version: 1.0 
Date Last Modified:  JUN/27/2017
Date Created: 27JUN2017

Associated Document: xapp1306-ps-pl-ethernet-performance-lwip.pdf

Supported Device(s): Zynq UltraScale+ MP SoC (xczu9eg-ffvb1156-2-i, ZCU102 board) 
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version      Revision Description
=========================================================================
27JUN2017   1.0          Initial Xilinx release.
=========================================================================

2. OVERVIEW

    This application note provides four designs-
      * PS Ethernet (GEM3) connected to a 1G physical interface in PS through an MIO interface.(ps_ethernet_1g)
      * PS Ethernet (GEM0) connected to a 1000BASE-X physical interface in PL through an EMIO interface.(ps_emio_eth_1g)
      * Ethernet implemented as soft logic in PL (MAC) and connected to the 1000BASE-X physical interface in PL.(pl_ethernet_1g)
	  * Ethernet implemented as soft logic in PL (MAC) and connected to the SGMII physical interface in PL.(pl_ethernet_sgmii)
	  * PS Ethernet (GEM0) connected to a SGMII physical interface in PL through an EMIO interface.(ps_emio_eth_sgmii)

  a. Zynq UltraScale MPSoC PS EMIO Ethernet
      Here, the GEM3 GMII interface is routed to PL via EMIO. 1000BASE-X/SGMII
      PHY is used in PL to connect this GMII interface and to SFP module
      externally to a LAN port.

  b. Zynq UltraScale MPSoC PL Ethernet    
      The programmable logic uses 64-bit HP port to connect to AXI-DMA for high
      performance data transfer followed by AXI Ethernet IP and 1000BASE-X/SGMII
	  PHY.
    
  c. Zynq UltraScale MPSoC PS ethernet
     The PS Ethernet MAC (GEM3) connects the on-board TI PHY through MIO pins using the RGMII 
     interface. The GEM3 block is enabled while generating the hardware system.
	 
  d. IP Versions used
        i. AXI-DMA                              : v7.1
       ii. AXI 1G/2.5G Ethernet Subsystem       : v7.0
      iii. 1G/2.5G Ethernet PCS/PMA or SGMII    : v16.0

      The Zynq PS EMIO Ethernet design uses only Gigabit Ethernet 1000BASE-X
      PCS-PMA or SGMII core IP.       

3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

    a. Hardware
      i. ZCU102 Kit  
     ii. Power supply, USB-UART and USB-JTAG cables and Ethernet cable 
    iii. Cisco GLC-T 1000BASE-X Gigabit Ethernet RJ45 SFP Module
     iv. PC system with 1000Mbps capable Ethernet port with preferably Linux
         OS and netperf installed

   b. Software
      i. Vivado Design Suite v2017.1 
     ii. Linux development PC with ARM GNU cross compile tool chain and Git
          installed 
    iii. Terminal emulator software like TeraTerm      


4. DESIGN FILE HIERARCHY

    XAPP1306 : Main XAPP folder
    |
    |--hardware : Design Sources
    |   |
    |   |--sources : Top level design wrapper
    |   |  |-- constraints 	: top level constraints files
    |   |
    |   |--vivado : Implementation scripts and runs
    |      |--scripts/ps_emio_eth_1g : Contains TCL scripts for running PS EMIO (1000BASE-X)design
    |      |--scripts/pl_eth_1g   : Contains TCL scripts for running PL ETH 1G (1000BASE-X) design
	|      |--scripts/ps_emio_eth_sgmii : Contains TCL scripts for running PS EMIO (SGMII)design
	|      |--scripts/pl_eth_sgmii : Contains TCL scripts for running PL ETH 1G (SGMII)design
	|      |--scripts/ps_eth_1g : Contains TCL scripts for running PS ETH design
	|      
    |--software
    |   |--iperf      : Contains iperf application source for A53 and R5
    |   |
	|	|--patches    : Contains the fsbl clock patch
	|		
    |--ready_to_test : Prebuilt binaries for test
    |   |-- lwIP
	|         |--xapp1306_ps_eth_1g : SD Card contents for PS Ethernet 1G Design (1000BASE-X)
    |	      |	|-- A53
	|         |     |-BOOT.bin (tcp)
	|         |     |-BOOT.bin (udp)
	|         | |-- R5
    |         |     |-BOOT.bin(tcp)
    |         |     |-BOOT.bin (udp)
	|         |--xapp1306_pl_eth_1g : SD Card contents for PL Ethernet 1G Design (1000BASE-X)
    |	      |	|-- A53
	|         |     |-BOOT.bin(tcp)
	|         |     |-BOOT.bin(udp)
	|         | |-- R5
    |         |     |-BOOT.bin(tcp)
    |         |     |-BOOT.bin(udp)
    |         |
    |         |--xapp1306_ps_emio_eth_1g : SD Card contents for PS GEM EMIO Ethernet Design (1000BASE-X)
    |	      |	|-- A53
	|         |     |-BOOT.bin(tcp)
	|         |     |-BOOT.bin(udp)
	|         | |-- R5
    |         |     |-BOOT.bin(tcp)
    |         |     |-BOOT.bin(udp)
	|         |--xapp1306_pl_ethernet_sgmii : SD Card contents for PL Ethernet 1G Design (SGMII)
	|         | |-- A53
	|         |     |-BOOT.bin(tcp)
	|         |     |-BOOT.bin(udp)
	|         | |-- R5
    |         |     |-BOOT.bin(tcp)
    |         |     |-BOOT.bin(udp) 
	|--xapp1306_ps_emio_eth_sgmii : SD Card contents for PS GEM EMIO Ethernet 1G Design (SGMII)
    |	      |	|-- A53
	|         |     |-BOOT.bin (tcp)
	|         |     |-BOOT.bin (udp)
	|         | |-- R5
    |         |     |-BOOT.bin(tcp)
	|         |     |-BOOT.bin(udp) 
    |--README.TXT : the file you are currently reading  


5. INSTALLATION AND OPERATING INSTRUCTIONS 

   Please refer to the following link for detailed steps on how to re-build and Hardware and Software.
   http://www.wiki.xilinx.com/PS+and+PL+based+Ethernet+in+Zynq+MPSoC

6. SUPPORT

    To obtain technical support for this reference design, go to 
    www.xilinx.com/support to locate answers to known issues in the Xilinx
    Answers Database or to create a WebCase.  
