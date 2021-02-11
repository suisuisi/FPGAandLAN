

# Single bit CDC synchronisers to set/clear interrupt signals
# -----------------------------------------------------------

# The timing of these single bits is judged to be none critical so false_path is used instead of
# max_delay.  Interrupts will fire when the false_path signals cross the clock domain; using a
# max_delay constraint may make interrupts fire a few ns earlier, but since these are used by
# SW, a few ns makes little difference.

set_false_path -from [get_cells {*TXCLCLK2AXICLK_ISR_1/ClkASignalToggle_reg}]   -to [get_cells {*TXCLCLK2AXICLK_ISR_1/data_sync/data_sync0_i}]
set_false_path -from [get_cells {*TXCLCLK2AXICLK_ISR_5/ClkASignalToggle_reg}]   -to [get_cells {*TXCLCLK2AXICLK_ISR_5/data_sync/data_sync0_i}]
#set_false_path -from [get_ports {EMAC_RX_DCM_LOCKED_INT}] # May be needed in 1000BASE-X/SGMII mode or always optimised away in the system?
#set_false_path -from [get_ports {EMAC_RESET_DONE_INT}]    # Always being optimised away in the system?
set_false_path -from [get_cells {*RXCLCLK2AXICLK_INTRPT0/ClkASignalToggle_reg}] -to [get_cells {*RXCLCLK2AXICLK_INTRPT0/data_sync/data_sync0_i}]
set_false_path -from [get_cells {*RXCLCLK2AXICLK_INTRPT1/ClkASignalToggle_reg}] -to [get_cells {*RXCLCLK2AXICLK_INTRPT1/data_sync/data_sync0_i}]
set_false_path -from [get_cells {*RXCLCLK2AXICLK_INTRPT2/ClkASignalToggle_reg}] -to [get_cells {*RXCLCLK2AXICLK_INTRPT2/data_sync/data_sync0_i}]

# Tx Pause value passed from AXI-Lite domain into the MAC Tx - pause_req / pause_value
# ------------------------------------------------------------------------------------

# This is very standard bus crossings methodology.  When the bus is updated (clk_a2b_bus_reg[*]) in
# its source clock domain, a single bit is toggled (ClkASignalToggle_reg); this single bit is
# passed across the clock domain and its change of state is detected in the new clock domain.  When
# this occurs, the bus, held stable on the source clock domain, can be sampled in the new clock
# domain safely.  The rules for this are:
#   * We are not concerned with how long it takes for the toggle bit to cross the clock domain so
#     it is false_path -ed
#   * However, we NEED the bus to be stable when sampled, so we need to use a max_delay on all bits
#     so we know that all bits of the bus have arrived at the destination sampling flip-flops when
#     sampled.  The minimum route delay for the toggle signal is here assumed to be 0 ns for the
#     CDC route, then we have 5 synchronisation flip-flops in the new clock domain before
#     combinatorial toggle detection is performed (requiring one further clock period).  The first
#     of these 5 sync flip-flops could be transparant (change to new logic state immediately), so we
#     have 4 clock periods remaining for the synchroniser, plus one for the toggle detection = 5
#     clock periods. So maximum route delay (worst case) can be 5 x 8 ns = 40 ns (minus the setup
#     requirement of the sampling flip-flop) for the circuit to guarantee that it will work. Here I
#     used 32 ns to provide more than enough margin (8ns) for the flip-flop setup requirement.
#
#     So all bits of clk_a2b_bus_reg[*] will be routed in < 32 ns and the circuit will be reliable.
#     Were this unconstrainted, and if the router sent just one of these bits around the FPGA and
#     its unconstrainted route was greated than approximately 40 ns, this circuit could sample an
#     incorrect value.

set_false_path -from [get_cells {*TX_PAUSE_FRAME_CROSS_I/ClkASignalToggle_reg}] -to [get_cells {*TX_PAUSE_FRAME_CROSS_I/data_sync/data_sync0_i}]
set_max_delay  -from [get_cells {*TX_PAUSE_FRAME_CROSS_I/clk_a2b_bus_reg[*]}]   -to [get_cells  -hier -regexp {.*TX_PAUSE_FRAME_CROSS_I.*ClkBAxiEthBaEClkCrsBusOut_reg.*} -filter {IS_SEQUENTIAL=="1"}] 8 -datapath_only

# Configuration logic CDC
# -----------------------

# Standard bus crossings methodology again (see above comments for Tx Pause).  Again the control
# (toggle) signal is false-path ed, but the static bus to be sampled is max_delay constrained.  This
# is also the same calculation as above (5 clock periods max delay into the new clock domain).  Note
# that here, There are 3 different toggle control signals: all from the AXI-Lite clock domain into:
#    * TEMAC Rx clock domain (max 125MHz)
#    * TEMAC Tx clock domain (max 125MHz)
#    * AXI-S  (assumed to be max 125 MHz) - this seems to be stripped through so is commented out

set_false_path -from [get_cells {*gen_sample_rx_mac_config/ClkASignalToggle_reg}] -to [get_cells {*gen_sample_rx_mac_config/data_sync/data_sync0_i}]
set_false_path -from [get_cells {*gen_sample_tx_mac_config/ClkASignalToggle_reg}] -to [get_cells {*gen_sample_tx_mac_config/data_sync/data_sync0_i}]
#set_false_path -from [get_cells {*sample_axi_str_config/ClkASignalToggle_reg}]   -to [get_cells {*sample_axi_str_config/data_sync/data_sync0_i}]

# Adding a generic false path and a generic max delay  constraint for remaining paths
set_max_delay -from [get_cells -of [all_fanin -flat [get_pins -hier -regexp {.*/ClkBAxiEthBClkCrsBusOut_reg.*D}]] -filter {IS_SEQUENTIAL=="1" && NAME !~ "*ClkBAxiEthBClkCrsBusOut*"}] -to [get_pins -hier -regexp {.*/ClkBAxiEthBClkCrsBusOut_reg.*D}] 8 -datapath_only

##### WARNING: [Designutils 20-1567] Use of 'set_false_path' with '-hold' is not supported by synthesis. The constraint will not be passed to synthesis.
#### set_false_path -hold -to [get_pins -hier -regexp {.*/ClkBAxiEthBClkCrsBusOut_reg.*D}]


set_false_path -to [get_pins -hier -regexp {.*/data_sync0_i/D}]

# Ignore paths to the asynchronous reset port of the reset synchronization module
# -------------------------------------------------------------------------------
#set_false_path -to [get_pins -hier -filter {NAME =~ */async_rst*/PRE}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *async_rst*}] -filter {REF_PIN_NAME =~ PRE}]

# Rx data path CDC crossing
# -------------------------

# The following constraints are for gray coded busses.  Gray codes work by having only a single bit
# that changes per clock cycle: therefore all but 1 bit should be stable for sample at any time on
# the new clock domain. The single bit causes some uncertainty but only by 1 (equivalent binary
# value) - so we may sample either the very latest value, or at worst case, the previous value.

# However, we have to ensure that the route delay for all bits is < 1 clock period; if there were
# no max_delay constraints on this bus, it is possible that 1 single bit of this bus could be
# routed round the FPGA and have a routing delay > 1 clock period.  If this were the case, then
# this bit, arriving late, could coincide with the next bit changing; on the sample side, 2 bits
# could have changed at once giving 2 bits of uncertainty and the equivalent binary value is
# no-longer reliable.  Adding the max_delay constraint here to be < 1 clock period will ensure that
# this gray code crossing is reliable.

set_max_delay -from [get_cells {*RCV_INTFCE_I/RX_AXISTREAM_IF_I/rxs_mem_last_read_out_ptr_gray_d1_reg[*]}] -to [get_cells {*RCV_INTFCE_I/NO_INCLUDE_RX_VLAN.RX_EMAC_IF_I/SYNC_RXS_LAST_READ_GRAY_PROCESS[*].SYNC_RXS_LAST_READ_GRAY/data_sync0_i}]  8 -datapath_only
set_max_delay -from [get_cells {*RCV_INTFCE_I/RX_AXISTREAM_IF_I/rxd_mem_last_read_out_ptr_gray_d1_reg[*]}] -to [get_cells {*RCV_INTFCE_I/NO_INCLUDE_RX_VLAN.RX_EMAC_IF_I/SYNC_RXD_LAST_READ_GRAY_PROCESS[*].SYNC_RXD_LAST_READ_GRAY/data_sync0_i}]  8 -datapath_only

set_false_path -through [get_nets -hier -regexp {.*speed_is_10_100.*} ]



