`timescale 1ns / 1ps

module FC_F6 #(parameter IN_WIDTH = 32, OUT_WIDTH = 48)(
    input [IN_WIDTH*120-1:0] in,
    input [0 : 8*120-1] weights,
    output [OUT_WIDTH-1:0] result
    );
    
    reg [OUT_WIDTH-1:0] mul [0:120-1];
    
    genvar x;
    generate
        for( x = 0 ; x < 120 ; x = x + 1)
        begin
            assign mul[x] = in[(x+1)*IN_WIDTH-1 : x*IN_WIDTH] * weights[x*8 : (x+1)*8-1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_1 [0:60-1];
    generate
        for( x = 0 ; x < 60 ; x = x + 1)
        begin
            assign sum_1[x] = mul[2*x] + mul[2*x+1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_2 [0:30-1];
    generate
        for( x = 0 ; x < 30 ; x = x + 1)
        begin
            assign sum_2[x] = sum_1[2*x] + sum_1[2*x+1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_3 [0:16-1];
    assign sum_3[15] = 0;
    generate
        for( x = 0 ; x < 15 ; x = x + 1)
        begin
            assign sum_3[x] = sum_2[2*x] + sum_2[2*x+1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_4 [0:8-1];
    generate
        for( x = 0 ; x < 8 ; x = x + 1)
        begin
            assign sum_4[x] = sum_3[2*x] + sum_3[2*x+1];
        end
    endgenerate
    
    reg [OUT_WIDTH-1:0] sum_5 [0:4-1];
    generate
        for( x = 0 ; x < 4 ; x = x + 1)
        begin
            assign sum_5[x] = sum_4[2*x] + sum_4[2*x+1];
        end
    endgenerate
    
    assign result = sum_5[0] + sum_5[1] + sum_5[2] + sum_5[3];
    
endmodule
