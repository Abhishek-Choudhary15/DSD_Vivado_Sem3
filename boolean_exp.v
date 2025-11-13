`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 09:57:09
// Design Name: 
// Module Name: boolean_exp
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


module boolean_exp(
    input a,b,c,
    output f1,f2,f3
    );
    
    assign f1=(a&b)|(~a&c);
    assign f2=(~a&~b)|(b&c);
    assign f3=(a^b)&c;
endmodule
