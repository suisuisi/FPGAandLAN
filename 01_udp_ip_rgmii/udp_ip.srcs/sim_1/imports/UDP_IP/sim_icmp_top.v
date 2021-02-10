`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:18 07/14/2015
// Design Name:   image_transmit
// Module Name:   E:/fpga_projects/Xilinx/Soundtech_projects/UDP_IP_1.4/UDP_IP/sim_icmp_top.v
// Project Name:  UDP_IP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: image_transmit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sim_icmp_top;
	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire ip_rx_error;
	wire mac_rx_error;
	wire ip_rx_error2;
	wire mac_rx_error2;

	// Instantiate the Unit Under Test (UUT)
	test_icmp_top uut (
		.clk(clk), 
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

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      reset = 0;
	end
   always
	  #4 clk <= ~clk;
      
endmodule

