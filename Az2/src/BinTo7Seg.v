`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:31 10/06/2019 
// Design Name: 
// Module Name:    BinTo7Seg 
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
module BinTo7Seg(i, j);
    input [3:0] i;
    output [6:0] j;
	 assign j = (i==0) ? 7'b0111111 :
					(i==1) ? 7'b0000110 :
					(i==2) ? 7'b1011011 :
					(i==3) ? 7'b1001111 :
					(i==4) ? 7'b1100110 :
					(i==5) ? 7'b1101101 :
					(i==6) ? 7'b1111101 :
					(i==7) ? 7'b0000111 :
					(i==8) ? 7'b1111111 :
					(i==9) ? 7'b1101111 :
					(i==10) ? 7'b1110111 :
					(i==11) ? 7'b1111100 :
					(i==12) ? 7'b0111001 :
					(i==13) ? 7'b1011110 :
					(i==14) ? 7'b1111001 :
					7'b1110001 ;
endmodule
