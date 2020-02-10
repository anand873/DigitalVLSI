`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:35:59 01/21/2020
// Design Name:   Multiplier
// Module Name:   D:/Xilinx/Assign_1/ModifiedMultiplier/Multiplier_Test.v
// Project Name:  ModifiedMultiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multiplier_Test;

	// Inputs
	reg [5:0] A;
	reg [6:0] B;
	reg t;

	// Outputs
	wire [12:0] C;

	// Instantiate the Unit Under Test (UUT)
	Multiplier uut (
		.A(A), 
		.B(B), 
		.t(t), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		t = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 6'b111110;
		B = 7'b0000001;
		t=1;
		#100;
		
		A = 6'b111111;
		B = 7'b1111111;
		t=0;
		#100;
		
		
		A = 6'b100000;
		B = 7'b1001111;
		t = 1;
		#100;
		
		A = 6'b000101;
		B = 7'b1000001;
		t = 0;
		#100;
		$stop;
		
	end
      
endmodule

