`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:34 11/03/2019 
// Design Name: 
// Module Name:    MUX4x1 
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
module MUX4x1(x0, x1, x2, x3, s, y);
    input [3:0] x0;
    input [3:0] x1;
    input [3:0] x2;
    input [3:0] x3;
    input [1:0] s;
    output [3:0] y;
	assign y = (s == 0) ? x0 :
				(s == 1) ? x1 :
				(s == 2) ? x2 :
				x3;

endmodule
