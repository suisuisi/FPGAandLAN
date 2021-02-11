
################################################################
# This is a generated script based on design: ps_emio_eth_1g
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ps_emio_eth_1g_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

# set list_projs [get_projects -quiet]
# if { $list_projs eq "" } {
   # create_project project_1 myproj -part xczu9eg-ffvb1156-2L-e-es1
# }


# CHANGE DESIGN NAME HERE
set design_name ps_emio_eth_sgmii

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: constants
proc create_hier_cell_constants { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_constants() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 15 -to 0 an_adv_config_vec
  create_bd_pin -dir O -from 0 -to 0 config_valid
  create_bd_pin -dir O -from 4 -to 0 config_vector
  create_bd_pin -dir O -from 4 -to 0 phy_addr
  create_bd_pin -dir O -from 0 -to 0 sfp_tx_dis
  create_bd_pin -dir O -from 0 -to 0 signal_detect

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {9} \
CONFIG.CONST_WIDTH {5} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {5} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {100001} \
CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_5

  # Create port connections
  connect_bd_net -net Net [get_bd_pins config_valid] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins phy_addr] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins config_vector] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins an_adv_config_vec] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins signal_detect] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_5_dout [get_bd_pins sfp_tx_dis] [get_bd_pins xlconstant_5/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set gtrefclk_in [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 gtrefclk_in ]
  set sfp [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sfp_rtl:1.0 sfp ]

  # Create ports
  set gmii_rx_clk_led [ create_bd_port -dir O -from 0 -to 0 gmii_rx_clk_led ]
  set link_status_led [ create_bd_port -dir O -from 0 -to 0 link_status_led ]
  set link_sync_led [ create_bd_port -dir O -from 0 -to 0 link_sync_led ]
  set mdc_clk_led [ create_bd_port -dir O -from 0 -to 0 mdc_clk_led ]
  set pcs_clk_led [ create_bd_port -dir O -from 0 -to 0 pcs_clk_led ]
  set pl_reset_led [ create_bd_port -dir O -from 0 -to 0 pl_reset_led ]
  set sfp_tx_dis [ create_bd_port -dir O -from 0 -to 0 sfp_tx_dis ]
  set xcvr_rst_done_led [ create_bd_port -dir O -from 0 -to 0 xcvr_rst_done_led ]

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
CONFIG.Output_Width {32} \
 ] $c_counter_binary_0

  # Create instance: c_counter_binary_1, and set properties
  set c_counter_binary_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_1 ]
  set_property -dict [ list \
CONFIG.Output_Width {12} \
 ] $c_counter_binary_1

  # Create instance: c_counter_binary_2, and set properties
  set c_counter_binary_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_2 ]
  set_property -dict [ list \
CONFIG.Output_Width {32} \
 ] $c_counter_binary_2

  # Create instance: constants
  create_hier_cell_constants [current_bd_instance .] constants

  # Create instance: gig_ethernet_pcs_pma_0, and set properties
  set gig_ethernet_pcs_pma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gig_ethernet_pcs_pma:16.0 gig_ethernet_pcs_pma_0 ]
  set_property -dict [ list \
CONFIG.DIFFCLK_BOARD_INTERFACE {Custom} \
CONFIG.EMAC_IF_TEMAC {GEM} \
CONFIG.Standard {SGMII} \
CONFIG.SupportLevel {Include_Shared_Logic_in_Core} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $gig_ethernet_pcs_pma_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {25} \
CONFIG.DIN_TO {25} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {16} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {1} \
CONFIG.DIN_TO {1} \
CONFIG.DIN_WIDTH {16} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {11} \
CONFIG.DIN_TO {11} \
CONFIG.DIN_WIDTH {12} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_3

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {25} \
CONFIG.DIN_TO {25} \
CONFIG.DIN_WIDTH {32} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_4

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.0 zynq_ultra_ps_e_0 ]
  set_property -dict [ list \
CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
CONFIG.PSU_DDR_RAM_HIGHADDR {0xFFFFFFFF} \
CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x80000000} \
CONFIG.PSU_MIO_0_DIRECTION {in} \
CONFIG.PSU_MIO_0_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_0_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_0_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_0_SLEW {slow} \
CONFIG.PSU_MIO_10_DIRECTION {<Select>} \
CONFIG.PSU_MIO_10_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_10_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_10_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_10_SLEW {slow} \
CONFIG.PSU_MIO_11_DIRECTION {<Select>} \
CONFIG.PSU_MIO_11_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_11_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_11_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_11_SLEW {slow} \
CONFIG.PSU_MIO_12_DIRECTION {<Select>} \
CONFIG.PSU_MIO_12_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_12_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_12_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_12_SLEW {slow} \
CONFIG.PSU_MIO_13_DIRECTION {<Select>} \
CONFIG.PSU_MIO_13_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_13_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_13_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_13_SLEW {slow} \
CONFIG.PSU_MIO_14_DIRECTION {inout} \
CONFIG.PSU_MIO_14_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_14_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_14_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_14_SLEW {slow} \
CONFIG.PSU_MIO_15_DIRECTION {inout} \
CONFIG.PSU_MIO_15_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_15_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_15_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_15_SLEW {slow} \
CONFIG.PSU_MIO_16_DIRECTION {inout} \
CONFIG.PSU_MIO_16_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_16_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_16_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_16_SLEW {slow} \
CONFIG.PSU_MIO_17_DIRECTION {inout} \
CONFIG.PSU_MIO_17_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_17_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_17_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_17_SLEW {slow} \
CONFIG.PSU_MIO_18_DIRECTION {in} \
CONFIG.PSU_MIO_18_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_18_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_18_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_18_SLEW {slow} \
CONFIG.PSU_MIO_19_DIRECTION {out} \
CONFIG.PSU_MIO_19_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_19_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_19_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_19_SLEW {slow} \
CONFIG.PSU_MIO_1_DIRECTION {out} \
CONFIG.PSU_MIO_1_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_1_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_1_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_1_SLEW {slow} \
CONFIG.PSU_MIO_20_DIRECTION {out} \
CONFIG.PSU_MIO_20_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_20_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_20_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_20_SLEW {slow} \
CONFIG.PSU_MIO_21_DIRECTION {in} \
CONFIG.PSU_MIO_21_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_21_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_21_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_21_SLEW {slow} \
CONFIG.PSU_MIO_22_DIRECTION {<Select>} \
CONFIG.PSU_MIO_22_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_22_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_22_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_22_SLEW {slow} \
CONFIG.PSU_MIO_23_DIRECTION {<Select>} \
CONFIG.PSU_MIO_23_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_23_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_23_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_23_SLEW {slow} \
CONFIG.PSU_MIO_24_DIRECTION {<Select>} \
CONFIG.PSU_MIO_24_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_24_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_24_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_24_SLEW {slow} \
CONFIG.PSU_MIO_25_DIRECTION {<Select>} \
CONFIG.PSU_MIO_25_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_25_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_25_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_25_SLEW {slow} \
CONFIG.PSU_MIO_26_DIRECTION {<Select>} \
CONFIG.PSU_MIO_26_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_26_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_26_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_26_SLEW {slow} \
CONFIG.PSU_MIO_27_DIRECTION {<Select>} \
CONFIG.PSU_MIO_27_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_27_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_27_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_27_SLEW {slow} \
CONFIG.PSU_MIO_28_DIRECTION {<Select>} \
CONFIG.PSU_MIO_28_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_28_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_28_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_28_SLEW {slow} \
CONFIG.PSU_MIO_29_DIRECTION {<Select>} \
CONFIG.PSU_MIO_29_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_29_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_29_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_29_SLEW {slow} \
CONFIG.PSU_MIO_2_DIRECTION {in} \
CONFIG.PSU_MIO_2_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_2_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_2_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_2_SLEW {slow} \
CONFIG.PSU_MIO_30_DIRECTION {<Select>} \
CONFIG.PSU_MIO_30_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_30_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_30_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_30_SLEW {slow} \
CONFIG.PSU_MIO_31_DIRECTION {<Select>} \
CONFIG.PSU_MIO_31_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_31_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_31_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_31_SLEW {slow} \
CONFIG.PSU_MIO_32_DIRECTION {<Select>} \
CONFIG.PSU_MIO_32_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_32_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_32_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_32_SLEW {slow} \
CONFIG.PSU_MIO_33_DIRECTION {<Select>} \
CONFIG.PSU_MIO_33_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_33_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_33_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_33_SLEW {slow} \
CONFIG.PSU_MIO_34_DIRECTION {<Select>} \
CONFIG.PSU_MIO_34_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_34_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_34_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_34_SLEW {slow} \
CONFIG.PSU_MIO_35_DIRECTION {<Select>} \
CONFIG.PSU_MIO_35_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_35_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_35_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_35_SLEW {slow} \
CONFIG.PSU_MIO_36_DIRECTION {<Select>} \
CONFIG.PSU_MIO_36_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_36_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_36_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_36_SLEW {slow} \
CONFIG.PSU_MIO_37_DIRECTION {<Select>} \
CONFIG.PSU_MIO_37_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_37_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_37_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_37_SLEW {slow} \
CONFIG.PSU_MIO_38_DIRECTION {<Select>} \
CONFIG.PSU_MIO_38_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_38_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_38_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_38_SLEW {slow} \
CONFIG.PSU_MIO_39_DIRECTION {inout} \
CONFIG.PSU_MIO_39_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_39_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_39_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_39_SLEW {slow} \
CONFIG.PSU_MIO_3_DIRECTION {out} \
CONFIG.PSU_MIO_3_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_3_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_3_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_3_SLEW {slow} \
CONFIG.PSU_MIO_40_DIRECTION {inout} \
CONFIG.PSU_MIO_40_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_40_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_40_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_40_SLEW {slow} \
CONFIG.PSU_MIO_41_DIRECTION {inout} \
CONFIG.PSU_MIO_41_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_41_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_41_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_41_SLEW {slow} \
CONFIG.PSU_MIO_42_DIRECTION {inout} \
CONFIG.PSU_MIO_42_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_42_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_42_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_42_SLEW {slow} \
CONFIG.PSU_MIO_43_DIRECTION {out} \
CONFIG.PSU_MIO_43_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_43_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_43_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_43_SLEW {slow} \
CONFIG.PSU_MIO_44_DIRECTION {in} \
CONFIG.PSU_MIO_44_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_44_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_44_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_44_SLEW {slow} \
CONFIG.PSU_MIO_45_DIRECTION {in} \
CONFIG.PSU_MIO_45_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_45_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_45_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_45_SLEW {slow} \
CONFIG.PSU_MIO_46_DIRECTION {inout} \
CONFIG.PSU_MIO_46_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_46_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_46_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_46_SLEW {slow} \
CONFIG.PSU_MIO_47_DIRECTION {inout} \
CONFIG.PSU_MIO_47_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_47_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_47_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_47_SLEW {slow} \
CONFIG.PSU_MIO_48_DIRECTION {inout} \
CONFIG.PSU_MIO_48_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_48_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_48_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_48_SLEW {slow} \
CONFIG.PSU_MIO_49_DIRECTION {inout} \
CONFIG.PSU_MIO_49_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_49_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_49_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_49_SLEW {slow} \
CONFIG.PSU_MIO_4_DIRECTION {in} \
CONFIG.PSU_MIO_4_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_4_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_4_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_4_SLEW {slow} \
CONFIG.PSU_MIO_50_DIRECTION {inout} \
CONFIG.PSU_MIO_50_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_50_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_50_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_50_SLEW {slow} \
CONFIG.PSU_MIO_51_DIRECTION {out} \
CONFIG.PSU_MIO_51_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_51_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_51_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_51_SLEW {slow} \
CONFIG.PSU_MIO_52_DIRECTION {<Select>} \
CONFIG.PSU_MIO_52_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_52_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_52_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_52_SLEW {slow} \
CONFIG.PSU_MIO_53_DIRECTION {<Select>} \
CONFIG.PSU_MIO_53_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_53_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_53_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_53_SLEW {slow} \
CONFIG.PSU_MIO_54_DIRECTION {<Select>} \
CONFIG.PSU_MIO_54_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_54_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_54_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_54_SLEW {slow} \
CONFIG.PSU_MIO_55_DIRECTION {<Select>} \
CONFIG.PSU_MIO_55_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_55_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_55_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_55_SLEW {slow} \
CONFIG.PSU_MIO_56_DIRECTION {<Select>} \
CONFIG.PSU_MIO_56_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_56_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_56_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_56_SLEW {slow} \
CONFIG.PSU_MIO_57_DIRECTION {<Select>} \
CONFIG.PSU_MIO_57_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_57_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_57_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_57_SLEW {slow} \
CONFIG.PSU_MIO_58_DIRECTION {<Select>} \
CONFIG.PSU_MIO_58_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_58_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_58_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_58_SLEW {slow} \
CONFIG.PSU_MIO_59_DIRECTION {<Select>} \
CONFIG.PSU_MIO_59_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_59_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_59_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_59_SLEW {slow} \
CONFIG.PSU_MIO_5_DIRECTION {out} \
CONFIG.PSU_MIO_5_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_5_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_5_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_5_SLEW {slow} \
CONFIG.PSU_MIO_60_DIRECTION {<Select>} \
CONFIG.PSU_MIO_60_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_60_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_60_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_60_SLEW {slow} \
CONFIG.PSU_MIO_61_DIRECTION {<Select>} \
CONFIG.PSU_MIO_61_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_61_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_61_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_61_SLEW {slow} \
CONFIG.PSU_MIO_62_DIRECTION {<Select>} \
CONFIG.PSU_MIO_62_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_62_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_62_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_62_SLEW {slow} \
CONFIG.PSU_MIO_63_DIRECTION {<Select>} \
CONFIG.PSU_MIO_63_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_63_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_63_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_63_SLEW {slow} \
CONFIG.PSU_MIO_64_DIRECTION {out} \
CONFIG.PSU_MIO_64_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_64_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_64_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_64_SLEW {slow} \
CONFIG.PSU_MIO_65_DIRECTION {out} \
CONFIG.PSU_MIO_65_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_65_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_65_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_65_SLEW {slow} \
CONFIG.PSU_MIO_66_DIRECTION {out} \
CONFIG.PSU_MIO_66_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_66_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_66_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_66_SLEW {slow} \
CONFIG.PSU_MIO_67_DIRECTION {out} \
CONFIG.PSU_MIO_67_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_67_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_67_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_67_SLEW {slow} \
CONFIG.PSU_MIO_68_DIRECTION {out} \
CONFIG.PSU_MIO_68_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_68_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_68_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_68_SLEW {slow} \
CONFIG.PSU_MIO_69_DIRECTION {out} \
CONFIG.PSU_MIO_69_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_69_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_69_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_69_SLEW {slow} \
CONFIG.PSU_MIO_6_DIRECTION {in} \
CONFIG.PSU_MIO_6_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_6_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_6_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_6_SLEW {slow} \
CONFIG.PSU_MIO_70_DIRECTION {in} \
CONFIG.PSU_MIO_70_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_70_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_70_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_70_SLEW {slow} \
CONFIG.PSU_MIO_71_DIRECTION {in} \
CONFIG.PSU_MIO_71_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_71_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_71_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_71_SLEW {slow} \
CONFIG.PSU_MIO_72_DIRECTION {in} \
CONFIG.PSU_MIO_72_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_72_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_72_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_72_SLEW {slow} \
CONFIG.PSU_MIO_73_DIRECTION {in} \
CONFIG.PSU_MIO_73_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_73_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_73_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_73_SLEW {slow} \
CONFIG.PSU_MIO_74_DIRECTION {in} \
CONFIG.PSU_MIO_74_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_74_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_74_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_74_SLEW {slow} \
CONFIG.PSU_MIO_75_DIRECTION {in} \
CONFIG.PSU_MIO_75_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_75_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_75_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_75_SLEW {slow} \
CONFIG.PSU_MIO_76_DIRECTION {out} \
CONFIG.PSU_MIO_76_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_76_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_76_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_76_SLEW {slow} \
CONFIG.PSU_MIO_77_DIRECTION {inout} \
CONFIG.PSU_MIO_77_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_77_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_77_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_77_SLEW {slow} \
CONFIG.PSU_MIO_7_DIRECTION {out} \
CONFIG.PSU_MIO_7_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_7_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_7_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_7_SLEW {slow} \
CONFIG.PSU_MIO_8_DIRECTION {<Select>} \
CONFIG.PSU_MIO_8_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_8_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_8_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_8_SLEW {slow} \
CONFIG.PSU_MIO_9_DIRECTION {<Select>} \
CONFIG.PSU_MIO_9_DRIVE_STRENGTH {12} \
CONFIG.PSU_MIO_9_INPUT_TYPE {schmitt} \
CONFIG.PSU_MIO_9_PULLUPDOWN {pullup} \
CONFIG.PSU_MIO_9_SLEW {slow} \
CONFIG.PSU_MIO_TREE_PERIPHERALS {######TTC 0#TTC 0#######I2C 0#I2C 0#I2C 1#I2C 1#UART 0#UART 0#UART 1#UART 1##################SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#############Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#MDIO 3#MDIO 3} \
CONFIG.PSU_MIO_TREE_SIGNALS {######clk_in#wave_out#######scl_out#sda_out#scl_out#sda_out#rxd#txd#txd#rxd##################sdio1_data_out[4]#sdio1_data_out[5]#sdio1_data_out[6]#sdio1_data_out[7]#sdio1_bus_pow#sdio1_wp#sdio1_cd_n#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#############rgmii_tx_clk#rgmii_txd[0]#rgmii_txd[1]#rgmii_txd[2]#rgmii_txd[3]#rgmii_tx_ctl#rgmii_rx_clk#rgmii_rxd[0]#rgmii_rxd[1]#rgmii_rxd[2]#rgmii_rxd[3]#rgmii_rx_ctl#gem3_mdc#gem3_mdio_out} \
CONFIG.PSU_UIPARAM_GENERATE_SUMMARY {<Select>} \
CONFIG.PSU__ACPU0__POWER__ON {1} \
CONFIG.PSU__ACPU1__POWER__ON {1} \
CONFIG.PSU__ACPU2__POWER__ON {1} \
CONFIG.PSU__ACPU3__POWER__ON {1} \
CONFIG.PSU__ACT_DDR_FREQ_MHZ {1} \
CONFIG.PSU__AUX_REF_CLK__FREQMHZ {33.333} \
CONFIG.PSU__CAN0_LOOP_CAN1__ENABLE {0} \
CONFIG.PSU__CAN0__GRP_CLK__ENABLE {0} \
CONFIG.PSU__CAN0__GRP_CLK__IO {<Select>} \
CONFIG.PSU__CAN0__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__CAN0__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__CAN1__GRP_CLK__ENABLE {0} \
CONFIG.PSU__CAN1__GRP_CLK__IO {<Select>} \
CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__CAN1__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1099.989} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1300} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__ACT_FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__AFI0_REF__ENABLE {0} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__ACT_FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__AFI1_REF__ENABLE {0} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__ACT_FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__AFI2_REF__ENABLE {0} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__ACT_FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__AFI3_REF__ENABLE {0} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__ACT_FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__AFI4_REF__ENABLE {0} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__ACT_FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__FREQMHZ {667} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__AFI5_REF__ENABLE {0} \
CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1} \
CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {66} \
CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000} \
CONFIG.PSU__CRF_APB__APLL_CTRL__FRACFREQ {27.138} \
CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED {0} \
CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRF_APB__APM_CTRL__ACT_FREQMHZ {1} \
CONFIG.PSU__CRF_APB__APM_CTRL__DIVISOR0 {1} \
CONFIG.PSU__CRF_APB__APM_CTRL__FREQMHZ {1} \
CONFIG.PSU__CRF_APB__APM_CTRL__SRCSEL {<Select>} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {533.328} \
CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1067} \
CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {549.995} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {550} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {64} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACFREQ {27.138} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED {0} \
CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ {25} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {64} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__FREQMHZ {25} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {VPLL} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ {27} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {10} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__FREQMHZ {27} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {VPLL} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ {320} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__FREQMHZ {320} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {549.995} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {550} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {499.995} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {1} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {474.995} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {475} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {VPLL} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {57} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000000} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACFREQ {27.138} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED {0} \
CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {499.995} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__ACT_FREQMHZ {500} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__AFI6__ENABLE {0} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {51.724} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {29} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__FREQMHZ {52} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__ACT_FREQMHZ {100} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {499.995} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__ACT_FREQMHZ {180} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__FREQMHZ {180} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__SRCSEL {SysOsc} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__ACT_FREQMHZ {1000} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__FREQMHZ {1000} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1500} \
CONFIG.PSU__CRL_APB__DLL_REF_CTRL__FREQMHZ {1500} \
CONFIG.PSU__CRL_APB__DLL_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__ACT_FREQMHZ {124.999} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__ACT_FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__ACT_FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ {124.999} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ {250} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {4} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACFREQ {27.138} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED {0} \
CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {499.995} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__ACT_FREQMHZ {100} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__ACT_FREQMHZ {500} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {199.998} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {50.000} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {30} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {50} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {4} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__ACT_FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {4} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__ACT_FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ {124.999} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {60} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000000} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACFREQ {27.138} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED {0} \
CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {2} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__ACT_FREQMHZ {200} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {7} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {199.998} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__ACT_FREQMHZ {214} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {7} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__ACT_FREQMHZ {214} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {7} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {99.999} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ {249.997} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__ACT_FREQMHZ {250} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ {20} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {5} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {15} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB3__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_0__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_0__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_0__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_10__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_10__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_10__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_11__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_11__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_11__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_12__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_12__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_12__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_1__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_1__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_1__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_2__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_2__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_2__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_3__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_3__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_3__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_4__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_4__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_4__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_5__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_5__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_5__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_6__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_6__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_6__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_7__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_7__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_7__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_8__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_8__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_8__RESPONSE {<Select>} \
CONFIG.PSU__CSU__CSU_TAMPER_9__ENABLE {0} \
CONFIG.PSU__CSU__CSU_TAMPER_9__ERASE_BBRAM {0} \
CONFIG.PSU__CSU__CSU_TAMPER_9__RESPONSE {<Select>} \
CONFIG.PSU__CSU__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__CSU__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__DDRC__AL {0} \
CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
CONFIG.PSU__DDRC__BG_ADDR_COUNT {2} \
CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
CONFIG.PSU__DDRC__CL {15} \
CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
CONFIG.PSU__DDRC__COMPONENTS {Components} \
CONFIG.PSU__DDRC__CWL {14} \
CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {0} \
CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN {0} \
CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {<Select>} \
CONFIG.PSU__DDRC__DERATE_INT_D {<Select>} \
CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} \
CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
CONFIG.PSU__DDRC__DRAM_WIDTH {8 Bits} \
CONFIG.PSU__DDRC__ECC {Disabled} \
CONFIG.PSU__DDRC__ECC_SCRUB {0} \
CONFIG.PSU__DDRC__ENABLE {1} \
CONFIG.PSU__DDRC__EN_2ND_CLK {0} \
CONFIG.PSU__DDRC__FGRM {1X} \
CONFIG.PSU__DDRC__FREQ_MHZ {1} \
CONFIG.PSU__DDRC__HIGH_TEMP {<Select>} \
CONFIG.PSU__DDRC__LP_ASR {manual normal} \
CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
CONFIG.PSU__DDRC__PARTNO {<Select>} \
CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
CONFIG.PSU__DDRC__PLL_BYPASS {0} \
CONFIG.PSU__DDRC__PWR_DOWN_EN {0} \
CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
CONFIG.PSU__DDRC__SB_TARGET {15-15-15} \
CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2133P} \
CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
CONFIG.PSU__DDRC__T_FAW {21.0} \
CONFIG.PSU__DDRC__T_RAS_MIN {33} \
CONFIG.PSU__DDRC__T_RC {47.06} \
CONFIG.PSU__DDRC__T_RCD {15} \
CONFIG.PSU__DDRC__T_RP {15} \
CONFIG.PSU__DDRC__VENDOR_PART {OTHERS} \
CONFIG.PSU__DDRC__VIDEO_BUFFER_SIZE {0} \
CONFIG.PSU__DDRC__VREF {1} \
CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {1} \
CONFIG.PSU__DDR__INTERFACE__FREQMHZ {533.500} \
CONFIG.PSU__DEVICE_TYPE {EG} \
CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {0} \
CONFIG.PSU__DISPLAYPORT__LANE0__IO {<Select>} \
CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {0} \
CONFIG.PSU__DISPLAYPORT__LANE1__IO {<Select>} \
CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__DPAUX__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__DP__LANE_SEL {<Select>} \
CONFIG.PSU__DP__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__DP__REF_CLK_SEL {<Select>} \
CONFIG.PSU__ENET0__GRP_MDIO__ENABLE {1} \
CONFIG.PSU__ENET0__GRP_MDIO__IO {EMIO} \
CONFIG.PSU__ENET0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__ENET0__PERIPHERAL__IO {EMIO} \
CONFIG.PSU__ENET1__GRP_MDIO__ENABLE {0} \
CONFIG.PSU__ENET1__GRP_MDIO__IO {<Select>} \
CONFIG.PSU__ENET1__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__ENET1__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__ENET2__GRP_MDIO__ENABLE {0} \
CONFIG.PSU__ENET2__GRP_MDIO__IO {<Select>} \
CONFIG.PSU__ENET2__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__ENET2__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {0} \
CONFIG.PSU__ENET3__GRP_MDIO__IO {<Select>} \
CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__ENET3__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__FPD_SLCR__WDT1__ACT_FREQMHZ {99.999001} \
CONFIG.PSU__FPD_SLCR__WDT1__FREQMHZ {99.999001} \
CONFIG.PSU__FPD_SLCR__WDT_CLK_SEL__SELECT {APB} \
CONFIG.PSU__FPGA_PL0_ENABLE {1} \
CONFIG.PSU__FP__POWER__ON {1} \
CONFIG.PSU__GEM0__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__GEM0__REF_CLK_SEL {<Select>} \
CONFIG.PSU__GEM1__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__GEM1__REF_CLK_SEL {<Select>} \
CONFIG.PSU__GEM2__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__GEM2__REF_CLK_SEL {<Select>} \
CONFIG.PSU__GEM3__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__GEM3__REF_CLK_SEL {<Select>} \
CONFIG.PSU__GEM__TSU__ENABLE {0} \
CONFIG.PSU__GEM__TSU__IO {<Select>} \
CONFIG.PSU__GEN_IPI_0__MASTER {APU} \
CONFIG.PSU__GEN_IPI_10__MASTER {NONE} \
CONFIG.PSU__GEN_IPI_1__MASTER {RPU0} \
CONFIG.PSU__GEN_IPI_2__MASTER {RPU1} \
CONFIG.PSU__GEN_IPI_3__MASTER {PMU} \
CONFIG.PSU__GEN_IPI_4__MASTER {PMU} \
CONFIG.PSU__GEN_IPI_5__MASTER {PMU} \
CONFIG.PSU__GEN_IPI_6__MASTER {PMU} \
CONFIG.PSU__GEN_IPI_7__MASTER {NONE} \
CONFIG.PSU__GEN_IPI_8__MASTER {NONE} \
CONFIG.PSU__GEN_IPI_9__MASTER {NONE} \
CONFIG.PSU__GPIO0_MIO__IO {<Select>} \
CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__GPIO1_MIO__IO {<Select>} \
CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__GPIO2_MIO__IO {<Select>} \
CONFIG.PSU__GPIO2_MIO__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__GPIO_EMIO__WIDTH {[94:0]} \
CONFIG.PSU__GPU_PP0__POWER__ON {1} \
CONFIG.PSU__GPU_PP1__POWER__ON {1} \
CONFIG.PSU__GT_REF_CLK__FREQMHZ {33.333} \
CONFIG.PSU__GT__LINK_SPEED {<Select>} \
CONFIG.PSU__I2C0_LOOP_I2C1__ENABLE {0} \
CONFIG.PSU__I2C0__GRP_INT__ENABLE {0} \
CONFIG.PSU__I2C0__GRP_INT__IO {<Select>} \
CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15} \
CONFIG.PSU__I2C1__GRP_INT__ENABLE {0} \
CONFIG.PSU__I2C1__GRP_INT__IO {<Select>} \
CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 16 .. 17} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} \
CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ {100.000000} \
CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ {100} \
CONFIG.PSU__IOU_SLCR__TTC1__ACT_FREQMHZ {100.000000} \
CONFIG.PSU__IOU_SLCR__TTC1__FREQMHZ {100} \
CONFIG.PSU__IOU_SLCR__TTC2__ACT_FREQMHZ {100.000000} \
CONFIG.PSU__IOU_SLCR__TTC2__FREQMHZ {100} \
CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ {100.000000} \
CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ {100} \
CONFIG.PSU__IOU_SLCR__WDT0__ACT_FREQMHZ {99.999001} \
CONFIG.PSU__IOU_SLCR__WDT0__FREQMHZ {99.999001} \
CONFIG.PSU__IOU_SLCR__WDT_CLK_SEL__SELECT {APB} \
CONFIG.PSU__L2_BANK0__POWER__ON {1} \
CONFIG.PSU__MAXIGP2__DATA_WIDTH {64} \
CONFIG.PSU__NAND__CHIP_ENABLE__ENABLE {0} \
CONFIG.PSU__NAND__CHIP_ENABLE__IO {<Select>} \
CONFIG.PSU__NAND__DATA_STROBE__ENABLE {0} \
CONFIG.PSU__NAND__DATA_STROBE__IO {<Select>} \
CONFIG.PSU__NAND__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__NAND__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__NAND__READY_BUSY__ENABLE {0} \
CONFIG.PSU__NAND__READY_BUSY__IO {<Select>} \
CONFIG.PSU__OCM_BANK0__POWER__ON {1} \
CONFIG.PSU__OCM_BANK1__POWER__ON {1} \
CONFIG.PSU__OCM_BANK2__POWER__ON {1} \
CONFIG.PSU__OCM_BANK3__POWER__ON {1} \
CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} \
CONFIG.PSU__PCIE__ACS_VIOLATION {0} \
CONFIG.PSU__PCIE__AER_CAPABILITY {0} \
CONFIG.PSU__PCIE__ATOMICOP_EGRESS_BLOCKED {0} \
CONFIG.PSU__PCIE__BAR0_64BIT {0} \
CONFIG.PSU__PCIE__BAR0_ENABLE {0} \
CONFIG.PSU__PCIE__BAR0_PREFETCHABLE {0} \
CONFIG.PSU__PCIE__BAR0_SCALE {<Select>} \
CONFIG.PSU__PCIE__BAR0_SIZE {<Select>} \
CONFIG.PSU__PCIE__BAR0_TYPE {<Select>} \
CONFIG.PSU__PCIE__BAR1_64BIT {0} \
CONFIG.PSU__PCIE__BAR1_ENABLE {0} \
CONFIG.PSU__PCIE__BAR1_PREFETCHABLE {0} \
CONFIG.PSU__PCIE__BAR1_SCALE {<Select>} \
CONFIG.PSU__PCIE__BAR1_SIZE {<Select>} \
CONFIG.PSU__PCIE__BAR1_TYPE {<Select>} \
CONFIG.PSU__PCIE__BAR2_64BIT {0} \
CONFIG.PSU__PCIE__BAR2_ENABLE {0} \
CONFIG.PSU__PCIE__BAR2_PREFETCHABLE {0} \
CONFIG.PSU__PCIE__BAR2_SCALE {<Select>} \
CONFIG.PSU__PCIE__BAR2_SIZE {<Select>} \
CONFIG.PSU__PCIE__BAR2_TYPE {<Select>} \
CONFIG.PSU__PCIE__BAR3_64BIT {0} \
CONFIG.PSU__PCIE__BAR3_ENABLE {0} \
CONFIG.PSU__PCIE__BAR3_PREFETCHABLE {0} \
CONFIG.PSU__PCIE__BAR3_SCALE {<Select>} \
CONFIG.PSU__PCIE__BAR3_SIZE {<Select>} \
CONFIG.PSU__PCIE__BAR3_TYPE {<Select>} \
CONFIG.PSU__PCIE__BAR4_64BIT {0} \
CONFIG.PSU__PCIE__BAR4_ENABLE {0} \
CONFIG.PSU__PCIE__BAR4_PREFETCHABLE {0} \
CONFIG.PSU__PCIE__BAR4_SCALE {<Select>} \
CONFIG.PSU__PCIE__BAR4_SIZE {<Select>} \
CONFIG.PSU__PCIE__BAR4_TYPE {<Select>} \
CONFIG.PSU__PCIE__BAR5_64BIT {0} \
CONFIG.PSU__PCIE__BAR5_ENABLE {0} \
CONFIG.PSU__PCIE__BAR5_PREFETCHABLE {0} \
CONFIG.PSU__PCIE__BAR5_SCALE {<Select>} \
CONFIG.PSU__PCIE__BAR5_SIZE {<Select>} \
CONFIG.PSU__PCIE__BAR5_TYPE {<Select>} \
CONFIG.PSU__PCIE__BASE_CLASS_MENU {<Select>} \
CONFIG.PSU__PCIE__BRIDGE_BAR_INDICATOR {<Select>} \
CONFIG.PSU__PCIE__CAP_SLOT_IMPLEMENTED {<Select>} \
CONFIG.PSU__PCIE__CLASS_CODE_BASE {0x06} \
CONFIG.PSU__PCIE__CLASS_CODE_SUB {0x4} \
CONFIG.PSU__PCIE__COMPLETER_ABORT {0} \
CONFIG.PSU__PCIE__COMPLTION_TIMEOUT {0} \
CONFIG.PSU__PCIE__CORRECTABLE_INT_ERR {0} \
CONFIG.PSU__PCIE__CRS_SW_VISIBILITY {0} \
CONFIG.PSU__PCIE__DEVICE_ID {0xD021} \
CONFIG.PSU__PCIE__DEVICE_PORT_TYPE {<Select>} \
CONFIG.PSU__PCIE__ECRC_CHECK {0} \
CONFIG.PSU__PCIE__ECRC_ERR {0} \
CONFIG.PSU__PCIE__ECRC_GEN {0} \
CONFIG.PSU__PCIE__EROM_ENABLE {0} \
CONFIG.PSU__PCIE__EROM_SCALE {<Select>} \
CONFIG.PSU__PCIE__EROM_SIZE {<Select>} \
CONFIG.PSU__PCIE__FLOW_CONTROL_ERR {0} \
CONFIG.PSU__PCIE__FLOW_CONTROL_PROTOCOL_ERR {0} \
CONFIG.PSU__PCIE__HEADER_LOG_OVERFLOW {0} \
CONFIG.PSU__PCIE__INTERFACE_WIDTH {<Select>} \
CONFIG.PSU__PCIE__INTX_GENERATION {0} \
CONFIG.PSU__PCIE__INTX_PIN {<Select>} \
CONFIG.PSU__PCIE__LANE0__ENABLE {0} \
CONFIG.PSU__PCIE__LANE0__IO {<Select>} \
CONFIG.PSU__PCIE__LANE1__ENABLE {0} \
CONFIG.PSU__PCIE__LANE1__IO {<Select>} \
CONFIG.PSU__PCIE__LANE2__ENABLE {0} \
CONFIG.PSU__PCIE__LANE2__IO {<Select>} \
CONFIG.PSU__PCIE__LANE3__ENABLE {0} \
CONFIG.PSU__PCIE__LANE3__IO {<Select>} \
CONFIG.PSU__PCIE__LEGACY_INTERRUPT {<Select>} \
CONFIG.PSU__PCIE__LINK_SPEED {<Select>} \
CONFIG.PSU__PCIE__MAXIMUM_LINK_WIDTH {<Select>} \
CONFIG.PSU__PCIE__MAX_PAYLOAD_SIZE {<Select>} \
CONFIG.PSU__PCIE__MC_BLOCKED_TLP {0} \
CONFIG.PSU__PCIE__MSIX_CAPABILITY {0} \
CONFIG.PSU__PCIE__MSIX_PBA_OFFSET {0} \
CONFIG.PSU__PCIE__MSIX_TABLE_OFFSET {0} \
CONFIG.PSU__PCIE__MSIX_TABLE_SIZE {0} \
CONFIG.PSU__PCIE__MSI_64BIT_ADDR_CAPABLE {0} \
CONFIG.PSU__PCIE__MSI_CAPABILITY {0} \
CONFIG.PSU__PCIE__MSI_MULTIPLE_MSG_CAPABLE {<Select>} \
CONFIG.PSU__PCIE__MULTIHEADER {0} \
CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_ENABLE {1} \
CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_IO {<Select>} \
CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_ENABLE {0} \
CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_IO {<Select>} \
CONFIG.PSU__PCIE__PERM_ROOT_ERR_UPDATE {0} \
CONFIG.PSU__PCIE__RECEIVER_ERR {0} \
CONFIG.PSU__PCIE__RECEIVER_OVERFLOW {0} \
CONFIG.PSU__PCIE__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__PCIE__REF_CLK_SEL {<Select>} \
CONFIG.PSU__PCIE__SUB_CLASS_INTERFACE_MENU {<Select>} \
CONFIG.PSU__PCIE__SURPRISE_DOWN {0} \
CONFIG.PSU__PCIE__TLP_PREFIX_BLOCKED {0} \
CONFIG.PSU__PCIE__UNCORRECTABL_INT_ERR {0} \
CONFIG.PSU__PCIE__USE_CLASS_CODE_LOOKUP_ASSISTANT {<Select>} \
CONFIG.PSU__PJTAG__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__PJTAG__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__PL_CLK0_BUF {TRUE} \
CONFIG.PSU__PL_CLK1_BUF {FALSE} \
CONFIG.PSU__PL_CLK2_BUF {FALSE} \
CONFIG.PSU__PL_CLK3_BUF {FALSE} \
CONFIG.PSU__PL__POWER__ON {1} \
CONFIG.PSU__PMU__EMIO_GPI__ENABLE {0} \
CONFIG.PSU__PMU__EMIO_GPO__ENABLE {0} \
CONFIG.PSU__PMU__GPI0__ENABLE {0} \
CONFIG.PSU__PMU__GPI0__IO {<Select>} \
CONFIG.PSU__PMU__GPI1__ENABLE {0} \
CONFIG.PSU__PMU__GPI1__IO {<Select>} \
CONFIG.PSU__PMU__GPI2__ENABLE {0} \
CONFIG.PSU__PMU__GPI2__IO {<Select>} \
CONFIG.PSU__PMU__GPI3__ENABLE {0} \
CONFIG.PSU__PMU__GPI3__IO {<Select>} \
CONFIG.PSU__PMU__GPI4__ENABLE {0} \
CONFIG.PSU__PMU__GPI4__IO {<Select>} \
CONFIG.PSU__PMU__GPI5__ENABLE {0} \
CONFIG.PSU__PMU__GPI5__IO {<Select>} \
CONFIG.PSU__PMU__GPO0__ENABLE {0} \
CONFIG.PSU__PMU__GPO0__IO {<Select>} \
CONFIG.PSU__PMU__GPO1__ENABLE {0} \
CONFIG.PSU__PMU__GPO1__IO {<Select>} \
CONFIG.PSU__PMU__GPO2__ENABLE {0} \
CONFIG.PSU__PMU__GPO2__IO {<Select>} \
CONFIG.PSU__PMU__GPO3__ENABLE {0} \
CONFIG.PSU__PMU__GPO3__IO {<Select>} \
CONFIG.PSU__PMU__GPO4__ENABLE {0} \
CONFIG.PSU__PMU__GPO4__IO {<Select>} \
CONFIG.PSU__PMU__GPO5__ENABLE {0} \
CONFIG.PSU__PMU__GPO5__IO {<Select>} \
CONFIG.PSU__PMU__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__PMU__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__PROTECTION__DEBUG {1} \
CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;0|USB0:NonSecure;0|S_AXI_LPD:NA;0|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;0|S_AXI_HP3_FPD:NA;0|S_AXI_HP2_FPD:NA;0|S_AXI_HP1_FPD:NA;0|S_AXI_HP0_FPD:NA;0|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:Secure;1|SD0:Secure;0|SATA1:NonSecure;0|SATA0:NonSecure;0|RPU1:Secure;1|RPU0:Secure;1|QSPI:Secure;0|PMU:NA;1|PCIe:NonSecure;0|NAND:Secure;0|LDMA:NA;1|GPU:Secure;1|GEM3:Secure;1|GEM2:Secure;0|GEM1:Secure;0|GEM0:Secure;1|FDMA:NA;1|DP:NonSecure;0|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1} \
CONFIG.PSU__PROTECTION__SLAVES {LPD;USB3_1_XHCI;FE300000;FE3FFFFF;0|LPD;USB3_1;FF9E0000;FF9EFFFF;0|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;0|LPD;USB3_0;FF9D0000;FF9DFFFF;0|LPD;UART1;FF010000;FF01FFFF;1|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;0|LPD;TTC2;FF130000;FF13FFFF;0|LPD;TTC1;FF120000;FF12FFFF;0|LPD;TTC0;FF110000;FF11FFFF;1|FPD;SWDT1;FD4D0000;FD4DFFFF;1|LPD;SWDT0;FF150000;FF15FFFF;1|LPD;SPI1;FF050000;FF05FFFF;0|LPD;SPI0;FF040000;FF04FFFF;0|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;0|FPD;SATA;FD0C0000;FD0CFFFF;0|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|FPD;RCPU_GIC;F9000000;F900FFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;0|LPD;PUF;FFC30000;FFC3FFFF;1|LPD;PMU_RAM;FFDC0000;FFDFFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;0|FPD;PCIE_LOW;E0000000;EFFFFFFF;0|FPD;PCIE_HIGH;600000000;7FFFFFFFF;0|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;0|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;0|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LDMA_7;FFAF0000;FFAFFFFF;1|LPD;LDMA_6;FFAE0000;FFAEFFFF;1|LPD;LDMA_5;FFAD0000;FFADFFFF;1|LPD;LDMA_4;FFAC0000;FFACFFFF;1|LPD;LDMA_3;FFAB0000;FFABFFFF;1|LPD;LDMA_2;FFAA0000;FFAAFFFF;1|LPD;LDMA_1;FFA90000;FFA9FFFF;1|LPD;LDMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;1|LPD;I2C0;FF020000;FF02FFFF;1|FPD;GPU;FD4B0000;FD4BFFFF;1|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;1|LPD;GEM2;FF0D0000;FF0DFFFF;0|LPD;GEM1;FF0C0000;FF0CFFFF;0|LPD;GEM0;FF0B0000;FF0BFFFF;1|FPD;GDMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_GPV;FD700000;FD7FFFFF;1|FPD;FDMA_CH6;FD560000;FD56FFFF;1|FPD;FDMA_CH5;FD550000;FD55FFFF;1|FPD;FDMA_CH4;FD540000;FD54FFFF;1|FPD;FDMA_CH3;FD530000;FD53FFFF;1|FPD;FDMA_CH2;FD520000;FD52FFFF;1|FPD;FDMA_CH1;FD510000;FD51FFFF;1|FPD;FDMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;0|FPD;DPDMA;FD4C0000;FD4CFFFF;1|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;87FFFFFFF;1|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_WDT;FFCB0000;FFCBFFFF;1|LPD;CSU_ROM;FFC00000;FFC1FFFF;1|LPD;CSU_RAM;FFC40000;FFC5FFFF;1|LPD;CSU_LOCAL;FFC20000;FFC2FFFF;1|LPD;CSU_IOMODULE;FFC60000;FFC7FFFF;1|LPD;CSUDMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;0|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|FPD;CCI_GPV;FD6E0000;FD6EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;0|LPD;CAN0;FF060000;FF06FFFF;0|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9000000;F907FFFF;1} \
CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE {0} \
CONFIG.PSU__PSS_ALT_REF_CLK__FREQMHZ {33.333} \
CONFIG.PSU__PSS_ALT_REF_CLK__IO {<Select>} \
CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.333} \
CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {0} \
CONFIG.PSU__QSPI__GRP_FBCLK__IO {<Select>} \
CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {<Select>} \
CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__QSPI__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__QSPI__PERIPHERAL__MODE {<Select>} \
CONFIG.PSU__RPU__POWER__ON {1} \
CONFIG.PSU__SATA__LANE0__ENABLE {0} \
CONFIG.PSU__SATA__LANE0__IO {<Select>} \
CONFIG.PSU__SATA__LANE1__ENABLE {0} \
CONFIG.PSU__SATA__LANE1__IO {<Select>} \
CONFIG.PSU__SATA__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__SATA__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__SATA__REF_CLK_SEL {<Select>} \
CONFIG.PSU__SD0__DATA_TRANSFER_MODE {<Select>} \
CONFIG.PSU__SD0__GRP_CD__ENABLE {0} \
CONFIG.PSU__SD0__GRP_CD__IO {<Select>} \
CONFIG.PSU__SD0__GRP_POW__ENABLE {0} \
CONFIG.PSU__SD0__GRP_POW__IO {<Select>} \
CONFIG.PSU__SD0__GRP_WP__ENABLE {0} \
CONFIG.PSU__SD0__GRP_WP__IO {<Select>} \
CONFIG.PSU__SD0__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__SD0__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__SD0__RESET__ENABLE {0} \
CONFIG.PSU__SD0__SLOT_TYPE {<Select>} \
CONFIG.PSU__SD1__DATA_TRANSFER_MODE {8Bit} \
CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
CONFIG.PSU__SD1__GRP_POW__ENABLE {1} \
CONFIG.PSU__SD1__GRP_POW__IO {MIO 43} \
CONFIG.PSU__SD1__GRP_WP__ENABLE {1} \
CONFIG.PSU__SD1__GRP_WP__IO {MIO 44} \
CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 39 .. 51} \
CONFIG.PSU__SD1__RESET__ENABLE {0} \
CONFIG.PSU__SD1__SLOT_TYPE {SD 3.0} \
CONFIG.PSU__SPI0_LOOP_SPI1__ENABLE {0} \
CONFIG.PSU__SPI0__GRP_SS0__ENABLE {0} \
CONFIG.PSU__SPI0__GRP_SS0__IO {<Select>} \
CONFIG.PSU__SPI0__GRP_SS1__ENABLE {0} \
CONFIG.PSU__SPI0__GRP_SS1__IO {<Select>} \
CONFIG.PSU__SPI0__GRP_SS2__ENABLE {0} \
CONFIG.PSU__SPI0__GRP_SS2__IO {<Select>} \
CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__SPI0__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__SPI1__GRP_SS0__ENABLE {0} \
CONFIG.PSU__SPI1__GRP_SS0__IO {<Select>} \
CONFIG.PSU__SPI1__GRP_SS1__ENABLE {0} \
CONFIG.PSU__SPI1__GRP_SS1__IO {<Select>} \
CONFIG.PSU__SPI1__GRP_SS2__ENABLE {0} \
CONFIG.PSU__SPI1__GRP_SS2__IO {<Select>} \
CONFIG.PSU__SPI1__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__SPI1__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__SWDT0__CLOCK__ENABLE {0} \
CONFIG.PSU__SWDT0__CLOCK__IO {<Select>} \
CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SWDT0__RESET__ENABLE {0} \
CONFIG.PSU__SWDT0__RESET__IO {<Select>} \
CONFIG.PSU__SWDT1__CLOCK__ENABLE {0} \
CONFIG.PSU__SWDT1__CLOCK__IO {<Select>} \
CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SWDT1__RESET__ENABLE {0} \
CONFIG.PSU__SWDT1__RESET__IO {<Select>} \
CONFIG.PSU__TCM0A__POWER__ON {1} \
CONFIG.PSU__TCM0B__POWER__ON {1} \
CONFIG.PSU__TCM1A__POWER__ON {1} \
CONFIG.PSU__TCM1B__POWER__ON {1} \
CONFIG.PSU__TESTSCAN__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__TRACE__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__TRACE__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__TRACE__WIDTH {<Select>} \
CONFIG.PSU__TTC0__CLOCK__ENABLE {1} \
CONFIG.PSU__TTC0__CLOCK__IO {MIO 6} \
CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC0__WAVEOUT__ENABLE {1} \
CONFIG.PSU__TTC0__WAVEOUT__IO {MIO 7} \
CONFIG.PSU__TTC1__CLOCK__ENABLE {0} \
CONFIG.PSU__TTC1__CLOCK__IO {<Select>} \
CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__TTC1__WAVEOUT__ENABLE {0} \
CONFIG.PSU__TTC1__WAVEOUT__IO {<Select>} \
CONFIG.PSU__TTC2__CLOCK__ENABLE {0} \
CONFIG.PSU__TTC2__CLOCK__IO {<Select>} \
CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__TTC2__WAVEOUT__ENABLE {0} \
CONFIG.PSU__TTC2__WAVEOUT__IO {<Select>} \
CONFIG.PSU__TTC3__CLOCK__ENABLE {0} \
CONFIG.PSU__TTC3__CLOCK__IO {<Select>} \
CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__TTC3__WAVEOUT__ENABLE {0} \
CONFIG.PSU__TTC3__WAVEOUT__IO {<Select>} \
CONFIG.PSU__UART0_LOOP_UART1__ENABLE {0} \
CONFIG.PSU__UART0__BAUD_RATE {115200} \
CONFIG.PSU__UART0__MODEM__ENABLE {0} \
CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} \
CONFIG.PSU__UART1__BAUD_RATE {115200} \
CONFIG.PSU__UART1__MODEM__ENABLE {0} \
CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 20 .. 21} \
CONFIG.PSU__USB0__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__USB0__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__USB0__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__USB0__REF_CLK_SEL {<Select>} \
CONFIG.PSU__USB1__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__USB1__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__USB1__REF_CLK_FREQ {<Select>} \
CONFIG.PSU__USB1__REF_CLK_SEL {<Select>} \
CONFIG.PSU__USB2_0__EMIO__ENABLE {0} \
CONFIG.PSU__USB2_1__EMIO__ENABLE {0} \
CONFIG.PSU__USB3_0__EMIO__ENABLE {0} \
CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__USB3_0__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__USB3_1__EMIO__ENABLE {0} \
CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE {0} \
CONFIG.PSU__USB3_1__PERIPHERAL__IO {<Select>} \
CONFIG.PSU__USE__FABRIC__RST {1} \
CONFIG.PSU__USE__M_AXI_GP2 {0} \
CONFIG.PSU__VIDEO_REF_CLK__ENABLE {0} \
CONFIG.PSU__VIDEO_REF_CLK__FREQMHZ {33.333} \
CONFIG.PSU__VIDEO_REF_CLK__IO {<Select>} \
 ] $zynq_ultra_ps_e_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.PSU_DDR_RAM_HIGHADDR.VALUE_SRC {DEFAULT} \
CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_0_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_0_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_0_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_0_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_0_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_10_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_10_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_10_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_10_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_10_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_11_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_11_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_11_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_11_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_11_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_12_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_12_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_12_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_12_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_12_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_13_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_13_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_13_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_13_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_13_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_14_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_14_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_14_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_14_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_14_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_15_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_15_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_15_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_15_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_15_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_16_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_16_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_16_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_16_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_16_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_17_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_17_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_17_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_17_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_17_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_18_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_18_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_18_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_18_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_18_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_19_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_19_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_19_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_19_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_19_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_1_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_1_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_1_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_1_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_1_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_20_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_20_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_20_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_20_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_20_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_21_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_21_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_21_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_21_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_21_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_22_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_22_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_22_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_22_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_22_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_23_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_23_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_23_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_23_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_23_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_24_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_24_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_24_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_24_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_24_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_25_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_25_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_25_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_25_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_25_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_26_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_26_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_26_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_26_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_26_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_27_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_27_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_27_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_27_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_27_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_28_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_28_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_28_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_28_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_28_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_29_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_29_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_29_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_29_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_29_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_2_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_2_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_2_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_2_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_2_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_30_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_30_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_30_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_30_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_30_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_31_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_31_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_31_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_31_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_31_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_32_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_32_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_32_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_32_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_32_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_33_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_33_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_33_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_33_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_33_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_34_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_34_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_34_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_34_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_34_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_35_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_35_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_35_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_35_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_35_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_36_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_36_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_36_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_36_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_36_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_37_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_37_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_37_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_37_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_37_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_38_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_38_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_38_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_38_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_38_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_39_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_39_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_39_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_39_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_39_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_3_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_3_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_3_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_3_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_3_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_40_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_40_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_40_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_40_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_40_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_41_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_41_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_41_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_41_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_41_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_42_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_42_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_42_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_42_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_42_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_43_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_43_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_43_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_43_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_43_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_44_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_44_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_44_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_44_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_44_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_45_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_45_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_45_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_45_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_45_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_46_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_46_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_46_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_46_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_46_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_47_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_47_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_47_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_47_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_47_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_48_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_48_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_48_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_48_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_48_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_49_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_49_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_49_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_49_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_49_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_4_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_4_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_4_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_4_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_4_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_50_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_50_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_50_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_50_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_50_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_51_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_51_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_51_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_51_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_51_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_52_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_52_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_52_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_52_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_52_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_53_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_53_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_53_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_53_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_53_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_54_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_54_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_54_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_54_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_54_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_55_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_55_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_55_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_55_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_55_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_56_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_56_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_56_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_56_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_56_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_57_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_57_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_57_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_57_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_57_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_58_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_58_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_58_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_58_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_58_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_59_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_59_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_59_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_59_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_59_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_5_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_5_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_5_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_5_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_5_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_60_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_60_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_60_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_60_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_60_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_61_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_61_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_61_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_61_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_61_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_62_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_62_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_62_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_62_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_62_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_63_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_63_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_63_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_63_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_63_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_64_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_64_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_64_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_64_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_64_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_65_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_65_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_65_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_65_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_65_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_66_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_66_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_66_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_66_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_66_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_67_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_67_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_67_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_67_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_67_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_68_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_68_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_68_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_68_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_68_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_69_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_69_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_69_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_69_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_69_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_6_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_6_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_6_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_6_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_6_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_70_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_70_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_70_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_70_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_70_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_71_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_71_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_71_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_71_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_71_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_72_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_72_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_72_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_72_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_72_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_73_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_73_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_73_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_73_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_73_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_74_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_74_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_74_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_74_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_74_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_75_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_75_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_75_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_75_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_75_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_76_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_76_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_76_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_76_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_76_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_77_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_77_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_77_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_77_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_77_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_7_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_7_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_7_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_7_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_7_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_8_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_8_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_8_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_8_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_8_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_9_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_9_DRIVE_STRENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_9_INPUT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_9_PULLUPDOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_9_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_TREE_PERIPHERALS.VALUE_SRC {DEFAULT} \
CONFIG.PSU_MIO_TREE_SIGNALS.VALUE_SRC {DEFAULT} \
CONFIG.PSU_UIPARAM_GENERATE_SUMMARY.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ACPU0__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ACPU1__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ACPU2__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ACPU3__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ACT_DDR_FREQ_MHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__AUX_REF_CLK__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CAN0_LOOP_CAN1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CAN0__GRP_CLK__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CAN0__GRP_CLK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CAN0__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CAN0__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CAN1__GRP_CLK__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CAN1__GRP_CLK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI0_REF__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI1_REF__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI2_REF__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI3_REF__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI4_REF__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__AFI5_REF__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APLL_CTRL__FRACFREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APM_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APM_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APM_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__APM_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACFREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACFREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AFI6__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__AMS_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DLL_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__DLL_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACFREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__NAND_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__PL3_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACFREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__SRCSEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CRL_APB__USB3__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_0__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_0__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_0__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_10__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_10__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_10__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_11__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_11__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_11__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_12__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_12__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_12__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_1__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_1__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_2__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_2__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_2__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_3__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_3__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_3__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_4__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_4__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_4__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_5__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_5__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_5__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_6__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_6__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_6__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_7__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_7__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_7__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_8__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_8__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_8__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_9__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_9__ERASE_BBRAM.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__CSU_TAMPER_9__RESPONSE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__CSU__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__AL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__DERATE_INT_D.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__ECC_SCRUB.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__EN_2ND_CLK.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__FREQ_MHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__HIGH_TEMP.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__PARTNO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__PLL_BYPASS.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__PWR_DOWN_EN.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__SB_TARGET.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__VENDOR_PART.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDRC__VIDEO_BUFFER_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DDR__INTERFACE__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DEVICE_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DISPLAYPORT__LANE0__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DISPLAYPORT__LANE1__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DPAUX__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DP__LANE_SEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DP__REF_CLK_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__DP__REF_CLK_SEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET1__GRP_MDIO__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET1__GRP_MDIO__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET1__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET1__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET2__GRP_MDIO__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET2__GRP_MDIO__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET2__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__ENET2__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__FPD_SLCR__WDT1__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__FPD_SLCR__WDT1__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__FPD_SLCR__WDT_CLK_SEL__SELECT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__FP__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM0__REF_CLK_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM0__REF_CLK_SEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM1__REF_CLK_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM1__REF_CLK_SEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM2__REF_CLK_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM2__REF_CLK_SEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM3__REF_CLK_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM3__REF_CLK_SEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM__TSU__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEM__TSU__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_0__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_10__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_1__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_2__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_3__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_4__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_5__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_6__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_7__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_8__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GEN_IPI_9__MASTER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GPIO2_MIO__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GPIO2_MIO__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GPIO_EMIO__WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GPU_PP0__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GPU_PP1__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GT_REF_CLK__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__GT__LINK_SPEED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__I2C0_LOOP_I2C1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__I2C0__GRP_INT__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__I2C0__GRP_INT__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__I2C1__GRP_INT__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__I2C1__GRP_INT__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC1__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC1__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC2__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC2__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__WDT0__ACT_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__WDT0__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__IOU_SLCR__WDT_CLK_SEL__SELECT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__L2_BANK0__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__CHIP_ENABLE__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__CHIP_ENABLE__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__DATA_STROBE__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__DATA_STROBE__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__READY_BUSY__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__NAND__READY_BUSY__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__OCM_BANK0__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__OCM_BANK1__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__OCM_BANK2__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__OCM_BANK3__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__ACS_VIOLATION.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__AER_CAPABILITY.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__ATOMICOP_EGRESS_BLOCKED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR0_64BIT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR0_PREFETCHABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR0_SCALE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR0_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR0_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR1_64BIT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR1_PREFETCHABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR1_SCALE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR1_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR1_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR2_64BIT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR2_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR2_PREFETCHABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR2_SCALE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR2_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR2_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR3_64BIT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR3_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR3_PREFETCHABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR3_SCALE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR3_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR3_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR4_64BIT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR4_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR4_PREFETCHABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR4_SCALE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR4_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR4_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR5_64BIT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR5_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR5_PREFETCHABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR5_SCALE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR5_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BAR5_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BASE_CLASS_MENU.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__BRIDGE_BAR_INDICATOR.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__CAP_SLOT_IMPLEMENTED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__COMPLETER_ABORT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__COMPLTION_TIMEOUT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__CORRECTABLE_INT_ERR.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__ECRC_CHECK.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__ECRC_ERR.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__ECRC_GEN.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__EROM_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__EROM_SCALE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__EROM_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__FLOW_CONTROL_ERR.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__FLOW_CONTROL_PROTOCOL_ERR.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__HEADER_LOG_OVERFLOW.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__INTERFACE_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__INTX_GENERATION.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__INTX_PIN.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LANE0__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LANE0__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LANE1__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LANE2__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LANE2__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LANE3__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LANE3__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__LEGACY_INTERRUPT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MAX_PAYLOAD_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MC_BLOCKED_TLP.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MSIX_CAPABILITY.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MSIX_PBA_OFFSET.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MSIX_TABLE_OFFSET.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MSIX_TABLE_SIZE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MSI_64BIT_ADDR_CAPABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MSI_CAPABILITY.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MSI_MULTIPLE_MSG_CAPABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__MULTIHEADER.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__PERM_ROOT_ERR_UPDATE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__RECEIVER_ERR.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__RECEIVER_OVERFLOW.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__SUB_CLASS_INTERFACE_MENU.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__SURPRISE_DOWN.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__TLP_PREFIX_BLOCKED.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__UNCORRECTABL_INT_ERR.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PCIE__USE_CLASS_CODE_LOOKUP_ASSISTANT.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PJTAG__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PJTAG__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PL_CLK0_BUF.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PL_CLK1_BUF.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PL_CLK2_BUF.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PL_CLK3_BUF.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PL__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__EMIO_GPI__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__EMIO_GPO__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPI0__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPI1__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPI2__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPI3__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPI4__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPI5__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO0__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO0__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO1__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO2__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO2__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO3__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO3__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO4__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO4__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO5__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__GPO5__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PMU__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PROTECTION__DEBUG.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PROTECTION__MASTERS.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PROTECTION__SLAVES.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PSS_ALT_REF_CLK__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__PSS_ALT_REF_CLK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__RPU__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SATA__LANE0__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SATA__LANE0__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__DATA_TRANSFER_MODE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__GRP_CD__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__GRP_CD__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__GRP_POW__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__GRP_POW__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__GRP_WP__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__GRP_WP__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__RESET__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD0__SLOT_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SD1__RESET__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0_LOOP_SPI1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__GRP_SS0__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__GRP_SS0__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__GRP_SS1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__GRP_SS1__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__GRP_SS2__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__GRP_SS2__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI0__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__GRP_SS0__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__GRP_SS0__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__GRP_SS1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__GRP_SS1__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__GRP_SS2__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__GRP_SS2__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SPI1__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT0__CLOCK__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT0__CLOCK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT0__RESET__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT0__RESET__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT1__CLOCK__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT1__CLOCK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT1__RESET__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__SWDT1__RESET__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TCM0A__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TCM0B__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TCM1A__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TCM1B__POWER__ON.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TESTSCAN__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TRACE__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TRACE__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TRACE__WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC0__CLOCK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC0__WAVEOUT__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC1__CLOCK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC1__WAVEOUT__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC2__CLOCK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC2__WAVEOUT__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC3__CLOCK__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__TTC3__WAVEOUT__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__UART0_LOOP_UART1__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__UART0__BAUD_RATE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__UART0__MODEM__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__UART1__BAUD_RATE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB1__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB1__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB1__REF_CLK_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB1__REF_CLK_SEL.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB2_0__EMIO__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB2_1__EMIO__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB3_0__EMIO__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB3_1__EMIO__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USB3_1__PERIPHERAL__IO.VALUE_SRC {DEFAULT} \
CONFIG.PSU__USE__FABRIC__RST.VALUE_SRC {DEFAULT} \
CONFIG.PSU__VIDEO_REF_CLK__ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PSU__VIDEO_REF_CLK__FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PSU__VIDEO_REF_CLK__IO.VALUE_SRC {DEFAULT} \
 ] $zynq_ultra_ps_e_0

  # Create interface connections
  connect_bd_intf_net -intf_net gig_ethernet_pcs_pma_0_sfp [get_bd_intf_ports sfp] [get_bd_intf_pins gig_ethernet_pcs_pma_0/sgmii]
  connect_bd_intf_net -intf_net gtrefclk_in_1 [get_bd_intf_ports gtrefclk_in] [get_bd_intf_pins gig_ethernet_pcs_pma_0/gtrefclk_in]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_GMII_ENET0 [get_bd_intf_pins gig_ethernet_pcs_pma_0/gmii_gem_pcs_pma] [get_bd_intf_pins zynq_ultra_ps_e_0/GMII_ENET0]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_MDIO_ENET0 [get_bd_intf_pins gig_ethernet_pcs_pma_0/mdio_pcs_pma] [get_bd_intf_pins zynq_ultra_ps_e_0/MDIO_ENET0]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins constants/config_valid] [get_bd_pins gig_ethernet_pcs_pma_0/an_adv_config_val] [get_bd_pins gig_ethernet_pcs_pma_0/an_restart_config] [get_bd_pins gig_ethernet_pcs_pma_0/configuration_valid]
  connect_bd_net -net Net1 [get_bd_pins c_counter_binary_1/CLK] [get_bd_pins gig_ethernet_pcs_pma_0/mdc] [get_bd_pins zynq_ultra_ps_e_0/emio_enet0_mdio_mdc]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net c_counter_binary_1_Q [get_bd_pins c_counter_binary_1/Q] [get_bd_pins xlslice_3/Din]
  connect_bd_net -net c_counter_binary_2_Q [get_bd_pins c_counter_binary_2/Q] [get_bd_pins xlslice_4/Din]
  connect_bd_net -net gig_ethernet_pcs_pma_0_gmii_rxclk [get_bd_pins c_counter_binary_2/CLK] [get_bd_pins gig_ethernet_pcs_pma_0/gmii_rxclk] [get_bd_pins zynq_ultra_ps_e_0/emio_enet0_gmii_rx_clk]
  connect_bd_net -net gig_ethernet_pcs_pma_0_resetdone [get_bd_ports xcvr_rst_done_led] [get_bd_pins gig_ethernet_pcs_pma_0/resetdone]
  connect_bd_net -net gig_ethernet_pcs_pma_0_status_vector [get_bd_pins gig_ethernet_pcs_pma_0/status_vector] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net gig_ethernet_pcs_pma_0_userclk2_out [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins gig_ethernet_pcs_pma_0/userclk2_out]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins constants/phy_addr] [get_bd_pins gig_ethernet_pcs_pma_0/phyaddr]
  connect_bd_net -net xlconstant_0_dout1 [get_bd_ports pl_reset_led] [get_bd_pins gig_ethernet_pcs_pma_0/reset] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins constants/config_vector] [get_bd_pins gig_ethernet_pcs_pma_0/configuration_vector]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins constants/an_adv_config_vec] [get_bd_pins gig_ethernet_pcs_pma_0/an_adv_config_vector]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins constants/signal_detect] [get_bd_pins gig_ethernet_pcs_pma_0/signal_detect]
  connect_bd_net -net xlconstant_5_dout [get_bd_ports sfp_tx_dis] [get_bd_pins constants/sfp_tx_dis]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports pcs_clk_led] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_ports link_status_led] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_ports link_sync_led] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_ports mdc_clk_led] [get_bd_pins xlslice_3/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_ports gmii_rx_clk_led] [get_bd_pins xlslice_4/Dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins gig_ethernet_pcs_pma_0/independent_clock_bufg] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   comment_0: "PS-EMIO SGMII ETHERNET",
   commentid: "comment_0|",
   font_comment_0: "47",
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port sfp -pg 1 -y 220 -defaultsOSRD
preplace port gtrefclk_in -pg 1 -y 320 -defaultsOSRD
preplace portBus pcs_clk_led -pg 1 -y 720 -defaultsOSRD
preplace portBus xcvr_rst_done_led -pg 1 -y 340 -defaultsOSRD
preplace portBus gmii_rx_clk_led -pg 1 -y 540 -defaultsOSRD
preplace portBus link_status_led -pg 1 -y 830 -defaultsOSRD
preplace portBus pl_reset_led -pg 1 -y 150 -defaultsOSRD
preplace portBus mdc_clk_led -pg 1 -y 620 -defaultsOSRD
preplace portBus link_sync_led -pg 1 -y 910 -defaultsOSRD
preplace portBus sfp_tx_dis -pg 1 -y 130 -defaultsOSRD
preplace inst zynq_ultra_ps_e_0 -pg 1 -lvl 2 -y 160 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 3 -y 720 -defaultsOSRD
preplace inst xlslice_1 -pg 1 -lvl 3 -y 830 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 2 -y 440 -defaultsOSRD
preplace inst xlslice_2 -pg 1 -lvl 3 -y 910 -defaultsOSRD
preplace inst xlslice_3 -pg 1 -lvl 3 -y 620 -defaultsOSRD
preplace inst xlslice_4 -pg 1 -lvl 3 -y 540 -defaultsOSRD
preplace inst c_counter_binary_0 -pg 1 -lvl 2 -y 720 -defaultsOSRD
preplace inst c_counter_binary_1 -pg 1 -lvl 2 -y 620 -defaultsOSRD
preplace inst c_counter_binary_2 -pg 1 -lvl 2 -y 540 -defaultsOSRD
preplace inst constants -pg 1 -lvl 1 -y 430 -defaultsOSRD
preplace inst gig_ethernet_pcs_pma_0 -pg 1 -lvl 3 -y 330 -defaultsOSRD
preplace netloc gig_ethernet_pcs_pma_0_sfp 1 3 1 NJ
preplace netloc zynq_ultra_ps_e_0_MDIO_ENET0 1 2 1 1060
preplace netloc xlconstant_5_dout 1 1 3 290J 370 1050J 130 NJ
preplace netloc gig_ethernet_pcs_pma_0_gmii_rxclk 1 1 2 310 340 1020
preplace netloc xlslice_4_Dout 1 3 1 NJ
preplace netloc xlslice_3_Dout 1 3 1 NJ
preplace netloc xlslice_1_Dout 1 3 1 NJ
preplace netloc xlconstant_2_dout 1 1 2 270 360 1090J
preplace netloc gig_ethernet_pcs_pma_0_resetdone 1 3 1 NJ
preplace netloc zynq_ultra_ps_e_0_pl_clk0 1 2 1 1030
preplace netloc xlconstant_0_dout1 1 2 2 1080 150 NJ
preplace netloc c_counter_binary_1_Q 1 2 1 NJ
preplace netloc c_counter_binary_2_Q 1 2 1 NJ
preplace netloc xlconstant_0_dout 1 1 2 260 350 1060J
preplace netloc gig_ethernet_pcs_pma_0_userclk2_out 1 1 3 310 670 NJ 670 1450
preplace netloc c_counter_binary_0_Q 1 2 1 NJ
preplace netloc gtrefclk_in_1 1 0 3 NJ 320 260J 330 1040J
preplace netloc xlslice_2_Dout 1 3 1 NJ
preplace netloc xlconstant_4_dout 1 1 2 280 490 1060J
preplace netloc Net1 1 1 2 300 -10 1090
preplace netloc Net 1 1 2 280 390 1100
preplace netloc zynq_ultra_ps_e_0_GMII_ENET0 1 2 1 1070
preplace netloc gig_ethernet_pcs_pma_0_status_vector 1 2 2 1060 770 1440
preplace netloc xlslice_0_Dout 1 3 1 NJ
preplace netloc xlconstant_3_dout 1 1 2 N 380 NJ
preplace cgraphic comment_0 place abs 210 -87 textcolor 7 linecolor 6 linewidth 2
levelinfo -pg 1 0 140 670 1270 1470 -top -20 -bot 980
",
   linecolor_comment_0: "#ff9900",
   textcolor_comment_0: "#008000",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


