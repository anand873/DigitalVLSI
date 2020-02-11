`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:47:35 02/11/2020 
// Design Name: 
// Module Name:    Scan_32Bit 
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
module Scan_32Bit(s_in,in,test,out,clk);

	input s_in,test,clk;
	input [31:0] in;
	output [31:0] out;
	
	Scan_1Bit s1(in[31],s_in,test,out[31],clk);
	
	genvar i;
	generate
		for(i=30;i>=0;i=i-1)
		begin:h
			Scan_1Bit s(in[i],out[i+1],test,out[i],clk);
		end
	endgenerate
	
endmodule
