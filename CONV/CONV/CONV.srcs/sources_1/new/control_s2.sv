`timescale 1ns / 1ps

module control_s2(
    input clk, 
    output S2_en,
    output S2_start
    );
    
    parameter IMG_SIZE = 32;
    parameter S2_SIZE = 28;
    
    reg S2;
    reg [10:0] count_clk = 1'b0;
    reg start = 1'b0;
    reg [4:0] count_S2 = 1'b0; //each 28 cycle, skip 4
    
    always @(posedge clk)
    begin
        if(count_clk == IMG_SIZE * 4 + 5) //133 = 32*4 + 5
        begin
            start <= 1'b1;
            S2 <= 1'b1;
        end
        if(count_clk == IMG_SIZE * IMG_SIZE + 2) //1025 = 32*32+5 
        begin
            start <= 1'b0;
            S2 <= 1'b0;
        end
        if(count_clk < IMG_SIZE * IMG_SIZE + 1) count_clk = count_clk + 1;
    end
    
    always @(posedge clk)
    begin
        if(start == 1'b1)
        begin
            if(count_S2 < S2_SIZE) 
            begin
                S2 <= 1'b1;
            end
            else 
            begin
                S2 <= 1'b0;
            end
            
            if(count_S2 < 31) count_S2 <= count_S2 + 1;
            else count_S2 <= 5'b0;
        end
    end
    
    assign S2_start = start;
    assign S2_en = S2;
endmodule
