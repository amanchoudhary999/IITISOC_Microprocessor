`timescale 1ns / 1ps

module Memory(
    input clk,
    input write_en,
    input read_en,
    input [7:0] add,
    input [7:0] data_in,
    output reg [7:0] data_out    
);

    reg [7:0] memory [0:255];
    
    always @(posedge clk)
        begin
        data_out = 8'bxxxxxxxx;
        if(write_en)
         memory[add] <= data_in;
        if(read_en)
         data_out <= memory[add];
        end
endmodule

