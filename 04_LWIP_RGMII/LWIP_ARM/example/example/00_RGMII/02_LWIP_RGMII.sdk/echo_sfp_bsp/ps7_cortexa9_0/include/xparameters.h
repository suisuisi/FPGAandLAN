#ifndef XPARAMETERS_H   /* prevent circular inclusions */
#define XPARAMETERS_H   /* by using protection macros */

/* Definition for CPU ID */
#define XPAR_CPU_ID 0U

/* Definitions for peripheral PS7_CORTEXA9_0 */
#define XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ 666666687


/******************************************************************/

/* Canonical definitions for peripheral PS7_CORTEXA9_0 */
#define XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ 666666687


/******************************************************************/

#include "xparameters_ps.h"

#define STDIN_BASEADDRESS 0xE0001000
#define STDOUT_BASEADDRESS 0xE0001000

/******************************************************************/

/* Platform specific definitions */
#define PLATFORM_ZYNQ
 
/* Definitions for sleep timer configuration */
#define XSLEEP_TIMER_IS_DEFAULT_TIMER
 
 
/******************************************************************/
/* Definitions for driver AXIDMA */
#define XPAR_XAXIDMA_NUM_INSTANCES 1

/* Definitions for peripheral AXI_DMA_0 */
#define XPAR_AXI_DMA_0_DEVICE_ID 0
#define XPAR_AXI_DMA_0_BASEADDR 0x40400000
#define XPAR_AXI_DMA_0_HIGHADDR 0x4040FFFF
#define XPAR_AXI_DMA_0_SG_INCLUDE_STSCNTRL_STRM 1
#define XPAR_AXI_DMA_0_INCLUDE_MM2S_DRE 1
#define XPAR_AXI_DMA_0_INCLUDE_S2MM_DRE 1
#define XPAR_AXI_DMA_0_INCLUDE_MM2S 1
#define XPAR_AXI_DMA_0_INCLUDE_S2MM 1
#define XPAR_AXI_DMA_0_M_AXI_MM2S_DATA_WIDTH 32
#define XPAR_AXI_DMA_0_M_AXI_S2MM_DATA_WIDTH 32
#define XPAR_AXI_DMA_0_INCLUDE_SG 1
#define XPAR_AXI_DMA_0_ENABLE_MULTI_CHANNEL 0
#define XPAR_AXI_DMA_0_NUM_MM2S_CHANNELS 1
#define XPAR_AXI_DMA_0_NUM_S2MM_CHANNELS 1
#define XPAR_AXI_DMA_0_MM2S_BURST_SIZE 16
#define XPAR_AXI_DMA_0_S2MM_BURST_SIZE 16
#define XPAR_AXI_DMA_0_MICRO_DMA 0
#define XPAR_AXI_DMA_0_ADDR_WIDTH 32
#define XPAR_AXI_DMA_0_SG_LENGTH_WIDTH 16


/******************************************************************/

/* Canonical definitions for peripheral AXI_DMA_0 */
#define XPAR_AXIDMA_0_DEVICE_ID XPAR_AXI_DMA_0_DEVICE_ID
#define XPAR_AXIDMA_0_BASEADDR 0x40400000
#define XPAR_AXIDMA_0_SG_INCLUDE_STSCNTRL_STRM 1
#define XPAR_AXIDMA_0_INCLUDE_MM2S 1
#define XPAR_AXIDMA_0_INCLUDE_MM2S_DRE 1
#define XPAR_AXIDMA_0_M_AXI_MM2S_DATA_WIDTH 32
#define XPAR_AXIDMA_0_INCLUDE_S2MM 1
#define XPAR_AXIDMA_0_INCLUDE_S2MM_DRE 1
#define XPAR_AXIDMA_0_M_AXI_S2MM_DATA_WIDTH 32
#define XPAR_AXIDMA_0_INCLUDE_SG 1
#define XPAR_AXIDMA_0_ENABLE_MULTI_CHANNEL 0
#define XPAR_AXIDMA_0_NUM_MM2S_CHANNELS 1
#define XPAR_AXIDMA_0_NUM_S2MM_CHANNELS 1
#define XPAR_AXIDMA_0_MM2S_BURST_SIZE 16
#define XPAR_AXIDMA_0_S2MM_BURST_SIZE 16
#define XPAR_AXIDMA_0_MICRO_DMA 0
#define XPAR_AXIDMA_0_c_addr_width 32
#define XPAR_AXIDMA_0_c_sg_length_width 16


/******************************************************************/

/* Definitions for driver AXIETHERNET */
#define XPAR_XAXIETHERNET_NUM_INSTANCES 1U
/* Definitions for peripheral AXI_ETHERNET_0 */
#define XPAR_AXI_ETHERNET_0_DEVICE_ID 0U
#define XPAR_AXI_ETHERNET_0_BASEADDR 0x41000000U
#define XPAR_AXI_ETHERNET_0_HIGHADDR 0x4103FFFFU
#define XPAR_AXI_ETHERNET_0_TYPE 1U
#define XPAR_AXI_ETHERNET_0_TXCSUM 2U
#define XPAR_AXI_ETHERNET_0_RXCSUM 2U
#define XPAR_AXI_ETHERNET_0_PHY_TYPE 3U
#define XPAR_AXI_ETHERNET_0_TXVLAN_TRAN 0U
#define XPAR_AXI_ETHERNET_0_RXVLAN_TRAN 0U
#define XPAR_AXI_ETHERNET_0_TXVLAN_TAG 0U
#define XPAR_AXI_ETHERNET_0_RXVLAN_TAG 0U
#define XPAR_AXI_ETHERNET_0_TXVLAN_STRP 0U
#define XPAR_AXI_ETHERNET_0_RXVLAN_STRP 0U
#define XPAR_AXI_ETHERNET_0_MCAST_EXTEND 0U
#define XPAR_AXI_ETHERNET_0_STATS 1U
#define XPAR_AXI_ETHERNET_0_AVB 0U
#define XPAR_AXI_ETHERNET_0_Enable_1588 0U
#define XPAR_AXI_ETHERNET_0_SPEED 1000U
#define XPAR_AXI_ETHERNET_0_PHYADDR 1U

/* Canonical definitions for peripheral AXI_ETHERNET_0 */
#define XPAR_AXIETHERNET_0_DEVICE_ID 0U
#define XPAR_AXIETHERNET_0_BASEADDR 0x41000000U
#define XPAR_AXIETHERNET_0_HIGHADDR 0x4103FFFFU
#define XPAR_AXIETHERNET_0_TEMAC_TYPE 1U
#define XPAR_AXIETHERNET_0_TXCSUM 2U
#define XPAR_AXIETHERNET_0_RXCSUM 2U
#define XPAR_AXIETHERNET_0_PHY_TYPE 3U
#define XPAR_AXIETHERNET_0_TXVLAN_TRAN 0U
#define XPAR_AXIETHERNET_0_RXVLAN_TRAN 0U
#define XPAR_AXIETHERNET_0_TXVLAN_TAG 0U
#define XPAR_AXIETHERNET_0_RXVLAN_TAG 0U
#define XPAR_AXIETHERNET_0_TXVLAN_STRP 0U
#define XPAR_AXIETHERNET_0_RXVLAN_STRP 0U
#define XPAR_AXIETHERNET_0_MCAST_EXTEND 0U
#define XPAR_AXIETHERNET_0_STATS 1U
#define XPAR_AXIETHERNET_0_AVB 0U
#define XPAR_AXIETHERNET_0_ENABLE_SGMII_OVER_LVDS 0U
#define XPAR_AXIETHERNET_0_ENABLE_1588 0U
#define XPAR_AXIETHERNET_0_SPEED 1000U
#define XPAR_AXIETHERNET_0_NUM_TABLE_ENTRIES 4U
#define XPAR_AXIETHERNET_0_PHYADDR 1U
#define XPAR_AXIETHERNET_0_INTR XPAR_FABRIC_AXI_ETHERNET_0_INTERRUPT_INTR


/* AxiEthernet TYPE Enumerations */
#define XPAR_AXI_FIFO    1U
#define XPAR_AXI_DMA     2U
#define XPAR_AXI_MCDMA   3U


/* Canonical Axi parameters for AXI_ETHERNET_0 */
#define XPAR_AXIETHERNET_0_CONNECTED_TYPE XPAR_AXI_DMA
#define XPAR_AXIETHERNET_0_CONNECTED_BASEADDR 0x40400000U
#define XPAR_AXIETHERNET_0_CONNECTED_FIFO_INTR 0xFFU
#define XPAR_AXIETHERNET_0_CONNECTED_DMARX_INTR XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define XPAR_AXIETHERNET_0_CONNECTED_DMATX_INTR XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR
#define XPAR_AXIETHERNET_0_MCDMA_CHAN_CNT 0
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX1_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX2_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX3_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX4_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX5_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX6_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX7_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX8_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX9_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX10_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX11_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX12_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX13_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX14_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX15_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMARX16_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX1_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX2_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX3_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX4_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX5_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX6_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX7_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX8_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX9_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX10_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX11_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX12_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX13_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX14_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX15_INTR 0xFF
#define XPAR_AXIETHERNET_0_CONNECTED_MCDMATX16_INTR 0xFF

/******************************************************************/


/* Definitions for peripheral PS7_DDR_0 */
#define XPAR_PS7_DDR_0_S_AXI_BASEADDR 0x00100000
#define XPAR_PS7_DDR_0_S_AXI_HIGHADDR 0x3FFFFFFF


/******************************************************************/

/* Definitions for driver DEVCFG */
#define XPAR_XDCFG_NUM_INSTANCES 1U

/* Definitions for peripheral PS7_DEV_CFG_0 */
#define XPAR_PS7_DEV_CFG_0_DEVICE_ID 0U
#define XPAR_PS7_DEV_CFG_0_BASEADDR 0xF8007000U
#define XPAR_PS7_DEV_CFG_0_HIGHADDR 0xF80070FFU


/******************************************************************/

/* Canonical definitions for peripheral PS7_DEV_CFG_0 */
#define XPAR_XDCFG_0_DEVICE_ID XPAR_PS7_DEV_CFG_0_DEVICE_ID
#define XPAR_XDCFG_0_BASEADDR 0xF8007000U
#define XPAR_XDCFG_0_HIGHADDR 0xF80070FFU


/******************************************************************/

/* Definitions for driver DMAPS */
#define XPAR_XDMAPS_NUM_INSTANCES 2

/* Definitions for peripheral PS7_DMA_NS */
#define XPAR_PS7_DMA_NS_DEVICE_ID 0
#define XPAR_PS7_DMA_NS_BASEADDR 0xF8004000
#define XPAR_PS7_DMA_NS_HIGHADDR 0xF8004FFF


/* Definitions for peripheral PS7_DMA_S */
#define XPAR_PS7_DMA_S_DEVICE_ID 1
#define XPAR_PS7_DMA_S_BASEADDR 0xF8003000
#define XPAR_PS7_DMA_S_HIGHADDR 0xF8003FFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_DMA_NS */
#define XPAR_XDMAPS_0_DEVICE_ID XPAR_PS7_DMA_NS_DEVICE_ID
#define XPAR_XDMAPS_0_BASEADDR 0xF8004000
#define XPAR_XDMAPS_0_HIGHADDR 0xF8004FFF

/* Canonical definitions for peripheral PS7_DMA_S */
#define XPAR_XDMAPS_1_DEVICE_ID XPAR_PS7_DMA_S_DEVICE_ID
#define XPAR_XDMAPS_1_BASEADDR 0xF8003000
#define XPAR_XDMAPS_1_HIGHADDR 0xF8003FFF


/******************************************************************/

/* Definitions for driver EMACPS */
#define XPAR_XEMACPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_ETHERNET_0 */
#define XPAR_PS7_ETHERNET_0_DEVICE_ID 0
#define XPAR_PS7_ETHERNET_0_BASEADDR 0xE000B000
#define XPAR_PS7_ETHERNET_0_HIGHADDR 0xE000BFFF
#define XPAR_PS7_ETHERNET_0_ENET_CLK_FREQ_HZ 125000000
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV1 1
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV1 5
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV1 50
#define XPAR_PS7_ETHERNET_0_ENET_TSU_CLK_FREQ_HZ 0


/******************************************************************/

#define XPAR_PS7_ETHERNET_0_IS_CACHE_COHERENT 0
#define XPAR_XEMACPS_0_IS_CACHE_COHERENT 0
/* Canonical definitions for peripheral PS7_ETHERNET_0 */
#define XPAR_XEMACPS_0_DEVICE_ID XPAR_PS7_ETHERNET_0_DEVICE_ID
#define XPAR_XEMACPS_0_BASEADDR 0xE000B000
#define XPAR_XEMACPS_0_HIGHADDR 0xE000BFFF
#define XPAR_XEMACPS_0_ENET_CLK_FREQ_HZ 125000000
#define XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV1 1
#define XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV1 5
#define XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV1 50
#define XPAR_XEMACPS_0_ENET_TSU_CLK_FREQ_HZ 0


/******************************************************************/


/* Definitions for peripheral PS7_AFI_0 */
#define XPAR_PS7_AFI_0_S_AXI_BASEADDR 0xF8008000
#define XPAR_PS7_AFI_0_S_AXI_HIGHADDR 0xF8008FFF


/* Definitions for peripheral PS7_AFI_1 */
#define XPAR_PS7_AFI_1_S_AXI_BASEADDR 0xF8009000
#define XPAR_PS7_AFI_1_S_AXI_HIGHADDR 0xF8009FFF


/* Definitions for peripheral PS7_AFI_2 */
#define XPAR_PS7_AFI_2_S_AXI_BASEADDR 0xF800A000
#define XPAR_PS7_AFI_2_S_AXI_HIGHADDR 0xF800AFFF


/* Definitions for peripheral PS7_AFI_3 */
#define XPAR_PS7_AFI_3_S_AXI_BASEADDR 0xF800B000
#define XPAR_PS7_AFI_3_S_AXI_HIGHADDR 0xF800BFFF


/* Definitions for peripheral PS7_DDRC_0 */
#define XPAR_PS7_DDRC_0_S_AXI_BASEADDR 0xF8006000
#define XPAR_PS7_DDRC_0_S_AXI_HIGHADDR 0xF8006FFF


/* Definitions for peripheral PS7_GLOBALTIMER_0 */
#define XPAR_PS7_GLOBALTIMER_0_S_AXI_BASEADDR 0xF8F00200
#define XPAR_PS7_GLOBALTIMER_0_S_AXI_HIGHADDR 0xF8F002FF


/* Definitions for peripheral PS7_GPV_0 */
#define XPAR_PS7_GPV_0_S_AXI_BASEADDR 0xF8900000
#define XPAR_PS7_GPV_0_S_AXI_HIGHADDR 0xF89FFFFF


/* Definitions for peripheral PS7_INTC_DIST_0 */
#define XPAR_PS7_INTC_DIST_0_S_AXI_BASEADDR 0xF8F01000
#define XPAR_PS7_INTC_DIST_0_S_AXI_HIGHADDR 0xF8F01FFF


/* Definitions for peripheral PS7_IOP_BUS_CONFIG_0 */
#define XPAR_PS7_IOP_BUS_CONFIG_0_S_AXI_BASEADDR 0xE0200000
#define XPAR_PS7_IOP_BUS_CONFIG_0_S_AXI_HIGHADDR 0xE0200FFF


/* Definitions for peripheral PS7_L2CACHEC_0 */
#define XPAR_PS7_L2CACHEC_0_S_AXI_BASEADDR 0xF8F02000
#define XPAR_PS7_L2CACHEC_0_S_AXI_HIGHADDR 0xF8F02FFF


/* Definitions for peripheral PS7_OCMC_0 */
#define XPAR_PS7_OCMC_0_S_AXI_BASEADDR 0xF800C000
#define XPAR_PS7_OCMC_0_S_AXI_HIGHADDR 0xF800CFFF


/* Definitions for peripheral PS7_PL310_0 */
#define XPAR_PS7_PL310_0_S_AXI_BASEADDR 0xF8F02000
#define XPAR_PS7_PL310_0_S_AXI_HIGHADDR 0xF8F02FFF


/* Definitions for peripheral PS7_PMU_0 */
#define XPAR_PS7_PMU_0_S_AXI_BASEADDR 0xF8891000
#define XPAR_PS7_PMU_0_S_AXI_HIGHADDR 0xF8891FFF
#define XPAR_PS7_PMU_0_PMU1_S_AXI_BASEADDR 0xF8893000
#define XPAR_PS7_PMU_0_PMU1_S_AXI_HIGHADDR 0xF8893FFF


/* Definitions for peripheral PS7_QSPI_LINEAR_0 */
#define XPAR_PS7_QSPI_LINEAR_0_S_AXI_BASEADDR 0xFC000000
#define XPAR_PS7_QSPI_LINEAR_0_S_AXI_HIGHADDR 0xFCFFFFFF


/* Definitions for peripheral PS7_RAM_0 */
#define XPAR_PS7_RAM_0_S_AXI_BASEADDR 0x00000000
#define XPAR_PS7_RAM_0_S_AXI_HIGHADDR 0x0003FFFF


/* Definitions for peripheral PS7_RAM_1 */
#define XPAR_PS7_RAM_1_S_AXI_BASEADDR 0xFFFC0000
#define XPAR_PS7_RAM_1_S_AXI_HIGHADDR 0xFFFFFFFF


/* Definitions for peripheral PS7_SCUC_0 */
#define XPAR_PS7_SCUC_0_S_AXI_BASEADDR 0xF8F00000
#define XPAR_PS7_SCUC_0_S_AXI_HIGHADDR 0xF8F000FC


/* Definitions for peripheral PS7_SLCR_0 */
#define XPAR_PS7_SLCR_0_S_AXI_BASEADDR 0xF8000000
#define XPAR_PS7_SLCR_0_S_AXI_HIGHADDR 0xF8000FFF


/******************************************************************/

/* Definitions for driver GPIOPS */
#define XPAR_XGPIOPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_GPIO_0 */
#define XPAR_PS7_GPIO_0_DEVICE_ID 0
#define XPAR_PS7_GPIO_0_BASEADDR 0xE000A000
#define XPAR_PS7_GPIO_0_HIGHADDR 0xE000AFFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_GPIO_0 */
#define XPAR_XGPIOPS_0_DEVICE_ID XPAR_PS7_GPIO_0_DEVICE_ID
#define XPAR_XGPIOPS_0_BASEADDR 0xE000A000
#define XPAR_XGPIOPS_0_HIGHADDR 0xE000AFFF


/******************************************************************/

/* Definitions for driver QSPIPS */
#define XPAR_XQSPIPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_QSPI_0 */
#define XPAR_PS7_QSPI_0_DEVICE_ID 0
#define XPAR_PS7_QSPI_0_BASEADDR 0xE000D000
#define XPAR_PS7_QSPI_0_HIGHADDR 0xE000DFFF
#define XPAR_PS7_QSPI_0_QSPI_CLK_FREQ_HZ 200000000
#define XPAR_PS7_QSPI_0_QSPI_MODE 0
#define XPAR_PS7_QSPI_0_QSPI_BUS_WIDTH 2


/******************************************************************/

/* Canonical definitions for peripheral PS7_QSPI_0 */
#define XPAR_XQSPIPS_0_DEVICE_ID XPAR_PS7_QSPI_0_DEVICE_ID
#define XPAR_XQSPIPS_0_BASEADDR 0xE000D000
#define XPAR_XQSPIPS_0_HIGHADDR 0xE000DFFF
#define XPAR_XQSPIPS_0_QSPI_CLK_FREQ_HZ 200000000
#define XPAR_XQSPIPS_0_QSPI_MODE 0
#define XPAR_XQSPIPS_0_QSPI_BUS_WIDTH 2


/******************************************************************/

/* Definitions for Fabric interrupts connected to ps7_scugic_0 */
#define XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR 61U
#define XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR 62U
#define XPAR_FABRIC_AXI_ETHERNET_0_MAC_IRQ_INTR 63U
#define XPAR_FABRIC_AXI_ETHERNET_0_INTERRUPT_INTR 64U

/******************************************************************/

/* Canonical definitions for Fabric interrupts connected to ps7_scugic_0 */
#define XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR
#define XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define XPAR_FABRIC_AXIETHERNET_0_MAC_IRQ_VEC_ID XPAR_FABRIC_AXI_ETHERNET_0_MAC_IRQ_INTR
#define XPAR_FABRIC_AXIETHERNET_0_VEC_ID XPAR_FABRIC_AXI_ETHERNET_0_INTERRUPT_INTR

/******************************************************************/

/* Definitions for driver SCUGIC */
#define XPAR_XSCUGIC_NUM_INSTANCES 1U

/* Definitions for peripheral PS7_SCUGIC_0 */
#define XPAR_PS7_SCUGIC_0_DEVICE_ID 0U
#define XPAR_PS7_SCUGIC_0_BASEADDR 0xF8F00100U
#define XPAR_PS7_SCUGIC_0_HIGHADDR 0xF8F001FFU
#define XPAR_PS7_SCUGIC_0_DIST_BASEADDR 0xF8F01000U


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUGIC_0 */
#define XPAR_SCUGIC_0_DEVICE_ID 0U
#define XPAR_SCUGIC_0_CPU_BASEADDR 0xF8F00100U
#define XPAR_SCUGIC_0_CPU_HIGHADDR 0xF8F001FFU
#define XPAR_SCUGIC_0_DIST_BASEADDR 0xF8F01000U


/******************************************************************/

/* Definitions for driver SCUTIMER */
#define XPAR_XSCUTIMER_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SCUTIMER_0 */
#define XPAR_PS7_SCUTIMER_0_DEVICE_ID 0
#define XPAR_PS7_SCUTIMER_0_BASEADDR 0xF8F00600
#define XPAR_PS7_SCUTIMER_0_HIGHADDR 0xF8F0061F


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUTIMER_0 */
#define XPAR_XSCUTIMER_0_DEVICE_ID XPAR_PS7_SCUTIMER_0_DEVICE_ID
#define XPAR_XSCUTIMER_0_BASEADDR 0xF8F00600
#define XPAR_XSCUTIMER_0_HIGHADDR 0xF8F0061F


/******************************************************************/

/* Definitions for driver SCUWDT */
#define XPAR_XSCUWDT_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SCUWDT_0 */
#define XPAR_PS7_SCUWDT_0_DEVICE_ID 0
#define XPAR_PS7_SCUWDT_0_BASEADDR 0xF8F00620
#define XPAR_PS7_SCUWDT_0_HIGHADDR 0xF8F006FF


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUWDT_0 */
#define XPAR_SCUWDT_0_DEVICE_ID XPAR_PS7_SCUWDT_0_DEVICE_ID
#define XPAR_SCUWDT_0_BASEADDR 0xF8F00620
#define XPAR_SCUWDT_0_HIGHADDR 0xF8F006FF


/******************************************************************/

/* Definitions for driver SDPS */
#define XPAR_XSDPS_NUM_INSTANCES 2

/* Definitions for peripheral PS7_SD_0 */
#define XPAR_PS7_SD_0_DEVICE_ID 0
#define XPAR_PS7_SD_0_BASEADDR 0xE0100000
#define XPAR_PS7_SD_0_HIGHADDR 0xE0100FFF
#define XPAR_PS7_SD_0_SDIO_CLK_FREQ_HZ 100000000
#define XPAR_PS7_SD_0_HAS_CD 1
#define XPAR_PS7_SD_0_HAS_WP 0
#define XPAR_PS7_SD_0_BUS_WIDTH 0
#define XPAR_PS7_SD_0_MIO_BANK 0
#define XPAR_PS7_SD_0_HAS_EMIO 0


/* Definitions for peripheral PS7_SD_1 */
#define XPAR_PS7_SD_1_DEVICE_ID 1
#define XPAR_PS7_SD_1_BASEADDR 0xE0101000
#define XPAR_PS7_SD_1_HIGHADDR 0xE0101FFF
#define XPAR_PS7_SD_1_SDIO_CLK_FREQ_HZ 100000000
#define XPAR_PS7_SD_1_HAS_CD 1
#define XPAR_PS7_SD_1_HAS_WP 1
#define XPAR_PS7_SD_1_BUS_WIDTH 0
#define XPAR_PS7_SD_1_MIO_BANK 0
#define XPAR_PS7_SD_1_HAS_EMIO 0


/******************************************************************/

#define XPAR_PS7_SD_0_IS_CACHE_COHERENT 0
#define XPAR_PS7_SD_1_IS_CACHE_COHERENT 0
/* Canonical definitions for peripheral PS7_SD_0 */
#define XPAR_XSDPS_0_DEVICE_ID XPAR_PS7_SD_0_DEVICE_ID
#define XPAR_XSDPS_0_BASEADDR 0xE0100000
#define XPAR_XSDPS_0_HIGHADDR 0xE0100FFF
#define XPAR_XSDPS_0_SDIO_CLK_FREQ_HZ 100000000
#define XPAR_XSDPS_0_HAS_CD 1
#define XPAR_XSDPS_0_HAS_WP 0
#define XPAR_XSDPS_0_BUS_WIDTH 0
#define XPAR_XSDPS_0_MIO_BANK 0
#define XPAR_XSDPS_0_HAS_EMIO 0
#define XPAR_XSDPS_0_IS_CACHE_COHERENT 0

/* Canonical definitions for peripheral PS7_SD_1 */
#define XPAR_XSDPS_1_DEVICE_ID XPAR_PS7_SD_1_DEVICE_ID
#define XPAR_XSDPS_1_BASEADDR 0xE0101000
#define XPAR_XSDPS_1_HIGHADDR 0xE0101FFF
#define XPAR_XSDPS_1_SDIO_CLK_FREQ_HZ 100000000
#define XPAR_XSDPS_1_HAS_CD 1
#define XPAR_XSDPS_1_HAS_WP 1
#define XPAR_XSDPS_1_BUS_WIDTH 0
#define XPAR_XSDPS_1_MIO_BANK 0
#define XPAR_XSDPS_1_HAS_EMIO 0
#define XPAR_XSDPS_1_IS_CACHE_COHERENT 0


/******************************************************************/

/* Definitions for driver UARTPS */
#define XPAR_XUARTPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_UART_1 */
#define XPAR_PS7_UART_1_DEVICE_ID 0
#define XPAR_PS7_UART_1_BASEADDR 0xE0001000
#define XPAR_PS7_UART_1_HIGHADDR 0xE0001FFF
#define XPAR_PS7_UART_1_UART_CLK_FREQ_HZ 100000000
#define XPAR_PS7_UART_1_HAS_MODEM 0


/******************************************************************/

/* Canonical definitions for peripheral PS7_UART_1 */
#define XPAR_XUARTPS_0_DEVICE_ID XPAR_PS7_UART_1_DEVICE_ID
#define XPAR_XUARTPS_0_BASEADDR 0xE0001000
#define XPAR_XUARTPS_0_HIGHADDR 0xE0001FFF
#define XPAR_XUARTPS_0_UART_CLK_FREQ_HZ 100000000
#define XPAR_XUARTPS_0_HAS_MODEM 0


/******************************************************************/

/* Definitions for driver USBPS */
#define XPAR_XUSBPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_USB_0 */
#define XPAR_PS7_USB_0_DEVICE_ID 0
#define XPAR_PS7_USB_0_BASEADDR 0xE0002000
#define XPAR_PS7_USB_0_HIGHADDR 0xE0002FFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_USB_0 */
#define XPAR_XUSBPS_0_DEVICE_ID XPAR_PS7_USB_0_DEVICE_ID
#define XPAR_XUSBPS_0_BASEADDR 0xE0002000
#define XPAR_XUSBPS_0_HIGHADDR 0xE0002FFF


/******************************************************************/

/* Definitions for driver XADCPS */
#define XPAR_XADCPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_XADC_0 */
#define XPAR_PS7_XADC_0_DEVICE_ID 0
#define XPAR_PS7_XADC_0_BASEADDR 0xF8007100
#define XPAR_PS7_XADC_0_HIGHADDR 0xF8007120


/******************************************************************/

/* Canonical definitions for peripheral PS7_XADC_0 */
#define XPAR_XADCPS_0_DEVICE_ID XPAR_PS7_XADC_0_DEVICE_ID
#define XPAR_XADCPS_0_BASEADDR 0xF8007100
#define XPAR_XADCPS_0_HIGHADDR 0xF8007120


/******************************************************************/

#endif  /* end of protection macro */
