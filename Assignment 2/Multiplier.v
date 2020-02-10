`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:02:34 01/21/2020 
// Design Name: 
// Module Name:    Multiplier 
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
module Multiplier(A,B,t,C);

	input [5:0] A;
	input [6:0] B;
	input t;
	
	output [12:0] C;
	
	wire [36:0] sum;
	wire [36:0] cout;
	wire [5:0] A;
	wire [6:0] B;
	
	//Bit 0
	assign C[0] = A[0]&B[0];

	//Bit 1
	HA H_Add1(A[1]&B[0],A[0]&B[1],sum[0],cout[0]);
	assign C[1] = sum[0];
	
	//Bit 2
	FA F_Add1(A[2]&B[0],A[0]&B[2],cout[0],sum[1],cout[1]);
	HA H_Add2(A[1]&B[1],sum[1],sum[2],cout[2]);
	assign C[2] = sum[2];
	
	//Bit 3
	FA F_Add2(A[3]&B[0],A[2]&B[1],cout[1],sum[3],cout[3]);
	FA F_Add3(A[1]&B[2],sum[3],cout[2],sum[4],cout[4]);
	HA H_Add3(A[0]&B[3],sum[4],sum[5],cout[5]);
	assign C[3] = sum[5];
	
	//Bit 4
	FA F_Add4(A[4]&B[0],A[3]&B[1],cout[3],sum[6],cout[6]);
	FA F_Add5(A[2]&B[2],sum[6],cout[4],sum[7],cout[7]);
	FA F_Add6(A[1]&B[3],sum[7],cout[5],sum[8],cout[8]);
	HA H_Add4(A[0]&B[4],sum[8],sum[9],cout[9]);
	assign C[4] = sum[9];
	
	//Bit 5
	FA F_Add7((A[5]&B[0])^t,A[4]&B[1],cout[6],sum[10],cout[10]);
	FA F_Add8(A[3]&B[2],sum[10],cout[7],sum[11],cout[11]);
	FA F_Add9(A[2]&B[3],sum[11],cout[8],sum[12],cout[12]);
	FA F_Add10(A[1]&B[4],sum[12],cout[9],sum[13],cout[13]);
	FA F_Add11(A[0]&B[5],sum[13],t,sum[14],cout[14]);
	assign C[5] = sum[14];
	
	//Bit 6
	FA F_Add12(t,(A[5]&B[1])^t,cout[10],sum[15],cout[15]);
	FA F_Add13(A[4]&B[2],sum[15],cout[11],sum[16],cout[16]);
	FA F_Add14(A[3]&B[3],sum[16],cout[12],sum[17],cout[17]);
	FA F_Add15(A[2]&B[4],sum[17],cout[13],sum[18],cout[18]);
	FA F_Add16(A[1]&B[5],sum[18],cout[14],sum[19],cout[19]);
	HA H_Add5((A[0]&B[6])^t,sum[19],sum[20],cout[20]);
	assign C[6] = sum[20];
	
	//Bit 7
	FA F_Add17((A[5]&B[2])^t,A[4]&B[3],cout[15],sum[21],cout[21]);
	FA F_Add18(A[3]&B[4],sum[21],cout[16],sum[22],cout[22]);
	FA F_Add19(A[2]&B[5],sum[22],cout[17],sum[23],cout[23]);
	FA F_Add20((A[1]&B[6])^t,sum[23],cout[18],sum[24],cout[24]);
	FA F_Add21(sum[24],cout[19],cout[20],sum[25],cout[25]);
	assign C[7] = sum[25];
	
	//Bit 8
	FA F_Add22((A[5]&B[3])^t,A[4]&B[4],cout[21],sum[26],cout[26]);
	FA F_Add23(A[3]&B[5],sum[26],cout[22],sum[27],cout[27]);
	FA F_Add24((A[2]&B[6])^t,sum[27],cout[23],sum[28],cout[28]);
	FA F_Add25(sum[28],cout[24],cout[25],sum[29],cout[29]);
	assign C[8] = sum[29];
	
	//Bit 9
	FA F_Add26((A[5]&B[4])^t,A[4]&B[5],cout[26],sum[30],cout[30]);
	FA F_Add27((A[3]&B[6])^t,sum[30],cout[27],sum[31],cout[31]);
	FA F_Add28(sum[31],cout[28],cout[29],sum[32],cout[32]);
	assign C[9] = sum[32];
	
	//Bit 10
	FA F_Add29((A[5]&B[5])^t,(A[4]&B[6])^t,cout[30],sum[33],cout[33]);
	FA F_Add30(sum[33],cout[31],cout[32],sum[34],cout[34]);
	assign C[10] = sum[34];
	
	//Bit 11
	FA F_Add31(A[5]&B[6],cout[33],cout[34],sum[35],cout[35]);
	assign C[11] = sum[35];
	
	//Bit 12
	assign C[12] = t^cout[35];
endmodule
