`timescale 1ns / 1ps

module top_lenet5 (
        input clk
    );
    
    parameter NUMPIXELS = 1024;
    parameter BIT_WIDTH = 8;
    
    reg [BIT_WIDTH-1:0] nextPixel;
    image_reader #(.NUMPIXELS(NUMPIXELS), .BIT_WIDTH(BIT_WIDTH), .FILE("D:/DOAN/CONV/src/image32x32.list")) r_img(
        .clk(clk),
        //.rst(),
        .nextPixel(nextPixel)
    );
    
    Lenet5 #(.BIT_WIDTH(BIT_WIDTH)) ln5(
        .clk(clk),
        .pixel(nextPixel)
    );
endmodule
