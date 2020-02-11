`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:52 02/10/2020 
// Design Name: 
// Module Name:    shifter 
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
module shifter(s_in,test,in,shift,sel,out,clk);

	input [31:0] in; //Input
	input [4:0] shift; //Shift
	input sel,clk,s_in,test; //s_in -> Scan Test Input  //sel - > R 
	output [31:0] out;
	wire [31:0] w1;
	reg [6:0] shiftr; //Modified Shift Reg
	reg [31:0] inp;
	
	always@(posedge clk)
	begin
		inp<=in;
		shiftr <= {!sel,shift,!sel};
	end
	
	//Main Function Call
	right_shifter s1(s_in,test,inp,shiftr,out,clk);
	
	
endmodule
