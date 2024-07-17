`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 09:24:37
// Design Name: 
// Module Name: DMux16
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


module DMux16(
    input [15:0] I,
    input SEL,
    input [15:0] A,
    input [15:0] B
    );
    genvar i;
   for(i=0;i<=15;i=i+1) begin
   assign A[i]=I[i]&(~SEL);
   assign B[i]=I[i]&SEL;
   end
endmodule
