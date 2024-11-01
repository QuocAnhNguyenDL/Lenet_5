`timescale 1ns / 1ps

module Lenet5 #(parameter BIT_WIDTH = 8) (
    input clk, 
    input [BIT_WIDTH-1:0] pixel
    );
    
    parameter C1_PARAMS_file = "D:/DOAN/CONV/src/kernel_c1.list";
    parameter C3_PARAMS_file = "D:/DOAN/CONV/src/kernel_c3.list";
    parameter C5_PARAMS_file = "D:/DOAN/CONV/src/kernel_c5.list";
    parameter F6_PARAMS_file = "D:/DOAN/CONV/src/weights_f6.list";
    parameter F7_PARAMS_file = "D:/DOAN/CONV/src/weights_f7.list";
    
    
    parameter IMG_SIZE = 32;
    parameter KERNEL_SIZE = 5;
    parameter MAXPOLL_SIZE = 2;
    parameter S2_SIZE = 28;
    parameter C3_SIZE = 14;
    parameter S4_SIZE = 10;
    parameter C5_SIZE = 5;
    parameter F6_SIZE = 120;
    parameter F7_SIZE = 84;
    parameter OUTPUT_SIZE = 10;
    
    parameter C1_FILTER_num = 6;
    parameter S2_FILTER_num = 6;
    parameter C3_FILTER_num = 16;
    parameter S4_FILTER_num = 16;
    parameter C5_FILTER_num = 120;
    parameter F6_FILTER_num = 84;
    parameter F7_FILTER_num = 10;
    
    parameter C1_PARAMS_num = 26;
    parameter C3_PARAMS_num = 25;
    parameter C5_PARAMS_num = 401;
    parameter F6_PARAMS_num = 121;
    parameter F7_PARAMS_num = 85;
    parameter PARAMS_NUM = 26;
    //parameter S2_SIZE = 32;
    //parameter C3_SIZE = 32;
    //parameter S4_SIZE = 32;
    
    parameter C1_OUT_WIDTH = 16;
    parameter S2_OUT_WIDTH = 16;
    parameter C3_OUT_WIDTH = 24;
    parameter S4_OUT_WIDTH = 24;
    parameter C5_OUT_WIDTH = 32;
    parameter F6_OUT_WIDTH = 48;
    parameter F7_OUT_WIDTH = 64;
    
    genvar x, y;
    
    reg [BIT_WIDTH-1:0] bufToC1_1, bufToC1_2, bufToC1_3, bufToC1_4, bufToC1_5;
    
    //Control signal for buffers
    reg S2_en, C3_en, S4_en, C5_en, S2_start, C3_start, S4_start, C5_start;
    
    
    control_s2 crls2(
        .clk(clk),
        .S2_start(S2_start),
        .S2_en(S2_en)
    );
    
    control_c3 ctrc3(
        .clk(clk),
        .S2_start(S2_start),
        .C3_start(C3_start),
        .C3_en(C3_en)
    );
    
    control_s4 ctrs4(
        .clk(clk),
        .C3_start(C3_start),
        .S4_start(S4_start),
        .S4_en(S4_en)
    );
    
    control_c5 ctrc5(
        .clk(clk),
        .S4_start(S4_start),
        .C5_start(C5_start),
        .C5_en(C5_en)
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
    reg [C1_OUT_WIDTH-1:0] resultS2 [S2_FILTER_num];
    
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
            maxpoll22 #(.COL(MAXPOLL_SIZE), .BIT_WIDTH(S2_OUT_WIDTH)) S2(
                .clk(clk),
                .en(S2_en),
                .in1(buf_C1toS2[x]),
                .in2(resultC1[x]),
                .result(resultS2[x])
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
            conv556 #(.COL(KERNEL_SIZE), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(S2_OUT_WIDTH), .OUT_WIDTH(C3_OUT_WIDTH)) C3(
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
    
    //C3 ---> buffer_C3S4
    reg [C3_OUT_WIDTH-1:0] buf_C3toS4 [S4_FILTER_num];
    reg [C3_OUT_WIDTH-1:0] resultS4 [S4_FILTER_num];
    
    generate
        for(x=0 ; x<S4_FILTER_num ; x=x+1)
        begin
            rowbuf #(.COL(S4_SIZE), .BIT_WIDTH(S4_OUT_WIDTH)) c3s4(
                .clk(clk),
                .en(S4_en),
                .in(resultC3[x]),
                .out(buf_C3toS4[x])   
            );
        end 
    endgenerate
    
    //S4
    generate
        for(x=0 ; x<S4_FILTER_num ; x=x+1)
        begin
            maxpoll22 #(.COL(MAXPOLL_SIZE), .BIT_WIDTH(S4_OUT_WIDTH)) S2(
                .clk(clk),
                .en(S4_en),
                .in1(buf_C3toS4[x]),
                .in2(resultC3[x]),
                .result(resultS4[x])
            );
        end 
    endgenerate
    
    //S4 --> buffer S4C5
    reg [S4_OUT_WIDTH-1:0] buf_S4toC5_1 [S4_FILTER_num];
    reg [S4_OUT_WIDTH-1:0] buf_S4toC5_2 [S4_FILTER_num];
    reg [S4_OUT_WIDTH-1:0] buf_S4toC5_3 [S4_FILTER_num];
    reg [S4_OUT_WIDTH-1:0] buf_S4toC5_4 [S4_FILTER_num];
    reg [S4_OUT_WIDTH-1:0] buf_S4toC5_5 [S4_FILTER_num];
    
    generate
        for(x=0 ; x<S4_FILTER_num ; x=x+1)
        begin
            row4buf #(.COL(C5_SIZE), .BIT_WIDTH(S4_OUT_WIDTH)) s4c5(
                .clk(clk),
                .en(C5_en),
                .in(resultS4[x]),
                .out1(buf_S4toC5_5[x]),
                .out2(buf_S4toC5_4[x]), 
                .out3(buf_S4toC5_3[x]), 
                .out4(buf_S4toC5_2[x]), 
                .out5(buf_S4toC5_1[x])
            );
        end 
    endgenerate
    
    //Read params for C5 kernel
    reg [0:C5_PARAMS_num*BIT_WIDTH*C5_FILTER_num-1] kernelC5;
    
    params #(.BIT_WIDTH(BIT_WIDTH), .SIZE(C5_PARAMS_num*C5_FILTER_num), .FILE(C5_PARAMS_file)) param_C5(
        .clk(clk),
        .read(1'b1),
        .read_out(kernelC5)
    );
    
    //C5
    reg [C5_OUT_WIDTH-1:0] convC5_result[0:C5_FILTER_num-1], convC5_plus_bias[0:C5_FILTER_num-1], convC5_relu[0:C5_FILTER_num-1], resultC5[0:C5_FILTER_num-1];
    generate
        for(x=0 ; x < C5_FILTER_num ; x=x+1) begin
            conv5516 #(.COL(KERNEL_SIZE), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(S4_OUT_WIDTH), .OUT_WIDTH(C5_OUT_WIDTH)) C5(
                .clk(clk),
                .en(C5_en),
                .in1(buf_S4toC5_1),
                .in2(buf_S4toC5_2),
                .in3(buf_S4toC5_3),
                .in4(buf_S4toC5_4),
                .in5(buf_S4toC5_5),
                
                .kernel_0(kernelC5[((16*x+0)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+1)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_1(kernelC5[((16*x+1)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+2)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_2(kernelC5[((16*x+2)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+3)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_3(kernelC5[((16*x+3)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+4)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_4(kernelC5[((16*x+4)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+5)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_5(kernelC5[((16*x+5)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+6)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_6(kernelC5[((16*x+6)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+7)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_7(kernelC5[((16*x+7)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+8)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_8(kernelC5[((16*x+8)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+9)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_9(kernelC5[((16*x+9)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+10)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_10(kernelC5[((16*x+10)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+11)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_11(kernelC5[((16*x+11)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+12)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_12(kernelC5[((16*x+12)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+13)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_13(kernelC5[((16*x+13)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+14)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_14(kernelC5[((16*x+14)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+15)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                .kernel_15(kernelC5[((16*x+15)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+16)*(PARAMS_NUM-1)+x)*BIT_WIDTH-1]),
                
                .conv_result(convC5_result[x])
            );
        
            assign convC5_plus_bias[x] = convC5_result[x] + kernelC5[((16*x+16)*(PARAMS_NUM-1)+x)*BIT_WIDTH:((16*x+16)*(PARAMS_NUM-1)+x)*BIT_WIDTH+7];
            assign convC5_relu[x] = (convC5_plus_bias[x] < 0) ? 0 : convC5_plus_bias[x];
            assign resultC5[x] = convC5_relu[x];
        end
    endgenerate
    
    //C5 --> flatten input vector for F6
    reg [F6_SIZE*C5_OUT_WIDTH - 1:0] C5toF6;
    generate
        for(x = 0; x < F6_SIZE; x = x+1)
        begin
            assign C5toF6[(x+1)*32-1 : x*32] = resultC5[x];
        end
    endgenerate
    
    //Read params for F6 kernel
    reg [0 : BIT_WIDTH*F6_PARAMS_num*F6_FILTER_num-1] weightsF6;
    params #(.BIT_WIDTH(BIT_WIDTH), .SIZE(F6_PARAMS_num*F6_FILTER_num), .FILE(F6_PARAMS_file)) param_F6(
        .clk(clk),
        .read(1'b1),
        .read_out(weightsF6)
    );
    
    //F6
    reg [F6_OUT_WIDTH-1:0] resultF6[0 : F7_SIZE-1], fcF6_plus_bias[0 : F7_SIZE-1], fcF6_relu[0 : F7_SIZE-1], fcF6_result[0 : F7_SIZE-1] ;
    generate
        for(x=0 ; x<F6_SIZE-1; x=x+1)
        begin
            FC_F6 #(.IN_WIDTH(C5_OUT_WIDTH), .OUT_WIDTH(F6_OUT_WIDTH)) F6(
                .in(C5toF6),
                .weights(weightsF6[BIT_WIDTH*(F6_SIZE*x+x):((x+1)*F6_SIZE+x)*BIT_WIDTH-1]),
                .result(fcF6_result[x])
            );
            
            assign fcF6_plus_bias[x] = fcF6_result[x] + weightsF6[((x+1)*F6_SIZE+x)*BIT_WIDTH : ((x+1)*F6_SIZE+x)*BIT_WIDTH + 7];
            assign fcF6_relu[x] = (fcF6_plus_bias[x] < 0) ? 0 : fcF6_plus_bias[x];
            assign resultF6[x] = fcF6_relu[x];
        end
    endgenerate
    
    //F6 --> F6toF7
    reg [F7_SIZE*F6_OUT_WIDTH - 1:0] F6toF7;
    generate
        for(x = 0; x < F6_SIZE; x = x+1)
        begin
            assign F6toF7[(x+1)*F6_OUT_WIDTH-1 : x*F6_OUT_WIDTH] = resultF6[x];
        end
    endgenerate
    
    //Read params for F7 kernel
    reg [0 : BIT_WIDTH*F7_PARAMS_num*F7_FILTER_num-1] weightsF7;
    params #(.BIT_WIDTH(BIT_WIDTH), .SIZE(F7_PARAMS_num*F7_FILTER_num), .FILE(F7_PARAMS_file)) param_F7(
        .clk(clk),
        .read(1'b1),
        .read_out(weightsF7)
    );
    
    //F7
    reg [F7_OUT_WIDTH-1:0] resultF7[0 : OUTPUT_SIZE-1], fcF7_plus_bias[0 : OUTPUT_SIZE-1], fcF7_result[0 : OUTPUT_SIZE-1] ;
    generate
        for(x=0 ; x<OUTPUT_SIZE; x=x+1)
        begin
            FC_F7 #(.IN_WIDTH(F6_OUT_WIDTH), .OUT_WIDTH(F7_OUT_WIDTH)) F7(
                .in(F6toF7),
                .weights(weightsF7[BIT_WIDTH*(F7_SIZE*x+x):((x+1)*F7_SIZE+x)*BIT_WIDTH-1]),
                .result(fcF7_result[x])
            );
            
            assign fcF7_plus_bias[x] = fcF7_result[x] + weightsF7[((x+1)*F7_SIZE+x)*BIT_WIDTH : ((x+1)*F7_SIZE+x)*BIT_WIDTH + 7];
            assign resultF7[x] = fcF7_plus_bias[x];
        end
    endgenerate
    
    
      
endmodule
