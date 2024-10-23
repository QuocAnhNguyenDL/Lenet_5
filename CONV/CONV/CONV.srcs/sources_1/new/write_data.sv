module signal_to_file #(parameter BIT_WIDTH = 8)(
    input clk,
    input rst_n,
    input [BIT_WIDTH-1:0] signal_out // Tín hiệu mà bạn muốn ghi ra file
);
    integer file; // File handler để mở file
    integer count = 0; // Bộ đếm số lần đã ghi ra file

    // Khối khởi tạo để clear file trước khi bắt đầu ghi
    initial begin
        file = $fopen("D:/DOAN/CONV/src/result_after_filter/writedata.txt", "w"); // Mở file ở chế độ ghi để clear nội dung cũ
        $fclose(file); // Đóng file ngay sau khi clear
    end

    // Khối always để ghi giá trị của signal_out ra file mỗi nhịp clk
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count = 0; // Đặt lại bộ đếm khi reset
        end else begin
            file = $fopen("D:/DOAN/CONV/src/result_after_filter/writedata.txt", "a"); // Mở file ở chế độ append để ghi giá trị mới
            if (count < 9) begin
                $fwrite(file, "%0d ", signal_out); // Ghi số và thêm khoảng trắng giữa các số
                count = count + 1;
            end else begin
                $fwrite(file, "%0d\n", signal_out); // Ghi số và xuống dòng sau số thứ 10
                count = 0; // Đặt lại bộ đếm sau khi ghi đủ 10 số
            end
            $fclose(file); // Đóng file sau mỗi lần ghi
        end
    end
endmodule