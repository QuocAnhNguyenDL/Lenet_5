`timescale 1ns / 1ps

module maxpoll22 #(parameter COL = 5, BIT_WIDTH = 8) (
    input clk, en,
    input [BIT_WIDTH-1:0] in1, in2,
    output[BIT_WIDTH-1:0] result
);
    
    reg [BIT_WIDTH-1:0] m22[COL][COL];
    integer i;
    
    always @(posedge clk)
    begin
        if(en) begin
            m22[0][1] <= m22[0][0];
            m22[1][1] <= m22[1][0];
            
            m22[0][0] <= in1;
            m22[1][0] <= in2;
        end
    end 
   
    reg [BIT_WIDTH-1:0] max1, max2;
    
    assign max1 = (m22[0][0] >= m22[0][1]) ? m22[0][0] : m22[0][1];
    assign max2 = (m22[1][0] >= m22[1][1]) ? m22[1][0] : m22[1][1];
    assign result = (max1 >= max2) ? max1 : max2; 
endmodule

