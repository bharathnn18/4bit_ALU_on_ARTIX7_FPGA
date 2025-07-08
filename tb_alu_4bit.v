`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 13:48:50
// Design Name: 
// Module Name: tb_alu_4bit
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



module tb_alu_4bit;
    reg [3:0] a, b;
    reg [2:0] sel;
    wire [3:0] y;

    alu_4bit uut (
        .a(a), .b(b), .sel(sel), .y(y)
    );

    initial begin
        a = 4'd5; b = 4'd3;
        sel = 3'b000; #10;  // add
        sel = 3'b001; #10;  // sub
        sel = 3'b010; #10;  // and
        sel = 3'b011; #10;  // or
        sel = 3'b100; #10;  // xor
        $finish;
    end
endmodule