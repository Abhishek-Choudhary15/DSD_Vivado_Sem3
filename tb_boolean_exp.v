`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 09:59:10
// Design Name: 
// Module Name: tb_boolean_exp
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


module tb_boolean_exp(

    );
    reg a,b,c;
    wire f1, f2, f3;
    
    boolean_exp uut(a,b,c,f1,f2,f3);
    
    initial begin
    a=0; b=0; c=0; #10;
    a=0; b=1; c=0; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=1; #10;
    $finish;
    end
endmodule
