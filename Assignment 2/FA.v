`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:57:20 01/21/2020 
// Design Name: 
// Module Name:    FA 
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
module FA(a,b,cin,sum,cout);

	input a,b,cin;
	output sum,cout;
	
	wire sum,cout;
	
	assign sum = (a^b)^cin;
	assign cout = (a&b)+((a^b)&cin);
	
endmodule
