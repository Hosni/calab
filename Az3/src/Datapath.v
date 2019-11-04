`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:42 10/20/2019 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath(i, l1, l2, l3, cl, f, x1, x2, x3);
    input [3:0] i;
    input l1;
    input l2;
    input l3;
    input cl;
    input f;
    output [6:0] x1;
    output [6:0] x2;
    output [6:0] x3;
	wire [3:0] p1;
	wire [3:0] p2;
	wire [3:0] p3;
	wire [3:0] p4;
	Reg4bit R1(i, cl, l1, p1);
	Adder4bit a(p1, p2, f, p4);
	BinTo7Seg b1(p1, x1);
	Reg4bit R2(p3, cl, l2, p2);
	BinTo7Seg b2(p2, x2);
	Reg4bit R3(p4, cl, l3, p3);
	BinTo7Seg b3(p3, x3);
endmodule
