`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:06 02/03/2020 
// Design Name: 
// Module Name:    Main 
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
module Main(clk,a,b,cout,enter,exit);

	input wire clk,a,b;
	output wire [31:0] cout;
	output enter;
	output exit;
	wire enter,exit;

	FSM Park(a,b,clk,enter,exit);
	Counter CNT(enter,exit,clk,cout);
	
endmodule
