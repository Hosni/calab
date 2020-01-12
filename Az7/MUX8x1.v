`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:59 11/24/2019 
// Design Name: 
// Module Name:    MUX8x1 
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
module MUX8x1(x0, x1, x2, x3, x4, x5, x6, x7, s, y);
	input [3:0] x0;
	input [3:0] x1;
	input [3:0] x2;
	input [3:0] x3;
	input [3:0] x4;
	input [3:0] x5;
	input [3:0] x6;
	input [3:0] x7;
	input [2:0] s;
	output [3:0] y;
	assign y = (s == 0) ? x0 :
			(s == 1) ? x1 :
			(s == 2) ? x2 :
			(s == 3) ? x3 :
			(s == 4) ? x4 :
			(s == 5) ? x5 :
			(s == 6) ? x6 :
			x7;
endmodule
