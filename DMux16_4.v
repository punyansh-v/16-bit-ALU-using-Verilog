`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 09:40:44
// Design Name: 
// Module Name: DMux16_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DMux16_4(I,SEL,A0,A1,A2,A3);
input [15:0] I;
input [1:0] SEL;
output [15:0] A0,A1,A2,A3;

wire [15:0] a10,a32;
DMux16 a (I,SEL[1],a10,a32);
DMux16 b1(a10,SEL[0],A0,A1);
DMux16 b2(a32,SEL[0],A2,A3);

endmodule
