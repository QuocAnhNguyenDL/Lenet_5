`timescale 1ns / 1ps

module conv556 #(parameter COL = 5, BIT_WIDTH = 8, IN_WIDTH = 8, OUT_WIDTH = 32)(
    input clk, en,
    
    input [0:(8*25)-1] kernel_0,
    input [0:(8*25)-1] kernel_1,
    input [0:(8*25)-1] kernel_2,
    input [0:(8*25)-1] kernel_3,
    input [0:(8*25)-1] kernel_4,
    input [0:(8*25)-1] kernel_5,
    
    input [IN_WIDTH-1:0] in1[0:5],
    input [IN_WIDTH-1:0] in2[0:5],
    input [IN_WIDTH-1:0] in3[0:5],
    input [IN_WIDTH-1:0] in4[0:5],
    input [IN_WIDTH-1:0] in5[0:5],
    
    output [OUT_WIDTH-1:0] conv_result
    );
    
    reg [OUT_WIDTH-1:0] layer_result[0:5];
  
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
    
    assign conv_result = layer_result[0] + layer_result[1] + layer_result[2] + layer_result[3] + layer_result[4] + layer_result[5];
endmodule
