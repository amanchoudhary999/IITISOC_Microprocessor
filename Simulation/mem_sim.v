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
    
    Memory test_mem(power,write,read,add,data_in,data_out);
    
    initial 
    begin
        power = 1;
        
        write = 0;
        read = 0;
        add = 11;
        data_in = 37;
        
        #5 power = 0;
        #5 power = 1;
        write = 1;
         
        add = 11;
        data_in = 38;
        
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
    end
endmodule
