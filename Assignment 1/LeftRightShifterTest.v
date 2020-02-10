`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:42:54 01/14/2020
// Design Name:   LeftRightShifter
// Module Name:   D:/Xilinx/MUX2_1/LeftRightShifter.v
// Project Name:  MUX2_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LeftRightShifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LeftRightShifterTest;

	// Inputs
	reg [31:0] A;
	reg [4:0] B;
	reg R;

	// Outputs
	wire [31:0] O;

	// Instantiate the Unit Under Test (UUT)
	LeftRightShifter uut (
		.A(A), 
		.B(B), 
		.O(O), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		R = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		
		A = 32'b01001000100001000001000000100000;
		B = 5'b00011;
		R=0;
		#100;
		
		A = 32'b01001000100100000001000000111111;
		B = 5'b00011;
		R=0;
		#100;
		
		A = 32'b01010101100100011011100111100011;
		B = 5'b00011;
		R=0;
		#100;
		
		A = 32'b01001000100001000001000000100000;
		B = 5'b00011;
		R=1;
		#100;
		
		A = 32'b01001000100100000001000000111111;
		B = 5'b00011;
		R=1;
		#100;
		
		A = 32'b01010101100100011011100111100011;
		B = 5'b00011;
		R=1;
		#100;
		$stop;
		

	end
      
endmodule

