`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:56 10/13/2019 
// Design Name: 
// Module Name:    Reg4bit 
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
module Reg4bit(i, cl, ld, q);
    input [3:0] i;
    input cl;
    input ld;
    output reg [3:0] q;
	always @(posedge cl)
	begin
		if (ld == 1)
			q = i;
	end

endmodule
