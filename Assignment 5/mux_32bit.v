`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:23:13 02/10/2020 
// Design Name: 
// Module Name:    mux_32bit
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
module mux_32bit(a,b,sel,out);
input [31:0] a,b;
input sel;
output [31:0] out;
genvar i;
generate
    for (i=0; i<=31; i=i+1)
	 begin:x1
	 mux_1bit mi(a[i],b[i],sel,out[i]);
	 end
endgenerate

endmodule
