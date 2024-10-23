`timescale 1ns / 1ps

module Lenet5 #(parameter BIT_WIDTH = 8) (
    input clk, 
    input [BIT_WIDTH-1:0] pixel
    );
    
    parameter C1_PARAMS_file = "D:/DOAN/CONV/src/kernel_c1.list";
    parameter C3_PARAMS_file = "D:/DOAN/CONV/src/kernel_c3_x6.list";
    
    parameter IMG_SIZE = 32;
    parameter KERNEL_SIZE = 5;
    parameter MAXPOLL_SIZE = 2;
    parameter S2_SIZE = 28;
    parameter C3_SIZE = 14;
    
    parameter C1_FILTER_num = 6;
    parameter S2_FILTER_num = 6;
    parameter C3_FILTER_num = 16;
    
    parameter C1_PARAMS_num = 26;
    parameter C3_PARAMS_num = 25;
    //parameter S2_SIZE = 32;
    //parameter C3_SIZE = 32;
    //parameter S4_SIZE = 32;
    
    parameter C1_OUT_WIDTH = 16;
    parameter S2_OUT_WIDTH = 16;
    parameter C3_OUT_WIDTH = 24;
    
    genvar x, y;
    
    reg [BIT_WIDTH-1:0] bufToC1_1, bufToC1_2, bufToC1_3, bufToC1_4, bufToC1_5;
    
    //Control signal for buffers
    reg S2_en, C3_en;
    control ctrl(
        .clk(clk),
        .S2_en(S2_en),
        .C3_en(C3_en)
    );
    
    //Read params for C1 kernel
    reg [0:C1_PARAMS_num*BIT_WIDTH*C1_FILTER_num-1] kernelC1;
    params #(.BIT_WIDTH(BIT_WIDTH), .SIZE(C1_PARAMS_num*C1_FILTER_num), .FILE(C1_PARAMS_file)) param_C1(
        .clk(clk),
        .read(1'b1),
        .read_out(kernelC1)
    );
    
    
    //IMG ---> buffer_C1
    row4buf #(.COL(IMG_SIZE), .BIT_WIDTH(BIT_WIDTH)) rb1(
        .clk(clk),
        .en(1'b1),
        .in(pixel),
        .out1(bufToC1_1), .out2(bufToC1_2), .out3(bufToC1_3), .out4(bufToC1_4), .out5(bufToC1_5)
    );
    
    //C1
    reg [C1_OUT_WIDTH-1:0] resultC1 [C1_FILTER_num], conv_result [C1_FILTER_num], conv_plus_bias [C1_FILTER_num], conv_relu [C1_FILTER_num];
    generate
    for(x=0 ; x<6 ; x=x+1)
    begin
        conv55 #(.COL(KERNEL_SIZE), .BIT_WIDTH(BIT_WIDTH), .OUT_WIDTH(C1_OUT_WIDTH)) c1(
            .clk(clk),
            .en(1'b1),
            .kernel(kernelC1[x*C1_PARAMS_num*BIT_WIDTH-8:(x+1)*C1_PARAMS_num*BIT_WIDTH-1-8]),
            .in1(bufToC1_5), .in2(bufToC1_4), .in3(bufToC1_3), .in4(bufToC1_2), .in5(bufToC1_1),
            .conv_result(conv_result[x])
        );
        assign conv_plus_bias[x] = conv_result[x] + kernelC1[(x+1)*C1_PARAMS_num*BIT_WIDTH-8:(x+1)*C1_PARAMS_num*BIT_WIDTH-1];
        assign conv_relu[x] = (conv_plus_bias[x] < 0) ? 0 : conv_plus_bias[x]; 
        assign resultC1[x] = conv_relu[x];
    end
    endgenerate
    
    reg [C1_OUT_WIDTH-1:0] buf_C1toS2 [C1_FILTER_num];
    reg [C1_OUT_WIDTH-1:0] resultS2 [C1_FILTER_num];
    
    //C1 ---> buffer_C1S2
    generate
        for(x=0 ; x<C1_FILTER_num ; x=x+1)
        begin
            rowbuf #(.COL(S2_SIZE), .BIT_WIDTH(S2_OUT_WIDTH)) c1s2(
                .clk(clk),
                .en(S2_en),
                .in(resultC1[x]),
                .out(buf_C1toS2[x])   
            );
        end 
    endgenerate
    
    //S2
    generate
        for(x=0 ; x<S2_FILTER_num ; x=x+1)
        begin
            maxpoll22 #(.COL(MAXPOLL_SIZE), .BIT_WIDTH(S2_OUT_WIDTH)) s2(
                .clk(clk),
                .en(S2_en),
                .in1(buf_C1toS2[x]),
                .in2(resultC1[x]),
                .resultS2(resultS2[x])
            );
        end 
    endgenerate
    
    //S2 ---> buffer_S2C3
    reg [C1_OUT_WIDTH-1:0] buf_S2toC3_1 [S2_FILTER_num];
    reg [C1_OUT_WIDTH-1:0] buf_S2toC3_2 [S2_FILTER_num];
    reg [C1_OUT_WIDTH-1:0] buf_S2toC3_3 [S2_FILTER_num];
    reg [C1_OUT_WIDTH-1:0] buf_S2toC3_4 [S2_FILTER_num];
    reg [C1_OUT_WIDTH-1:0] buf_S2toC3_5 [S2_FILTER_num];
    
    generate
        for(x=0 ; x<S2_FILTER_num ; x=x+1)
        begin
            row4buf #(.COL(C3_SIZE), .BIT_WIDTH(S2_OUT_WIDTH)) s2c3(
                .clk(clk),
                .en(C3_en),
                .in(resultS2[x]),
                .out1(buf_S2toC3_5[x]),
                .out2(buf_S2toC3_4[x]), 
                .out3(buf_S2toC3_3[x]), 
                .out4(buf_S2toC3_2[x]), 
                .out5(buf_S2toC3_1[x])
            );
        end 
    endgenerate
    
    //Read params for C3 kernel
    reg [0:C3_PARAMS_num*BIT_WIDTH*S2_FILTER_num-1] kernelC3;
    params #(.BIT_WIDTH(BIT_WIDTH), .SIZE(C3_PARAMS_num*S2_FILTER_num), .FILE(C3_PARAMS_file)) param_C3(
        .clk(clk),
        .read(1'b1),
        .read_out(kernelC3)
    );
    
    //C3
    reg [C3_OUT_WIDTH-1:0] convC3_result[0:C3_FILTER_num-1], convC3_plus_bias[0:C3_FILTER_num-1], convC3_relu[0:C3_FILTER_num-1], resultC3[0:C3_FILTER_num-1];
    generate
        for(x=0 ; x<C3_FILTER_num ; x=x+1) begin
            conv556 #(.COL(KERNEL_SIZE), .BIT_WIDTH(S2_OUT_WIDTH), .OUT_WIDTH(C3_OUT_WIDTH)) C3(
                .clk(clk),
                .en(C3_en),
                .in1(buf_S2toC3_1),
                .in2(buf_S2toC3_2),
                .in3(buf_S2toC3_3),
                .in4(buf_S2toC3_4),
                .in5(buf_S2toC3_5),
                
                .kernel_0(kernelC3[25*8*0:25*8*1-1]),
                .kernel_1(kernelC3[25*8*1:25*8*2-1]),
                .kernel_2(kernelC3[25*8*2:25*8*3-1]),
                .kernel_3(kernelC3[25*8*3:25*8*4-1]),
                .kernel_4(kernelC3[25*8*4:25*8*5-1]),
                .kernel_5(kernelC3[25*8*5:25*8*6-1]),
                
                .conv_result(convC3_result[x])
            );
            
            assign convC3_plus_bias[x] = convC3_result[x] + x + 1;
            assign convC3_relu[x] = (convC3_plus_bias[x] < 0) ? 0 : convC3_plus_bias[x];
            assign resultC3[x] = convC3_relu[x];
        end
    endgenerate
      
endmodule
