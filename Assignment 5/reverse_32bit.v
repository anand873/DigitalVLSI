`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:21 02/10/2020 
// Design Name: 
// Module Name:    reverse_32bit 
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
module reverse_32bit(in,rev,out);
	input [31:0] in;
	input rev;
	output [31:0] out;
	genvar i;
	generate
		for(i=0;i<=31;i=i+1)
		begin:x3
			mux_1bit m(in[i],in[31-i],rev,out[i]);
		end
	endgenerate
endmodule
