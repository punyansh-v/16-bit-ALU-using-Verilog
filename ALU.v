`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2024 09:11:23
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [15:0] x,
    input [15:0] y,
    input zx,//sets x=0,if 1
    input nx,//bitwise not x, if 1
    input zy,//sets y=0, if 1
    input ny,// bitwise not y, if 1
    input f,// if 1, x+y(addition), else x&y(bitwise and)
    input no,// bitwise not the output of f, if 1
    output [15:0] out,
    output zr,// 1, if output=0
    output ng//1, if output<0
    );
    
    wire[15:0] ZX,ZY,X,Y,S,fOut;
    Mux16 Mzx(x,0,zx,ZX);// selection of zeroing x
    Mux16 Mnx(ZX,~ZX,nx,X);// selection of bitwise NOTing x
    Mux16 Mzy(y,0,zy,ZY);// selection of zeroing y
    Mux16 Mny(ZY,~ZY,ny,Y);// selection of bitwise NOTing y
    Adder16 add(X,Y,S);// Adds both output after folowing above 4 steps
    Mux16 Mfunc(X&Y,S,f,fOut);// selection of operation
    Mux16 nO(fOut,~fOut,no,out);// Selection of bitwise NOTing outpur
    assign ng=out[15];
    assign 
    zr=~(out[0]|out[1]|out[2]|out[3]|out[4]|out[5]|out[6]|out[7]|out[8]|out[9]|out[10]|out[11]|out[12]|out[13]|out[14]|out[15]);   
endmodule
