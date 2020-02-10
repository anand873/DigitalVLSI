`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:06:52 02/04/2020
// Design Name:   Main
// Module Name:   D:/Xilinx/ParkingLot/Main_Test.v
// Project Name:  ParkingLot
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Main_Test;

	// Inputs
	reg clk;
	reg a;
	reg b;
	
	reg[1:0] AB[44:0];

	// Outputs
	wire [31:0] cout;
	wire enter;
	wire exit;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.clk(clk), 
		.a(a), 
		.b(b), 
		.cout(cout), 
		.enter(enter), 
		.exit(exit)
	);
	
	integer i;
	
	initial begin
	clk = 1;
	forever
		#10 clk = !clk;
	end;
	
	
	
	initial begin
		// Initialize Inputs
		a=0;
		b=0;
		#100;
		
		$readmemb("TestData.txt",AB);
		
		for(i=0;i<44;i=i+1)
		begin
			{a,b} = AB[i];
			#20;
		end
		
		// Add stimulus here

	end
      
endmodule

