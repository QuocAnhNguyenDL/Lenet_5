module r_param #(BIT_WIDTH = 8, SIZE = 26)(
    input clk,
    input read,
    output reg [0:BIT_WIDTH*SIZE-1] read_out
);

reg [BIT_WIDTH-1:0] weights [0:SIZE-1];

initial begin
    $readmemh(FILE, weights); 
end

reg [15:0] i;	
always @(posedge clk) begin
    if (read) begin
        for (i = 0; i < SIZE; i = i + 1) begin
            read_out[i*BIT_WIDTH +: BIT_WIDTH] <= weights[i];
        end
    end
end

endmodule