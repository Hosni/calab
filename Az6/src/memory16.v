`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:30 11/17/2019 
// Design Name: 
// Module Name:    memory16 
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
module memory16(x, ad, w, r, y);
    input [3:0] x;
    input [3:0] ad;
    input w;
    input r;
    output [3:0] y;
	 reg[3:0] mem[0:15];
	 always
		begin
			if (w == 1)
				mem[ad] = x;
		end
	 assign y = (r == 1) ? mem[ad] : 4'bz;
endmodule
