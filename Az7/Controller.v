`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:40 12/01/2019 
// Design Name: 
// Module Name:    Controller 
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
module Controller(clk, l1, l2, l3, l4, s1, s2, f, r, w);
	input clk;
	output reg l1;
	output reg l2;
	output reg l3;
	output reg l4;
	output reg [2:0] s1;
	output reg [2:0] s2;
	output reg f;
	output reg r;
	output reg w;
	reg [2:0] state;
	initial
		begin
			l1 = 0;
			l2 = 0;
			l3 = 0;
			l4 = 0;
			s1 = 0;
			s2 = 0;
			f = 0;
			w = 0;
			r = 0;
			state = 0;
		end
	always @ (negedge clk)
		begin
			case (state)
			0:
				begin
					l1 = 1;
					state = 1;
				end
			1:
				begin
					l1 = 0;
					l4 = 1;
					state = 2;
				end
			2:
				begin
					l4 = 0;
					w = 1;
					state = 3;
				end
			3:
				begin
					w = 0;
					r = 1;
					f = 1;
					s1 = 1;
					s2 = 3;
					l2 = 1;
					state = 4;
				end
			4:
				begin
					r = 0;
					f = 1;
					l2 = 0;
					s1 = 2;
					s2 = 0;
					l3 = 1;
					state = 0;
				end
			endcase
		end
endmodule
