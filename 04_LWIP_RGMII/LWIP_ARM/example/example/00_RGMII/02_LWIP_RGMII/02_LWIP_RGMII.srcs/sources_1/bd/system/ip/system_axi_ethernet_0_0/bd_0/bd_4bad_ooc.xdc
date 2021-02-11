################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name s_axi_lite_clk -period 10 [get_ports s_axi_lite_clk]
create_clock -name axis_clk -period 10 [get_ports axis_clk]
create_clock -name gtx_clk -period 8 [get_ports gtx_clk]
create_clock -name ref_clk -period 5 [get_ports ref_clk]
create_clock -name rgmii_rxc -period 10 [get_ports rgmii_rxc]

################################################################################