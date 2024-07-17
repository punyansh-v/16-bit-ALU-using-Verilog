`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 09:12:51
// Design Name: 
// Module Name: Mux16_8
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


module Mux16_8(A0,A1,A2,A3,A4,A5,A6,A7,SEL,O);
    input [15:0] A0,A1,A2,A3,A4,A5,A6,A7;
    input [2:0] SEL;
    input [15:0] O;
    
    Mux16_4 m1(A0,A1,A2,A3,SEL[1:0],A);
    Mux16_4 m2(A4,A5,A6,A7,SEL[1:0],B);
    Mux16 m(A,B,SEL[2],O);
endmodule
