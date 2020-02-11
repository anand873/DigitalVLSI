`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:51:43 02/11/2020
// Design Name:   shifter
// Module Name:   D:/Xilinx/Rotator_NEW/Shifter_TEST.v
// Project Name:  Rotator_NEW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Shifter_TEST;

	// Inputs
	reg s_in;
	reg test;
	reg [31:0] in;
	reg [4:0] shift;
	reg sel;
	reg clk;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	shifter uut (
		.s_in(s_in), 
		.test(test), 
		.in(in), 
		.shift(shift), 
		.sel(sel), 
		.out(out), 
		.clk(clk)
	);
	
	initial begin
		clk=1;
	end
	
	always begin
		#5 clk=!clk;
	end

	initial begin
		// Initialize Inputs
		s_in = 1;
		test = 0;
		in = 0;
		shift = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
      s_in = 1;
		test = 0;
		in = 35;
		shift = 1;
		sel = 0; 
		
		#10;
      s_in = 1;
		test = 0;
		in = 35;
		shift = 2;
		sel = 1;
		
		#10;
      s_in = 1;
		test = 0;
		in = 35;
		shift = 3;
		sel = 0;
		
		#10;
      s_in = 1;
		test = 0;
		in = 35;
		shift = 4;
		sel = 1;
		
		#100;
      s_in = 1;
		test = 1;
		in = 35;
		shift = 1;
		sel = 0;
		
		#320;
      s_in = 1;
		test = 0;
		in = 35;
		shift = 5;
		sel = 0;
		
		#100;
      s_in = 0;
		test = 1;
		in = 35;
		shift = 1;
		sel = 0;
		
		// Add stimulus here

	end
      
endmodule

