`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 08:56:41
// Design Name: 
// Module Name: 4Mux16
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


module Mux16_4(
    input [15:0] A0,
    input [15:0] A1,
    input [15:0] A2,
    input [15:0] A3,
    input [1:0] SEL,
    input [15:0] O
    );
    
    Mux16 m1(A0,A1,SEL[0],A);
    Mux16 m2(A2,A3,SEL[0],B);
    Mux16 m3(A,B,SEL[1],O);
endmodule
