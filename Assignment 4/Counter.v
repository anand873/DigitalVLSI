`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:05 02/03/2020 
// Design Name: 
// Module Name:    Counter 
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
module Counter(inc,dec,clk,cout);

	input wire inc,dec,clk;
	output reg [31:0] cout=32'b0;
	
	always@(posedge clk)
	begin
		if(inc)
			cout <= cout+1;
		else if(dec)
			cout <= cout-1;
		else
			cout <= cout;
	end

endmodule
