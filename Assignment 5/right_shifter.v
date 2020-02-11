`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:36 02/10/2020 
// Design Name: 
// Module Name:    right_shifter 
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
module right_shifter(s_in,test,in,shift6,out,clk);

	input wire[31:0]in; //Input
	
	input [6:0] shift6; //
	reg [5:0] shift5=0; //
	reg [4:0] shift4=0; //
	reg [3:0] shift3=0; // Delayed Shift Bits
	reg [2:0] shift2=0; //
	reg [1:0] shift1=0; //
	reg shift0=0;  	  //
	
	input clk,s_in,test; //s_in -> Scan Test Input
	output [31:0] out;
	
	wire [31:0] w1,w2,w3,w4,w5,w6,w7,r1,r2,r3,r4,r5,r6; //Intermediate Wires

	always@(posedge clk)
	begin
		
		shift5<=shift6[5:0]; //
		shift4<=shift5[4:0]; //
		shift3<=shift4[3:0]; //
		shift2<=shift3[2:0]; // Updating Shift Bits
		shift1<=shift2[1:0]; //
		shift0<=shift1[0];   //
		
	end
	
	reverse_32bit re1(in,shift6[6],w1);							// Reverse
	Scan_32Bit s1(s_in,w1,test,r1,clk);							// ST
	mux_32bit m1(r1,{r1[15:0],r1[31:16]},shift5[5],w2);	// Shift by 16
	Scan_32Bit s2(s_in,w2,test,r2,clk);							// ST
	mux_32bit m2(r2,{r2[7:0],r2[31:8]},shift4[4],w3);		// Shift by 8
	Scan_32Bit s3(s_in,w3,test,r3,clk);							// ST
	mux_32bit m3(r3,{r3[3:0],r3[31:4]},shift3[3],w4);		// Shift by 4
	Scan_32Bit s4(s_in,w4,test,r4,clk);							// ST
	mux_32bit m4(r4,{r4[1:0],r4[31:2]},shift2[2],w5);		// Shift by 2
	Scan_32Bit s5(s_in,w5,test,r5,clk);							// ST
	mux_32bit m5(r5,{r5[0],r5[31:1]},shift1[1],w6);			// Shift by 1
	Scan_32Bit s6(s_in,w6,test,r6,clk);							// ST
	reverse_32bit re2(r6,shift0,w7);								// Reverse
	Scan_32Bit s7(s_in,w7,test,out,clk);						// ST
	
endmodule
