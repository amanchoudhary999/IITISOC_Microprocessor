module alu_sim(

    );
    reg  [7:0]a;
    reg [7:0]b;
    reg [2:0]opco;
    reg power;
    wire [7:0]result;
    wire carry,sign,zero;
    
    alu xyz(a,b,opco,power,result,carry,sign,zero);
    initial begin
    
    power = 1;
    a = 7;b = 4;
    opco = 1;

    #5 power = 0;
    #5 power = 1;
    a = 7;b = 4;
    opco = 2;
    
    #5 power = 0;
    #5 power = 1;
    a = 7;b = 4;
    opco = 3;
    
    #5 power = 0;
    #5 power = 1;
    a = 7;b = 4;
    opco = 4;
    
    #5 power = 0;
    #5 power = 1;
    a = 7;b = 4;
    opco = 5;
    
    #5 power = 0;
    #5 power = 1;
    a = 7;b = 4;
    opco = 6;
    
    #5 power = 0;
    #5 power = 1;
    a = 7;b = 4;
    opco = 7;
    
    #5 power = 0;
    #5 power = 1;
    a = 250;b = 10;
    opco = 1;
    
    #5 power = 0;
    #5 power = 1;
    a = 8;b = 11;
    opco = 2;
    
    #5 power = 0;
    #5 power = 1;
    a = 7;b = 7;
    opco = 2;
    
    #5 power = 0;
    #5 power = 1;
    a = 7;b = 4;
    opco = 2;
    


    end
    
endmodule
