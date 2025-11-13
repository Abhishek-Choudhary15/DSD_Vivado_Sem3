`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:18:43
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder(

    );
    reg d3,d2,d1,d0;
    wire y1,y0,valid;
    
    priority_encoder uut(d3,d2,d1,d0,y1,y0,valid);
    
    initial begin
          d3=0; d2=0; d1=0; d0=0; #10;
    
          d3=0; d2=0; d1=0; d0=1; #10;

          d3=0; d2=0; d1=1; d0=0; #10;

          d3=0; d2=1; d1=0; d0=0; #10;

          d3=1; d2=0; d1=0; d0=0; #10;
         
         $finish;
         end
         
endmodule
