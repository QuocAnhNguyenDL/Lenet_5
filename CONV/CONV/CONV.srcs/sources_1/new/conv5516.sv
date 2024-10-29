`timescale 1ns / 1ps

module conv5516 #(parameter COL = 5, BIT_WIDTH = 8, IN_WIDTH = 8, OUT_WIDTH = 32)(
    input clk, en,
    
    input [0:(BIT_WIDTH*25)-1] kernel_0,
    input [0:(BIT_WIDTH*25)-1] kernel_1,
    input [0:(BIT_WIDTH*25)-1] kernel_2,
    input [0:(BIT_WIDTH*25)-1] kernel_3,
    input [0:(BIT_WIDTH*25)-1] kernel_4,
    input [0:(BIT_WIDTH*25)-1] kernel_5,
    input [0:(BIT_WIDTH*25)-1] kernel_6,
    input [0:(BIT_WIDTH*25)-1] kernel_7,
    input [0:(BIT_WIDTH*25)-1] kernel_8,
    input [0:(BIT_WIDTH*25)-1] kernel_9,
    input [0:(BIT_WIDTH*25)-1] kernel_10,
    input [0:(BIT_WIDTH*25)-1] kernel_11,
    input [0:(BIT_WIDTH*25)-1] kernel_12,
    input [0:(BIT_WIDTH*25)-1] kernel_13,
    input [0:(BIT_WIDTH*25)-1] kernel_14,
    input [0:(BIT_WIDTH*25)-1] kernel_15,
    
    
    input [IN_WIDTH-1:0] in1[0:15],
    input [IN_WIDTH-1:0] in2[0:15],
    input [IN_WIDTH-1:0] in3[0:15],
    input [IN_WIDTH-1:0] in4[0:15],
    input [IN_WIDTH-1:0] in5[0:15],
    
    
    output [OUT_WIDTH-1:0] conv_result
    );
    
    reg [OUT_WIDTH-1:0] layer_result[0:15];
  
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_1(
        .clk(clk),
        .en(en),
        .kernel(kernel_0),
        .in1(in1[0]), .in2(in2[0]), .in3(in3[0]), .in4(in4[0]), .in5(in5[0]),
        .conv_result(layer_result[0])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_2(
        .clk(clk),
        .en(en),
        .kernel(kernel_1),
        .in1(in1[1]), .in2(in2[1]), .in3(in3[1]), .in4(in4[1]), .in5(in5[1]),
        .conv_result(layer_result[1])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_3(
        .clk(clk),
        .en(en),
        .kernel(kernel_2),
        .in1(in1[2]), .in2(in2[2]), .in3(in3[2]), .in4(in4[2]), .in5(in5[2]),
        .conv_result(layer_result[2])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_4(
        .clk(clk),
        .en(en),
        .kernel(kernel_3),
        .in1(in1[3]), .in2(in2[3]), .in3(in3[3]), .in4(in4[3]), .in5(in5[3]),
        .conv_result(layer_result[3])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_5(
        .clk(clk),
        .en(en),
        .kernel(kernel_4),
        .in1(in1[4]), .in2(in2[4]), .in3(in3[4]), .in4(in4[4]), .in5(in5[4]),
        .conv_result(layer_result[4])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_6(
        .clk(clk),
        .en(en),
        .kernel(kernel_5),
        .in1(in1[5]), .in2(in2[5]), .in3(in3[5]), .in4(in4[5]), .in5(in5[5]),
        .conv_result(layer_result[5])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_7(
        .clk(clk),
        .en(en),
        .kernel(kernel_6),
        .in1(in1[6]), .in2(in2[6]), .in3(in3[6]), .in4(in4[6]), .in5(in5[6]),
        .conv_result(layer_result[6])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_8(
        .clk(clk),
        .en(en),
        .kernel(kernel_7),
        .in1(in1[7]), .in2(in2[7]), .in3(in3[7]), .in4(in4[7]), .in5(in5[7]),
        .conv_result(layer_result[7])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_9(
        .clk(clk),
        .en(en),
        .kernel(kernel_8),
        .in1(in1[8]), .in2(in2[8]), .in3(in3[8]), .in4(in4[8]), .in5(in5[8]),
        .conv_result(layer_result[8])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_10(
        .clk(clk),
        .en(en),
        .kernel(kernel_9),
        .in1(in1[9]), .in2(in2[9]), .in3(in3[9]), .in4(in4[9]), .in5(in5[9]),
        .conv_result(layer_result[9])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_11(
        .clk(clk),
        .en(en),
        .kernel(kernel_10),
        .in1(in1[10]), .in2(in2[10]), .in3(in3[10]), .in4(in4[10]), .in5(in5[10]),
        .conv_result(layer_result[10])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_12(
        .clk(clk),
        .en(en),
        .kernel(kernel_11),
        .in1(in1[11]), .in2(in2[11]), .in3(in3[11]), .in4(in4[11]), .in5(in5[11]),
        .conv_result(layer_result[11])
    );
    
        conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_13(
        .clk(clk),
        .en(en),
        .kernel(kernel_12),
        .in1(in1[12]), .in2(in2[12]), .in3(in3[12]), .in4(in4[12]), .in5(in5[12]),
        .conv_result(layer_result[12])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_14(
        .clk(clk),
        .en(en),
        .kernel(kernel_13),
        .in1(in1[13]), .in2(in2[13]), .in3(in3[13]), .in4(in4[13]), .in5(in5[13]),
        .conv_result(layer_result[13])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_15(
        .clk(clk),
        .en(en),
        .kernel(kernel_14),
        .in1(in1[14]), .in2(in2[14]), .in3(in3[14]), .in4(in4[14]), .in5(in5[14]),
        .conv_result(layer_result[14])
    );
    
    conv55 #(.COL(COL), .BIT_WIDTH(BIT_WIDTH), .IN_WIDTH(IN_WIDTH), .OUT_WIDTH(OUT_WIDTH)) layer_16(
        .clk(clk),
        .en(en),
        .kernel(kernel_15),
        .in1(in1[15]), .in2(in2[15]), .in3(in3[15]), .in4(in4[15]), .in5(in5[15]),
        .conv_result(layer_result[15])
    );
    
    reg [OUT_WIDTH-1:0] sum1, sum2, sum3, sum4;
    assign sum1 = layer_result[0] + layer_result[1] + layer_result[2] + layer_result[3];
    assign sum2 = layer_result[4] + layer_result[5] + layer_result[6] + layer_result[7];
    assign sum3 = layer_result[8] + layer_result[9] + layer_result[10] + layer_result[11];
    assign sum4 = layer_result[12] + layer_result[13] + layer_result[14] + layer_result[15];
    assign conv_result = sum1 + sum2 + sum3 + sum4;
endmodule
