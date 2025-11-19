`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 15:45:47
// Design Name: 4x1 Multiplexer
// Module Name: mux4to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 4-to-1 multiplexer implemented using dataflow modeling.
// 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module mux4to1(
    input [3:0] in,          
    input [1:0] sel,         
    output y                 
);

    
    assign y = (sel == 2'b00) ? in[0] :
               (sel == 2'b01) ? in[1] :
               (sel == 2'b10) ? in[2] :
                                in[3];

endmodule
