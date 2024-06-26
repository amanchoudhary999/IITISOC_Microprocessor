`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 09:46:48
// Design Name: 
// Module Name: pc
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


module pc (offset,clk,jmp,pc);
    input [3:0] offset;
    input clk,jmp;
    output reg [3:0] pc= 0;
  
    always @ (posedge clk)
        if (jmp)
            pc <= pc + offset;
        else
            pc <= pc + 1;
endmodule
