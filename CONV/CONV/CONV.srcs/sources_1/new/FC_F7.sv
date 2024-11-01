`timescale 1ns / 1ps

module FC_F7 #(parameter IN_WIDTH = 48, OUT_WIDTH = 64)(
    input [IN_WIDTH*84-1:0] in,
    input [0 : 8*84-1] weights,
    output [OUT_WIDTH-1:0] result
    );
    
    reg [OUT_WIDTH-1:0] mul [0:84-1];
    
    genvar x;
    generate
        for( x = 0 ; x < 84 ; x = x + 1)
        begin
            assign mul[x] = in[(x+1)*IN_WIDTH-1 : x*IN_WIDTH] * weights[x*8 : (x+1)*8-1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_1 [0:42-1];
    generate
        for( x = 0 ; x < 42 ; x = x + 1)
        begin
            assign sum_1[x] = mul[2*x] + mul[2*x+1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_2 [0:21+1-1];
    assign sum_2[21] = 0;
    generate
        for( x = 0 ; x < 21 ; x = x + 1)
        begin
            assign sum_2[x] = sum_1[2*x] + sum_1[2*x+1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_3 [0:11+1-1];
    assign sum_3[11] = 0;
    generate
        for( x = 0 ; x < 11 ; x = x + 1)
        begin
            assign sum_3[x] = sum_2[2*x] + sum_2[2*x+1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_4 [0:6-1];
    generate
        for( x = 0 ; x < 6 ; x = x + 1)
        begin
            assign sum_4[x] = sum_3[2*x] + sum_3[2*x+1];
        end
    endgenerate
    
    
    assign result = sum_4[0] + sum_4[1] + sum_4[2] + sum_4[3] + sum_4[4];
    
endmodule
