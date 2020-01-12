`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:25 09/29/2019 
// Design Name: 
// Module Name:    Adder4bit 
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
module Adder4bit(m, n, c, z);
    input [3:0] m;
    input [3:0] n;
    input c;
    output [3:0] z;
	 assign z = (c == 1) ? m + n : m;

endmodule
