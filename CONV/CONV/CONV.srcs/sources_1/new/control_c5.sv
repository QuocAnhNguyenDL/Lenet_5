`timescale 1ns / 1ps

module control_c5(
    input clk, 
    input S4_start,
    output C5_en,
    output C5_start
    );
    
    parameter S4_SIZE = 10;
    parameter C5_SIZE = 5;
    
    reg start, clk_x2 = 1, clk_x4 = 1, C5 = 0;
    reg [10:0] count_clk = 0, count_C5 = 0, count_clk_x4 = 0;
    
    always @(posedge clk)
    begin
        clk_x2 <= ~clk_x2;
    end
    
    always @(posedge clk)
    begin
        if (count_clk_x4 == 0) clk_x4 <= 1;
        else clk_x4 <= 0;
        
        if(count_clk_x4 == 3) count_clk_x4 <= 0;
        else count_clk_x4 <= count_clk_x4 + 1;
        
    end
    
    always @(posedge clk_x2)
    begin
        if(S4_start == 1'b1) begin
            if(count_clk == (S4_SIZE+1)*3)
            begin
                start = 1'b1;
            end
            if (count_clk < 149) count_clk <= count_clk  + 1;
            else count_clk <= 5'b0;
        end
        else start <= 1'b0;
    end
    
    always @(posedge clk_x4)
    begin
        if(count_C5 < C5_SIZE  && start == 1'b1) C5 <= 1;
        else C5 <= 0;
        
        if(count_C5 < (C5_SIZE+2)*4 + 3 && start == 1'b1) count_C5 <= count_C5 + 1;
        else count_C5 <= 5'b0;
    end
    
    assign C5_start = start;
    assign C5_en = C5 & clk_x4;
    
endmodule
