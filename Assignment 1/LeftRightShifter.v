`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:38:07 01/14/2020 
// Design Name: 
// Module Name:    RightShifter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LeftRightShifter(A,B,O,R);

	input [31:0] A;
	input [4:0] B;
	output [31:0] O;
	input R;
	
	wire [31:0] ST1,ST2;
	BitReverse BR0(A,ST1,R);
	LeftShifter LS(ST1,B,ST2);
	BitReverse BR1(ST2,O,R);

endmodule
