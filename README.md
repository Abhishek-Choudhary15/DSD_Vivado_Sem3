# DSD_Vivado_Sem3

Basic Gates:-

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

Test bench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 09:52:13
// Design Name: 
// Module Name: tb_basic_gates
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


module tb_basic_gates(

    );
    reg a,b;
    wire and_gate,or_gate,
     not_gate,
     nand_gate,
     nor_gate,
    xor_gate,
     xnor_gate;
     
     basic_gates uut(a,b,and_gate,or_gate,
     not_gate,
     nand_gate,
     nor_gate,
    xor_gate,
     xnor_gate);
     
     initial begin 
     a=0; b=0; #10;
     a=0; b=1; #10;
     a=1; b=0; #10;
     a=1; b=1; #10;
     $finish;
     end
Endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 144615" src="https://github.com/user-attachments/assets/3b40cae8-2f6c-4674-9f7f-adf3c1390a91" />

Elaborated Design:
<img width="1919" height="1076" alt="Screenshot 2025-11-17 144744" src="https://github.com/user-attachments/assets/77cdd025-ea19-4121-b944-b122003e9c3c" />

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Boolean Expression:-

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

Testbench:

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

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 145219" src="https://github.com/user-attachments/assets/6d0ec47b-34de-4626-aa18-6d532fe92b21" />

Elaborated Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 145315" src="https://github.com/user-attachments/assets/93c48706-f631-490a-9ea7-1f43228934fd" />



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Half Adder:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:39:31
// Design Name: 
// Module Name: half_adder
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


module half_adder(
    input a,b,
    output sum, carry
    );
    assign sum=(a&(~b))|(b&(~a));
    assign carry=a&b;
endmodule

Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:43:35
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder(
      
    );
     reg a,b;
     wire sum,carry;
     
     half_adder uut(a,b,sum,carry);
     
     initial begin
      
      a=0; b=0; #10;
      a=0; b=1; #10;
      a=1; b=0; #10;
      a=1; b=1; #10;
      
      $finish;
      end
     
endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 145730" src="https://github.com/user-attachments/assets/8d4427ad-0de8-44a8-ac36-bbad05b4a8c4" />


Elaborated Design:
<img width="1919" height="1071" alt="Screenshot 2025-11-17 145814" src="https://github.com/user-attachments/assets/51ec0507-7a1c-4cd9-addb-66875a5e7803" />


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Half Subtractor:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:47:12
// Design Name: 
// Module Name: half_subtractor
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


module half_subtractor(
    input a,b,
    output diff, borrow
    );
    assign diff=(a&(~b))|(b&(~a));
    assign borrow=(b&(~a));
endmodule

Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:49:25
// Design Name: 
// Module Name: tb_half_subtractor
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


module tb_half_subtractor(

    );
    reg a,b;
    wire diff, borrow;
    
    half_subtractor uut(a,b,diff,borrow);
    
    initial begin
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
    end
endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 150259" src="https://github.com/user-attachments/assets/21b573f6-1613-49ca-89a5-8a6a041397dd" />

Elaborated Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 150335" src="https://github.com/user-attachments/assets/7fa1362c-159a-4b60-a6ba-b03ea1f18fd8" />


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MUX 2to1:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:06:07
// Design Name: 
// Module Name: mux2to1
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


module mux2to1(
    input a,b,sel,
    output y
    );
    assign y=sel?b:a;
endmodule

Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:07:00
// Design Name: 
// Module Name: tb_mux2to1
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


module tb_mux2to1(

    );
    reg a,b, sel;
    wire y;
    
    mux2to1 uut(a,b,sel,y);
    
    initial begin
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
    end
    
endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 150811" src="https://github.com/user-attachments/assets/c963d296-3f20-4a8c-82f6-888526f76d89" />

Elaborated Design:
<img width="1919" height="1077" alt="Screenshot 2025-11-17 150851" src="https://github.com/user-attachments/assets/a0a5cdae-e2c7-435c-a4eb-f9b7f95fb815" />


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Priority Encoder:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:10:33
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
       input d3, d2, d1, d0,
       output reg y1, y0,
       output reg valid
    );
    
    always @(*) begin
       if (d3) begin
          y1=1'b1; y0=1'b1; valid=1'b1;
       end
       else if (d2) begin
          y1=1'b1; y0=1'b0; valid=1'b1;
       end
       else if (d1) begin
          y1=1'b0; y0=1'b0; valid=1'b1;
       end
       else if (d0) begin
          y1=1'b0; y0=1'b0; valid=1'b1;
       end
       else begin
          y1=1'b0; y0=1'b0; valid=1'b0;
       end
    end
                    
Endmodule

Testbench:

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

Simulation:
<img width="1919" height="1072" alt="Screenshot 2025-11-17 151325" src="https://github.com/user-attachments/assets/faa5540a-2b6e-4926-b415-b0cdb6c31d69" />

Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 151405" src="https://github.com/user-attachments/assets/b7d7dd1c-3c76-4a74-a5ca-e03b3e5b222d" />

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Priority Decoder:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:31:52
// Design Name: 
// Module Name: priority_decoder
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


module priority_decoder(
    input d3,d2,d1,d0,
    output reg y1,
    output reg y0,
    output reg valid
    );
    
    always @(*) begin
        if (d3) begin
            y1 = 1'b1; y0 = 1'b1; valid = 1'b1;   
        end
        else if (d2) begin
            y1 = 1'b1; y0 = 1'b0; valid = 1'b1;  
        end
        else if (d1) begin
            y1 = 1'b0; y0 = 1'b1; valid = 1'b1;   
        end
        else if (d0) begin
            y1 = 1'b0; y0 = 1'b0; valid = 1'b1;   
        end
        else begin
            y1 = 1'b0; y0 = 1'b0; valid = 1'b0;   
        end
    end
endmodule

Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:33:31
// Design Name: 
// Module Name: tb_priority_decoder
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


module tb_priority_decoder(

    );
    reg d3,d2,d1,d0;
    wire y1,y0,valid;
    
    priority_decoder uut(d3,d2,d1,d0,y1,y0,valid);
    
     initial begin
        d3=0; d2=0; d1=0; d0=0; #10;
        d3=0; d2=0; d1=0; d0=1; #10;
        d3=0; d2=0; d1=1; d0=0; #10;
        d3=0; d2=1; d1=0; d0=0; #10;
        d3=1; d2=0; d1=0; d0=0; #10;

        $finish;
    end
Endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 151845" src="https://github.com/user-attachments/assets/ce3d1d72-9b74-493b-8e9f-293380697d7b" />

Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 151919" src="https://github.com/user-attachments/assets/7ea06bfb-0b0a-4421-af93-2192ab6c781a" />

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Full Adder:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:52:48
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,b,cin,
    output sum,cout
    );
    
    assign sum=a^b^cin;
    assign cout=(a&b)|(cin&(a^b));
endmodule

Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:54:39
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder(

    );
    reg a,b,cin;
    wire sum,cout;
    
    full_adder uut(a,b,cin,sum,cout);
    
    initial begin
     a=0; b=0; cin=0; #10;
     a=0; b=0; cin=1; #10;
     a=0; b=1; cin=0; #10;
     a=0; b=1; cin=1; #10;
     a=1; b=0; cin=0; #10;
     a=1; b=0; cin=1; #10;
     a=1; b=1; cin=0; #10;
     a=1; b=1; cin=1; #10;
     $finish;
     end
     
endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 152355" src="https://github.com/user-attachments/assets/cf724006-cca1-4c6d-95c7-fb43c7f2fa2d" />


Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 152429" src="https://github.com/user-attachments/assets/6b23f423-0b88-47ec-b343-0a804a5d1744" />


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Full Subtractor:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 15:06:38
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input a,b,bin,
    output diff,borrow
    );
    assign diff=bin^a^b;
    assign borrow=bin&(~(a^b))|(~a)&b;
endmodule

Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 13:11:57
// Design Name: 
// Module Name: tb_full_subtractor
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


module tb_full_subtractor(

    );
     reg a,b,bin;
    wire diff, borrow;
    
    full_subtractor uut(
     a, b, bin, diff, borrow);
     
     initial begin
      a=0; b=0; bin=0; #10;
      a=0; b=0; bin=1; #10;
      a=0; b=1; bin=0; #10;
      a=0; b=1; bin=1; #10;
      a=1; b=0; bin=0; #10;
      a=1; b=0; bin=1; #10;
      a=1; b=1; bin=0; #10;
      a=1; b=1; bin=1; #10;
     $finish;
     end
endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 152833" src="https://github.com/user-attachments/assets/e6b7206b-bb36-4716-ac4e-53702f8c920f" />


Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 152907" src="https://github.com/user-attachments/assets/3550c3ce-bae9-44f6-8591-ce75fb5dd3f0" />

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SR Latch:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 13:15:37
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input s,r,
    output q,qbar
    );
    assign q=~(s&qbar);
    assign qbar=~(r&q);
endmodule

Testbench:

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
Endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 153252" src="https://github.com/user-attachments/assets/756af11e-076a-496a-b028-b7eb61ca5e11" />

Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 153327" src="https://github.com/user-attachments/assets/4d9d3e78-0dbc-4c10-8510-9cbb18525fbf" />

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SR Flip Flop:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 15:31:29
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(
    input s,r,clk,
    output q, qbar
    );
    wire sg, rg;
    assign #1 sg=(~(s&(clk)));
    assign #1 rg=(~(r&(clk)));
    assign #1 q=(~(sg&qbar));
    assign #1 qbar=(~(rg&q));
endmodule


Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 15:36:23
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
    
     sr_flipflop uut(s,r,q,qbar,clk);                                                                  
    
    
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


Elaborated Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 154211" src="https://github.com/user-attachments/assets/84c1a626-3765-4bcd-8b57-e3b63f49ac4e" />

Simulation:





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Mux 4to1:-

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


Testbench:

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

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 155051" src="https://github.com/user-attachments/assets/4d6281e3-18ea-43b2-b775-e3c447fe74d2" />

Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-17 155304" src="https://github.com/user-attachments/assets/e0e4ec14-fc4d-44ef-bf1e-9d2926799791" />

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Universal Adder and Subtractor:-


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 08:40:15
// Design Name: 
// Module Name: universal_adder_subtractor
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


module universal_adder_subtractor(
    input a0, a1, a2, a3, b0, b1, b2, b3,m,
    output c4, s0, s1, s2, s3, v
    );
    assign c0= m;
    assign s0= a0^(b0^m)^c0;
    assign c1= (a0 & (b0^m))| (c0&(a0^(b0^m)));
    assign s1= a1^(b1^m)^c1;
    assign c2= (a1&(b1^m))| (c1&(a1^(b1^m)));
    assign s2= a2^(b2^m)^c2;
    assign c3= (a2&(b2^m))| (c2&(a2^(b2^m)));
    assign s3= a3^(b3^m)^c3;
    assign c4= (a3&(b3^m))| (c3&(a3^(b3^m)));
    assign v=c3^c4;
      
endmodule


Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 08:50:26
// Design Name: 
// Module Name: tb_universal_adder_subtractor
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


module tb_universal_adder_subtractor(

    );
    reg a0,a1,a2,a3,b0,b1,b2,b3,m;
    wire c4,s0,s1,s2,s3,v;
    
    universal_adder_subtractor uut(a0, a1,a2,a3, b0,b1,b2,b3,m,c4,s0,s1,s2,s3,v);
     task display_result;
        begin
            $display("Time=%0t | A=%b%b%b%b  B=%b%b%b%b  M=%b | Result = %b%b%b%b Cout=%b Overflow=%b",
                     $time, a3,a2,a1,a0, b3,b2,b1,b0, m,
                     s3,s2,s1,s0, c4, v);
        end
    endtask

    initial begin
        $display("---- UNIVERSAL ADDER/SUBTRACTOR TEST ----");
    
    {a3,a2,a1,a0} = 4'b0101; 
        {b3,b2,b1,b0} = 4'b0011;
        m = 0; #10; display_result();
        
      {a3,a2,a1,a0} = 4'b0101; 
        {b3,b2,b1,b0} = 4'b0011;
        m = 1; #10; display_result();
      
      {a3,a2,a1,a0} = 4'b1100; 
        {b3,b2,b1,b0} = 4'b0111;
        m = 0; #10; display_result();
      
      {a3,a2,a1,a0} = 4'b0100; 
        {b3,b2,b1,b0} = 4'b1001;
        m = 1; #10; display_result();
       
        {a3,a2,a1,a0} = 4'b1000; 
        {b3,b2,b1,b0} = 4'b1000;
        m = 1; #10; display_result();

        $stop;
    end
      
Endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-19 085840" src="https://github.com/user-attachments/assets/59ec2a55-a9fd-45cd-8b67-c008932c5853" />

Elaborate Design:
<img width="1919" height="1076" alt="Screenshot 2025-11-19 085947" src="https://github.com/user-attachments/assets/aa22ddbf-8646-495b-afc1-db091f2dea45" />


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

D_flip_flop:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 09:33:03
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input d,clk,
    output q,q_bar
    );
    wire d_g, d_bar_g;
    
    assign #1 d_g = (~(d&(clk)));
    assign #1 d_bar_g = (~((~d)&(clk)));
    assign #1 q = (~((d_g)&(q_bar)));
    assign #1 q_bar = (~((d_bar_g)&q));

endmodule

Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 09:38:23
// Design Name: 
// Module Name: tb_d_flip_flop
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


module tb_d_flip_flop(

    );
      reg d, clk;
    wire dg, d_bar_g, q, q_bar;
    
    d_flip_flop uut(d, clk, q, q_bar);
    
    initial
    begin
    clk=0;
    forever
    #5 clk =~clk;
    end
    
    initial
    begin
        d=0;
    #10 d=1;
    #10
    $finish;
   end
   
endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-19 094728" src="https://github.com/user-attachments/assets/18e0a49e-a884-4664-89a5-cbd94de9f2d4" />



Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-19 094829" src="https://github.com/user-attachments/assets/f8c02f05-f4fc-4e09-9cd6-802af2d8696b" />

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

JK Flip Flop:-

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 09:42:50
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input j, k, clk,
    output q, q_bar
    );
    wire j_g, k_g;
    
    assign #1 j_g=(~(j&(clk)));
    assign #1 k_g=(~(k&(clk)));
    assign #1 q =(~((j_g)&(q_bar)));
    assign #1 q_bar=(~((k_g)&q));

Endmodule


Testbench:

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 09:44:03
// Design Name: 
// Module Name: tb_jk_flip_flop
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


module tb_jk_flip_flop(

    );
     
    reg j,k,clk;
    wire j_g, k_g,q,q_bar;
    
    jk_flip_flop uut(j,k,clk,q,q_bar);                                                                  
    
    initial begin 
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin    
        j=0; k=1; #10;
        j=1; k=0; #10;
        j=0; k=0; #10;
        j=1; k=1; #10;
    $finish;
    end

endmodule

Simulation:
<img width="1919" height="1079" alt="Screenshot 2025-11-19 095321" src="https://github.com/user-attachments/assets/8f017641-8eba-4836-9c07-3af6f9237993" />

Elaborate Design:
<img width="1919" height="1079" alt="Screenshot 2025-11-19 095411" src="https://github.com/user-attachments/assets/0cedccf1-2750-4fc3-a37d-9a111a225a0a" />


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



