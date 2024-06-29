`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 11:38:52
// Design Name: 
// Module Name: mem_sim
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


module mem_sim(
    );
    reg  [7:0]add;
    reg  [7:0]data_in;
    wire [7:0]data_out;
    reg power;
    reg write;
    reg read;
    reg ir_en;
    wire [7:0] ir_out;
    
    Memory test_mem(power,write,read,ir_en,add,data_in,data_out,ir_out);
    
    initial 
    begin
        power = 1;
        
        write = 0;
        read = 0;
        add = 11;
        data_in = 37;
        read = 0;
        ir_en = 0;
        
        #5 power = 0;
        #5 power = 1;
        
        read = 0;
        write = 1;
        add = 11;
        data_in = 38;
        ir_en = 0;
        
        #5 power = 0;
        #5 power = 1;
        read = 1;
        #5 power = 0;
        #5 power = 1;
        read = 0;
        data_in = 45;
        write = 1;
        
        #5 power = 0;
        #5 power = 1;
        read = 1;
        
        #5 power = 0;
        #5 power = 1;
        
        write = 1;
        read = 0;
        add = 12;
        data_in = 7;
        
        #5 power = 0;
        #5 power = 1;
        
        add = 11;
        read = 1;
        ir_en = 1;
    end
endmodule
