`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:24:53 01/14/2020 
// Design Name: 
// Module Name:    BitReverse 
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
module BitReverse(I,O,select);

	input [31:0] I;
	input select;
	output [31:0] O;
	
	MUX2_1 m0 (I[31], I[0], O[0], select);
	MUX2_1 m1 (I[30], I[1], O[1], select);
	MUX2_1 m2 (I[29], I[2], O[2], select);
	MUX2_1 m3 (I[28], I[3], O[3], select);
	MUX2_1 m4 (I[27], I[4], O[4], select);
	MUX2_1 m5 (I[26], I[5], O[5], select);
	MUX2_1 m6 (I[25], I[6], O[6], select);
	MUX2_1 m7 (I[24], I[7], O[7], select);
	MUX2_1 m8 (I[23], I[8], O[8], select);
	MUX2_1 m9 (I[22], I[9], O[9], select);
	MUX2_1 m10 (I[21], I[10], O[10], select);
	MUX2_1 m11 (I[20], I[11], O[11], select);
	MUX2_1 m12 (I[19], I[12], O[12], select);
	MUX2_1 m13 (I[18], I[13], O[13], select);
	MUX2_1 m14 (I[17], I[14], O[14], select);
	MUX2_1 m15 (I[16], I[15], O[15], select);
	MUX2_1 m16 (I[15], I[16], O[16], select);
	MUX2_1 m17 (I[14], I[17], O[17], select);
	MUX2_1 m18 (I[13], I[18], O[18], select);
	MUX2_1 m19 (I[12], I[19], O[19], select);
	MUX2_1 m20 (I[11], I[20], O[20], select);
	MUX2_1 m21 (I[10], I[21], O[21], select);
	MUX2_1 m22 (I[9], I[22], O[22], select);
	MUX2_1 m23 (I[8], I[23], O[23], select);
	MUX2_1 m24 (I[7], I[24], O[24], select);
	MUX2_1 m25 (I[6], I[25], O[25], select);
	MUX2_1 m26 (I[5], I[26], O[26], select);
	MUX2_1 m27 (I[4], I[27], O[27], select);
	MUX2_1 m28 (I[3], I[28], O[28], select);
	MUX2_1 m29 (I[2], I[29], O[29], select);
	MUX2_1 m30 (I[1], I[30], O[30], select);
	MUX2_1 m31 (I[0], I[31], O[31], select);

endmodule
