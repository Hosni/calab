`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:47 12/01/2019 
// Design Name: 
// Module Name:    clkctrl 
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
module clkctrl(c1, c2, clk);
    input c1;
    input c2;
    output reg clk;

	always @(negedge c2)
	begin
		clk = c1;
	end
endmodule
