`timescale 1ns / 1ps

module control_c3(
    input clk, 
    input S2_start,
    output C3_en,
    output C3_start
    );
    
    parameter S2_SIZE = 28;
    parameter C3_SIZE = 14;
    
    reg start, clk_x2 = 1, C3 = 0;
    reg [4:0] count_clk = 1'b0, count_C3 = 1'b0;
    
    always @(posedge clk)
    begin
        clk_x2 <= ~clk_x2;
    end
    
    always @(posedge clk_x2)
    begin
        if(S2_start == 1'b1) begin
            if(count_clk == C3_SIZE + 3)
            begin
                start = 1'b1;
            end
            if (count_clk < 31) count_clk <= count_clk  + 1;
            else count_clk <= 5'b0;
        end
        else start <= 1'b0;
    end
    
    always @(posedge clk_x2)
    begin
        if(count_C3 < C3_SIZE && start == 1'b1) C3 <= 1;
        else C3 <= 0;
        
        if(count_C3 < S2_SIZE + 3 && start == 1'b1) count_C3 <= count_C3 + 1;
        else count_C3 <= 5'b0;
    end
    
    assign C3_start = start;
    assign C3_en = C3 & clk_x2;
    
endmodule
