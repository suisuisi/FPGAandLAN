@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 3a51d336a1e54702a6f9ff71ffacd0c5 -m64 --debug typical --relax --mt 2 -L xbip_utils_v3_0_5 -L c_reg_fd_v12_0_1 -L c_mux_bit_v12_0_1 -L c_shift_ram_v12_0_8 -L xil_defaultlib -L fifo_generator_v13_0_1 -L unisims_ver -L unimacro_ver -L secureip --snapshot sim_top_behav xil_defaultlib.sim_top xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
