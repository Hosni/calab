`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:59 11/03/2019 
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
module Main(x, l1, l2, clk, s1, s2, f, z1, z2);
    input [3:0] x;
    input l1;
    input l2;
    input clk;
    input [1:0] s1;
    input [1:0] s2;
    input f;
    output [6:0] z1;
    output [6:0] z2;
	wire [3:0] aluWire;
	wire [3:0] bus1Wire;
	wire [3:0] bus2Wire;
	wire [3:0] R1Wire;
	wire [3:0] R2Wire;
	wire [3:0] nullWire;
	Reg4bit R1(aluWire, clk, l1, R1Wire);
	Reg4bit R2(aluWire, clk, l2, R2Wire);
	MUX4x1 Bus1(x, R1Wire, R2Wire, nullWire, s1, bus1Wire);
	MUX4x1 Bus2(x, R1Wire, R2Wire, nullWire, s2, bus2Wire);
	BinTo7Seg b1(R1Wire, z1);
	BinTo7Seg b2(R2Wire, z2);
	Adder4bit ALU(bus1Wire, bus2Wire, f, aluWire);
endmodule
