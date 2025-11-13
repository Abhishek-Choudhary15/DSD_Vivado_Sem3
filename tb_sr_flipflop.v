`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 13:21:31
// Design Name: 
// Module Name: tb_sr_flipflop
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


module tb_sr_flipflop(

    );
    reg s,r,clk;
    wire q, qbar;
    wire sg, rg;
    
     sr_flipflop uut(s,r,q,qbar,sg,rg);                                                                  
    
    
    initial begin 
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin 
    
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=1; r=0; #10;
        s=1; r=1; #10;
    
     
    $finish;
    end
    
endmodule
