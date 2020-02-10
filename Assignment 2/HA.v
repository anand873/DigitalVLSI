`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:54:03 01/21/2020 
// Design Name: 
// Module Name:    HA 
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
module HA(a,b,sum,cout);
	
	input a,b;
	output sum,cout;
	
	wire sum,cout;
	
	assign sum = a^b;
	assign cout = a&b;
	
endmodule
