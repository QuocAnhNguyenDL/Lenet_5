`timescale 1ns / 1ps

module control(
    input clk, 
    output reg S2_en,
    output reg C3_en
    );
    
    parameter S2_SIZE = 28;
    
    reg S2, C3, C3_delay;
    reg [10:0] count_pixel = 1'b0;
    reg start = 1'b0, take_row_C3 = 1'b1;
    reg [4:0] count_s2 = 1'b0; //each 28 cycle, skip 4
    
    always @(posedge clk)
    begin
        if(count_pixel == 133) //133 = 32*4 + 5
        begin
            start = 1'b1;
            S2 <= 1'b1;
            C3_delay <= 1'b1;
        end
        if(count_pixel == 1025) //1025 = 32*32+1 
        begin
            start = 1'b0;
            S2 <= 1'b0;
            C3_delay <= 1'b0;
        end
        if(count_pixel < 1030) count_pixel = count_pixel + 1;
    end
    
    always @(posedge clk)
    begin
        if(start == 1'b1)
        begin
            if(count_s2 < S2_SIZE) 
            begin
                S2 <= 1'b1;
                if(S2 == 1'b1) C3_delay <= ~C3_delay;
            end
            else 
            begin
                S2 <= 1'b0;
                C3_delay <= 1'b0;
                
            end
            count_s2 <= count_s2 + 1;
        end
        
        C3 <= C3_delay;
    end
   
    
    always @(posedge S2_en)
    begin
        take_row_C3 <= ~take_row_C3;
    end
    
    assign S2_en = S2;
    assign C3_en = C3 & take_row_C3;
endmodule
