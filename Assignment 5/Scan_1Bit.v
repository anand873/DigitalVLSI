`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:20:40 02/11/2020 
// Design Name: 
// Module Name:    Scan_1Bit 
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
module Scan_1Bit(a,b,test,out,clk);
	
	input a,b,test,clk;
	output out;
	wire w1;
	reg r1;
	mux_1bit m(a,b,test,w1);
	
	always@(posedge clk)
		r1<=w1;
	
	assign out=r1;
	
endmodule
