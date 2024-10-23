`timescale 1ns / 1ps

module conv2d #(paramater IMG_SIZE, KER_SIZE, OUT_SIZE, DEPTH)(
    input clk,
    input reset,
    input en_write_img,
    input [7:0] img_in,
    input [4:0] img_x,
    input [4:0] img_y,
    input en_write_ker,
    input [4:0] kernel_in,
    input [2:0] ker_x,
    input [2:0] ker_y,
    output [7:0] img_out
    );
    
    reg kernel [DEPTH-1][KER_SIZE - 1][KER_SIZE - 1];
    reg img [DEPTH-1][IMG_SIZE-1][IMG_SIZE-1];
    
    integer a,b,c;
    
    always@(posedge clk or posedge reset)
    begin
        if(reset == 1'b1) begin
            for(a = 0; a < DEPTH - 1; a = a+1)
                for(b = 0; b < KER_SIZE - 1; b = b+1)
                    for(c = 0; c < KER_SIZE - 1; c = c+1) 
                        kernel[a][b][c] = 0;
                        
            for(a = 0; a < DEPTH - 1; a = a+1)
                for(b = 0; b < IMG_SIZE - 1; b = b+1)
                    for(c = 0; c < IMG_SIZE - 1; c = c+1) 
                        img[a][b][c] = 0;    
         end        
         else begin
            if(en_write_kernel)
         end              
    end
endmodule
