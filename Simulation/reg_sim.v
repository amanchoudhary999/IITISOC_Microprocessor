`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 11:21:18
// Design Name: 
// Module Name: reg_sim
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


module reg_sim(

    );
    reg reset,read,clk;
    reg [7:0]D;
    wire [7:0]Q;
    register_8bits test(reset,read,clk,D,Q);
    initial begin
    clk = 1;
    reset = 0;
    read = 0;
    D = 7;
    
    #5 clk = 0;
    D = 9;
    read = 1;
    #5 clk = 1;
    D = 8'b01001100;
#5 clk = 0;
#5 clk =1;
D = 6;    

    end
endmodule
