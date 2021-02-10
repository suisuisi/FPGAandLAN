`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:07:11 07/13/2015
// Design Name:   test_top
// Module Name:   E:/fpga_projects/Xilinx/Soundtech_projects/UDP_IP_1.3/UDP_IP/sim_top.v
// Project Name:  UDP_IP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sim_top;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire ip_rx_error;
	wire mac_rx_error;
	wire ip_rx_error2;
	wire mac_rx_error2;
    reg clk_p;
    reg clk_n;

	// Instantiate the Unit Under Test (UUT)
	test_top uut (
		.clk(clk),
		.clk_p(clk_p),
		.clk_n(clk_n),
		.reset(reset), 
		.ip_rx_error(ip_rx_error), 
		.mac_rx_error(mac_rx_error), 
		.ip_rx_error2(ip_rx_error2), 
		.mac_rx_error2(mac_rx_error2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		clk_p = 1;
		clk_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      reset = 0;
	end
   always
	  #4 clk <= ~clk;
	  
   always
	  #2.5 clk_p <= ~clk_p;
	  
always
	  #2.5 clk_n <= ~clk_n;
	  
endmodule

