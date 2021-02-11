
#-----------------------------------------------------------
# Clock Period Constraints                                 -
#-----------------------------------------------------------
# 200 MHz clock used as reference clock for IDELAY_CTRL and also to clock the Management modules
create_clock -add -name clkin -period 5.000 [get_ports clkin]


# RGMII recovered clock from PHY
create_clock -add -name rgmii_rxc -period 8.000 [get_ports rgmii_rxc]
