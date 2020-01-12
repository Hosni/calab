`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:35 12/01/2019 
// Design Name: 
// Module Name:    Computer 
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
module Computer(c1 , c2, x, z1, z2, z3, z4);
	input c1,c2;
	input [3:0] x;
	output [6:0] z1;
	output [6:0] z2;
	output [6:0] z3;
	output [6:0] z4;
	wire l1,clk;
	wire l2;
	wire l3;
	wire l4;
	wire w;
	wire r;
	wire f;
	wire [2:0] s1;
	wire [2:0] s2;
	
	Controller cu(clk, l1, l2, l3, l4, s1, s2, f, r, w);
	Main dp(x, l1, l2, l3, l4, clk, s1, s2, f, w, r, z1, z2, z3, z4);
	clkctrl ccc(c1 , c2 , clk);
	
endmodule
