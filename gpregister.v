`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 10:59:23
// Design Name: 
// Module Name: gpregister
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


module gpregister(
    input clk,
    input reset,
    input wire [2:0] in1_add,
    input wire [2:0] in2_add,
    input wire [2:0] destination_add,
    input wire [7:0] data_in,
    output reg [7:0] out_1,
    output reg [7:0] out_2
    );
    
wire [7:0] GPR0_out;
wire [7:0] GPR1_out;
wire [7:0] GPR2_out;
wire [7:0] GPR3_out;
wire [7:0] GPR4_out;
wire [7:0] GPR5_out;
wire [7:0] GPR6_out;
wire [7:0] GPR7_out;

 register_8bits GPR0 (
    .reset(reset),
    .read((destination_add == 3'b000) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR0_out) 
);
 register_8bits GPR1 (
    .reset(reset),
    .read((destination_add == 3'b001) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR1_out) 
);
 register_8bits GPR2 (
    .reset(reset),
    .read((destination_add == 3'b010) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR2_out) 
);
 register_8bits GPR3 (
    .reset(reset),
    .read((destination_add == 3'b011) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR3_out) 
);
 register_8bits GPR4 (
    .reset(reset),
    .read((destination_add == 3'b100) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR4_out) 
);
 register_8bits GPR5 (
    .reset(reset),
    .read((destination_add == 3'b101) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR5_out) 
);
 register_8bits GPR6 (
    .reset(reset),
    .read((destination_add == 3'b110) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR6_out) 
);
 register_8bits GPR7 (
    .reset(reset),
    .read((destination_add == 3'b111) ? 1'b1 : 1'b0),
    .CLK(clk),
     .D(data),
    .Q(GPR7_out) 
);

always @(*) begin
        case(in1_add)
            3'b000:
                out_1 = GPR0_out;
            3'b001:
                out_1 = GPR1_out;
            3'b010:
                out_1 = GPR2_out;
            3'b011:
                out_1 = GPR3_out;
            3'b100:
                out_1 = GPR4_out;
            3'b101:
                out_1 = GPR5_out;
            3'b110:
                out_1 = GPR6_out;
            3'b111:
                out_1 = GPR7_out;
            default:
                out_1 = 8'bzzzzzzzz;                                      
         endcase
         
         case(in2_add)
            3'b000:
                out_2 = GPR0_out;
            3'b001:
                out_2 = GPR1_out;
            3'b010:
                out_2 = GPR2_out;
            3'b011:
                out_2 = GPR3_out;
            3'b100:
                out_2 = GPR4_out;
            3'b101:
                out_2 = GPR5_out;
            3'b110:
                out_2 = GPR6_out;
            3'b111:
                out_2 = GPR7_out;
             default:
                out_2 = 8'bzzzzzzzz;
                                                    
         endcase
end
endmodule
