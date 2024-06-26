`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 09:51:54
// Design Name: 
// Module Name: sim1_pc
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


module sim1_pc(
    );
reg clk,jmp;
wire [3:0]pc;
reg [3:0]offset;
pc testing(offset,clk,jmp,pc);

initial
begin
clk = 1;
jmp = 0;
offset = 5;
#5 clk = 0;
jmp = 0;
offset = 9;
#5 clk = 1;
jmp = 0;
offset = 9;
#5 clk = 0;
#5 clk = 1;
jmp = 1;
offset = 11;
#5 clk = 0;

end
endmodule
