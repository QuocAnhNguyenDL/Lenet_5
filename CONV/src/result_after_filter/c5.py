import numpy as np

# Hàm để đọc các file .list (dữ liệu ở dạng thập phân) và chuyển thành ma trận 5x5
def read_list_file(file_path):
    with open(file_path, 'r') as file:
        data = [float(num) for num in file.read().split()]  # Giữ nguyên dạng thập phân
    return np.array(data).reshape(5, 5)

# Đọc file chứa 48120 số hex và tách thành 120 bộ lọc (mỗi bộ có 16 ma trận 5x5 và một bias)
def read_weights_and_bias(file_path):
    with open(file_path, 'r') as file:
        data = [int(num, 16) for num in file.read().split()]  # Chuyển đổi hex sang thập phân
    filters = []
    for i in range(120):
        start = i * 401
        weight_matrices = [np.array(data[start + j * 25:start + (j + 1) * 25]).reshape(5, 5) for j in range(16)]
        bias = data[start + 400]
        filters.append((weight_matrices, bias))
    return filters

# Hàm thực hiện tích chập cho từng bộ lọc với các ma trận từ file .list
def convolve_matrices(list_matrices, filters):
    results = []
    for weights, bias in filters:
        conv_sum = sum(np.sum(list_matrices[i] * weights[i]) for i in range(16))  # Nhân và tổng của từng cặp ma trận
        conv_result = conv_sum + bias  # Cộng thêm bias
        results.append(conv_result)
    return results

# Đường dẫn đến file .list và file trọng số
list_files = [f"D:/DOAN/CONV/src/result_after_filter/afterS4/afterS4_{i}.list" for i in range(1, 17)]  # Đảm bảo có 16 file
weights_file = "D:/DOAN/CONV/src/kernel_c5.list"  # Cập nhật tên file trọng số
output_file = "D:/DOAN/CONV/src/result_after_filter/afterC5/afterC5.list"  # Tên file đầu ra

# Đọc các ma trận từ file .list
list_matrices = [read_list_file(file) for file in list_files]

# Đọc tất cả các bộ lọc (120 bộ lọc với 16 ma trận và một bias mỗi bộ)
filters = read_weights_and_bias(weights_file)

# Thực hiện tích chập cho từng bộ lọc
all_convolutions = convolve_matrices(list_matrices, filters)

# Ghi kết quả vào file ketquar.list
with open(output_file, 'w') as file:
    for f_idx, result in enumerate(all_convolutions):
        file.write(f"{result}\n")
        
print(f"Kết quả đã được lưu vào file {output_file}.")
