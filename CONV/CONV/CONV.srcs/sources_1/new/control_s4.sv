`timescale 1ns / 1ps

module control_s4(
    input clk, 
    input C3_start,
    output S4_en,
    output S4_start
    );
    
    parameter C3_SIZE = 14;
    parameter S4_SIZE = 10;
    
    reg start, clk_x2 = 0, S4 = 0;
    reg [10:0] count_clk = 0, count_S4 = 0;
    
    always @(posedge clk)
    begin
        clk_x2 <= ~clk_x2;
    end
    
    always @(posedge clk_x2)
    begin
        if(C3_start == 1'b1) begin
            if(count_clk == (C3_SIZE + 2) * 4 * 2 + 4)
            begin
                start = 1'b1;
            end
            if (count_clk < 149) count_clk <= count_clk  + 1;
            else count_clk <= 5'b0;
        end
        else start <= 1'b0;
    end
    
    always @(posedge clk_x2)
    begin
        if(count_S4 < S4_SIZE  && start == 1'b1) S4 <= 1;
        else S4 <= 0;
        
        if(count_S4 < S4_SIZE*3 + 1 && start == 1'b1) count_S4 <= count_S4 + 1;
        else count_S4 <= 5'b0;
    end
    
    assign S4_start = start;
    assign S4_en = S4 & clk_x2;
    
endmodule
