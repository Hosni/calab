`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:56:36 10/06/2019 
// Design Name: 
// Module Name:    newHD 
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
module newHD(x, y, z);
    input [3:0] x;
    input [3:0] y;
    output [6:0] z;
	 wire [3:0] t;
	 Adder4bit a(x, y, t);
	 BinTo7Seg b(t, z);

endmodule
