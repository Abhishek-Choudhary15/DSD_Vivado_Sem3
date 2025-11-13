`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 09:43:34
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
      input a,b,and_gate,or_gate,not_gate,nand_gate,nor_gate,xor_gate,xnor_gate
    );
    
    assign and_gate = a&b;
    assign or_gate = a|b;
    assign not_gate = ~a;
    assign nand_gate = ~(a&b);
    assign nor_gate = ~(a|b);
    assign xor_gate = a^b;
    assign xnor_gate = ~(a^b);
endmodule
