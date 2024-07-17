`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 10:28:15
// Design Name: 
// Module Name: DMux16_8
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


module DMux16_8(I,SEL,A0,A1,A2,A3,A4,A5,A6,A7);
input [15:0] I;
input [2:0] SEL;
output [15:0] A0,A1,A2,A3,A4,A5,A6,A7;

wire [15:0] A,B;

DMux16 a(I,SEL[2],A,B);
DMux16_4 b1(A,SEL[1:0],A0,A1,A2,A3);
DMux16_4 b2(B,SEL[1:0],A4,A5,A6,A7); 

endmodule
