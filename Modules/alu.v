`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 12:25:30
// Design Name: 
// Module Name: alu
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


module alu(
    input [7:0] O1,O2,
    input [2:0] opco,
    input clk,
    output [7:0] Result,
    output reg carry,
    output reg sign,
    output reg zero
   );
   
    initial begin
      carry = 0;
      sign = 0;
      zero = 0;
    end
    
    reg [ 7:0] alu_result;
    assign Result = alu_result;
    
    always @ (posedge clk)
    begin
      carry = 0;
      sign = 0;
      zero = 0;
        case(opco)
            3'b001:
                {carry,alu_result} = O1 + O2;
             3'b010 :
                {sign,alu_result} = O1 - O2;
             3'b011 :
                alu_result = O1 & O2;            
             3'b100 :
                alu_result = O1 | O2;         
             3'b101 :
                alu_result = O1 ^ O2; 
             3'b110 :
                alu_result = O1 ~^ O2; 
             3'b111 :
                alu_result = O2;                                         
         endcase
         zero = (alu_result == 0) ? 1 : 0;
         end
endmodule
