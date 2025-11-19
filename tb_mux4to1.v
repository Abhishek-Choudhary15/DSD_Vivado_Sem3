`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 15:48:55
// Design Name: 
// Module Name: tb_mux4to1
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


module tb_mux4to1(

    );
    reg [3:0] in;
    reg [1:0] sel;
    wire y;

    mux4to1 uut (in, sel, y);
    initial begin
    $monitor("Time=%0t | sel=%b | in=%b | y=%b", $time, sel, in, y);

    in = 4'b1101; sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

endmodule
