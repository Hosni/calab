`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:53 10/13/2019 
// Design Name: 
// Module Name:    Main 
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
module Main(f, g, l, c, q);
    input [3:0] f;
    input [3:0] g;
    input l;
    input c;
    output [6:0] q;
	 wire [3:0] t1;
	 wire [3:0] t2;
	Adder4bit A(f, g, t1);
	Reg4bit R(t1, c, l, t2);
	BinTo7Seg B(t2, q);
endmodule
