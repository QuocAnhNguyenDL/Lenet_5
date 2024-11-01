import numpy as np

# Đọc tệp input và xử lý định dạng để tạo numpy array (giả sử input là dạng thập phân)
with open("D:/DOAN/CONV/src/result_after_filter/afterF6/afterF6.list", 'r') as f:
    input_data = []
    for line in f.read().split():
        try:
            input_data.append(float(line))  # Chuyển đổi từ chuỗi thập phân sang float
        except ValueError:
            print(f"Bỏ qua giá trị không hợp lệ: {line}")

input_data = np.array(input_data)

# Kiểm tra số lượng đầu vào để đảm bảo là 84
if len(input_data) != 84:
    raise ValueError("Số lượng đầu vào phải là 84 nơ-ron.")

# Đọc tệp weights và biases, có 10 bộ weights (mỗi bộ gồm 84 weights) và 10 biases
weights = []
biases = []
with open("D:/DOAN/CONV/src/weights_f7.list", 'r') as f:
    lines = []
    for line in f.read().split():
        try:
            # Chuyển đổi từ hex sang float
            lines.append(float.fromhex(line))
        except ValueError:
            print(f"Bỏ qua giá trị không hợp lệ: {line}")

# Kiểm tra nếu số lượng giá trị là bội số của 85 để chia đủ cho 10 nơ-ron đầu ra
if len(lines) < 10 * 85:
    raise ValueError("Số lượng giá trị trong tệp weights không đủ cho 10 nơ-ron đầu ra, mỗi nơ-ron có 84 weights và 1 bias.")
else:
    for i in range(10):
        start = i * 85
        weights.append(lines[start:start+84])  # 84 weights per neuron
        biases.append(lines[start+84])         # 1 bias per neuron

# Chuyển weights và biases sang numpy arrays
weight_matrix = np.array(weights)  # 10 x 84 matrix
bias_vector = np.array(biases)     # 10 biases

# Tính toán đầu ra cho lớp fully connected (không áp dụng softmax)
output_raw = np.dot(weight_matrix, input_data) + bias_vector

# Ghi kết quả vào file output.txt
with open("D:/DOAN/CONV/src/result_after_filter/afterF7/afterF7.list", 'w') as f:
    for output in output_raw:
        f.write(f"{int(output)}\n")

print("Kết quả đã được ghi vào file afterF7.list")
