`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:53 02/03/2020 
// Design Name: 
// Module Name:    FSM 
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
module FSM(a,b,clk,enter,exit);

	input a,b,clk;
	output reg enter,exit;
	reg [2:0] last_state=3'b000,next_state;
	parameter [2:0] A=3'b000,B=3'b010,C=3'b011,D=3'b001,E=3'b101,F=3'b111,G=3'b110;
	always@(a,b,last_state)
	begin
		case(last_state)
			A:if({a,b}==2'b00)
				begin
					next_state=A;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b01)
				begin
					next_state = E;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b11)
				begin
					next_state = A;
					{enter,exit} = 2'b00;
				end
				else
				begin
					next_state = B;
					{enter,exit} = 2'b00;
				end
			B:if({a,b}==2'b00)
				begin
					next_state=A;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b01)
				begin
					next_state = B;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b11)
				begin
					next_state = C;
					{enter,exit} = 2'b00;
				end
				else
				begin
					next_state = B;
					{enter,exit} = 2'b00;
				end
			C:if({a,b}==2'b00)
				begin
					next_state=C;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b01)
				begin
					next_state = D;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b11)
				begin
					next_state = C;
					{enter,exit} = 2'b00;
				end
				else
				begin
					next_state = B;
					{enter,exit} = 2'b00;
				end
			D:if({a,b}==2'b00)
				begin
					next_state=A;
					{enter,exit} = 2'b10;
				end
				else if({a,b}==2'b01)
				begin
					next_state = D;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b11)
				begin
					next_state = C;
					{enter,exit} = 2'b00;
				end
				else
				begin
					next_state = D;
					{enter,exit} = 2'b00;
				end
			E:if({a,b}==2'b00)
				begin
					next_state=A;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b01)
				begin
					next_state = E;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b11)
				begin
					next_state = F;
					{enter,exit} = 2'b00;
				end
				else
				begin
					next_state = E;
					{enter,exit} = 2'b00;
				end
			F:if({a,b}==2'b00)
				begin
					next_state=F;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b01)
				begin
					next_state = E;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b11)
				begin
					next_state = F;
					{enter,exit} = 2'b00;
				end
				else
				begin
					next_state = G;
					{enter,exit} = 2'b00;
				end
			default:if({a,b}==2'b00)
				begin
					next_state=A;
					{enter,exit} = 2'b01;
				end
				else if({a,b}==2'b01)
				begin
					next_state = G;
					{enter,exit} = 2'b00;
				end
				else if({a,b}==2'b11)
				begin
					next_state = F;
					{enter,exit} = 2'b00;
				end
				else
				begin
					next_state = G;
					{enter,exit} = 2'b00;
				end
		endcase
	end
	
	always@(posedge clk)
		last_state <= next_state;

endmodule
