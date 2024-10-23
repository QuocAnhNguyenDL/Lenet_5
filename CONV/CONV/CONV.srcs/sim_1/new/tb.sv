`timescale 1ns / 1ps

module tb;

    reg clk, en;
    integer i = 0;
    
    top_lenet5 ln5(
        .clk(clk)
    );
    
    initial begin
        clk = 0;
        en = 1;
        forever begin
            #5 clk = ~clk;
        end
    end
    
    initial begin
        forever begin
            #10 i = i+1;
        end
    end


endmodule
