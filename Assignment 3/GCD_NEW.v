`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:20:31 01/28/2020 
// Design Name: 
// Module Name:    GCD_NEW 
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
module GCD_NEW(Mo,No,clk,init,G);
	
	input [7:0] Mo,No;
	input init,clk;
	output reg [7:0] G;
	reg [7:0] M,N;
	reg [7:0] A [1:0];
	reg [8:0] S;
	reg [3:0] counter = 4'b0;
	always@(posedge clk)
	begin
		if(init)
		begin
			M=Mo;
			N=No;
			counter = 4'b0;
		end
		else
		begin
			if(M[0]&N[0])
			begin
				A[1] = M[7:0];
				A[0] = N[7:0];
				S = M-N;
				M = A[S[8]];
				N = A[~S[8]]-A[S[8]];
			end
			else if(!(M[0]|N[0]))
			begin
				counter=counter+1;
				M = M>>1'b1;
				N = N>>1'b1;
			end
			else if(N)
			begin
				M = M>>(!M[0]);
				N = N>>(!N[0]);
			end
			else
				G=M<<counter;
				
		end
	end
	
endmodule
