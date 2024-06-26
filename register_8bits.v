`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 11:06:10
// Design Name: 
// Module Name: register_8bits
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


module register_8bits (reset,read, CLK, D, Q);
input reset;
input read;
input CLK;
input [7:0] D;
output reg [7:0] Q;

always @(posedge CLK)
if (reset)
Q = 0;
else
if(read)
Q = D;
endmodule