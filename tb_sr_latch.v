`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 13:17:10
// Design Name: 
// Module Name: tb_sr_latch
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


module tb_sr_latch(

    );
    reg s,r;
    wire q,qbar;
    
    sr_latch uut(s,r,q,qbar);
    
    initial begin
    
    s=0; r=0; #10;
    s=0; r=1; #10;
    s=1; r=0; #10;
    s=1; r=1; #10;
    
    $finish;
    end
endmodule
