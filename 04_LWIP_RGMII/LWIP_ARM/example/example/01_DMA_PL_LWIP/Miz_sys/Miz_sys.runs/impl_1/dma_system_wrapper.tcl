proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.cache/wt [current_project]
  set_property parent.project_path F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.xpr [current_project]
  set_property ip_repo_paths F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_ip_lib/AXI_OLED [current_project]
  set_property ip_cache_permissions disable [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.runs/synth_1/dma_system_wrapper.dcp
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.dcp
  set_property netlist_only true [get_files F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.dcp]
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0.dcp
  set_property netlist_only true [get_files F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0.dcp]
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.dcp
  set_property netlist_only true [get_files F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.dcp]
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_xlconcat_0_0/system_xlconcat_0_0.dcp
  set_property netlist_only true [get_files F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_xlconcat_0_0/system_xlconcat_0_0.dcp]
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_ila_0_0/system_ila_0_0.dcp
  set_property netlist_only true [get_files F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_ila_0_0/system_ila_0_0.dcp]
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1.dcp
  set_property netlist_only true [get_files F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1.dcp]
  add_files -quiet F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.dcp
  set_property netlist_only true [get_files F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.dcp]
  add_files -quiet f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0.dcp
  set_property netlist_only true [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0.dcp]
  add_files -quiet f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0.dcp
  set_property netlist_only true [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0.dcp]
  add_files -quiet f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0.dcp
  set_property netlist_only true [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0.dcp]
  add_files -quiet f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_pc_1/system_auto_pc_1.dcp
  set_property netlist_only true [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_pc_1/system_auto_pc_1.dcp]
  read_xdc -ref system_processing_system7_0_0 -cells inst f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_processing_system7_0_50M_0 -cells U0 f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0_board.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0_board.xdc]
  read_xdc -ref system_rst_processing_system7_0_50M_0 -cells U0 f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_50M_0/system_rst_processing_system7_0_50M_0.xdc]
  read_xdc -ref system_axi_dma_0_0 -cells U0 f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.xdc]
  read_xdc -ref system_ila_0_0 -cells inst f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref system_axis_data_fifo_0_1 -cells inst f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_0_0 -cells U0 f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
  read_xdc -ref system_axi_gpio_0_0 -cells U0 f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
  read_xdc F:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/constrs_1/new/Miz_sys_pin.xdc
  read_xdc -ref system_axi_dma_0_0 -cells U0 f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_clocks.xdc
  set_property processing_order LATE [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_clocks.xdc]
  read_xdc -ref system_axis_data_fifo_0_1 -cells inst f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1_clocks.xdc
  set_property processing_order LATE [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1/system_axis_data_fifo_0_1_clocks.xdc]
  read_xdc -ref system_auto_us_0 -cells inst f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files f:/MIZ7035_Demon/s3/CH08_DMA_PL_LWIP/Miz_sys/Miz_sys.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc]
  link_design -top dma_system_wrapper -part xc7z035ffg676-2
  write_hwdef -file dma_system_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force dma_system_wrapper_opt.dcp
  catch { report_drc -file dma_system_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force dma_system_wrapper_placed.dcp
  catch { report_io -file dma_system_wrapper_io_placed.rpt }
  catch { report_utilization -file dma_system_wrapper_utilization_placed.rpt -pb dma_system_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file dma_system_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force dma_system_wrapper_routed.dcp
  catch { report_drc -file dma_system_wrapper_drc_routed.rpt -pb dma_system_wrapper_drc_routed.pb -rpx dma_system_wrapper_drc_routed.rpx }
  catch { report_methodology -file dma_system_wrapper_methodology_drc_routed.rpt -rpx dma_system_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file dma_system_wrapper_timing_summary_routed.rpt -rpx dma_system_wrapper_timing_summary_routed.rpx }
  catch { report_power -file dma_system_wrapper_power_routed.rpt -pb dma_system_wrapper_power_summary_routed.pb -rpx dma_system_wrapper_power_routed.rpx }
  catch { report_route_status -file dma_system_wrapper_route_status.rpt -pb dma_system_wrapper_route_status.pb }
  catch { report_clock_utilization -file dma_system_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force dma_system_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force dma_system_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile dma_system_wrapper.bit 
  catch { write_sysdef -hwdef dma_system_wrapper.hwdef -bitfile dma_system_wrapper.bit -meminfo dma_system_wrapper.mmi -file dma_system_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

