`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:21:31 01/30/2020
// Design Name:   GCD_NEW
// Module Name:   D:/Xilinx/GCD_NEW/GCD_Test.v
// Project Name:  GCD_NEW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GCD_NEW
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GCD_Test;

	// Inputs
	reg [7:0] Mo;
	reg [7:0] No;
	reg clk;
	reg init;

	// Outputs
	wire [7:0] G;

	// Instantiate the Unit Under Test (UUT)
	GCD_NEW uut (
		.Mo(Mo), 
		.No(No), 
		.clk(clk), 
		.init(init), 
		.G(G)
	);
	
	initial begin
	clk = 0;
	init =1;
	end
	
	always begin
		#5 clk = !clk;
	end
	
	always begin
		#7 init = !init;
		#93 init = !init;
	end
	
	
	initial begin
		// Initialize Inputs
		Mo = 0;
		No = 0;

		// Wait 100 ns for global reset to finish
		#200;
		
      Mo = 54;
		No = 45;
		#200;
		
		Mo = 54;
		No = 27;
		#200;
		
		Mo = 36;
		No = 8;
		#200;
		
		Mo = 36;
		No = 54;
		#200;
		
		Mo = 18;
		No = 54;
		#200;
		
		Mo = 35;
		No = 25;
		#200;
		
		Mo = 57;
		No = 19;
		#200;
		
		Mo = 9;
		No = 8;
		#200;
		
		Mo = 128;
		No = 64;
		#200;
		
		
		// Add stimulus here

	end
      
endmodule

