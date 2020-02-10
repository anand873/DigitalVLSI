//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:37 01/13/2020 
// Design Name: 
// Module Name:    MUX2_1 
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
module MUX2_1(data1,data0,out,select);

	input select;
	input data1;
	input data0;
	output out;
	
	reg out;
	wire select;
	wire data1;
	wire data0;
	
	always @(select or data1 or data0)
	begin
		case(select)
			0: out = data0;
			1: out = data1;
		endcase
	end
	
endmodule
