import numpy as np

# Đọc tệp input và xử lý định dạng để tạo numpy array (giả sử input là dạng thập phân)
with open("D:/DOAN/CONV/src/result_after_filter/afterC5/afterC5.list", 'r') as f:
    input_data = []
    for line in f.read().split():
        try:
            input_data.append(float(line))  # Chuyển đổi từ chuỗi thập phân sang float
        except ValueError:
            print(f"Bỏ qua giá trị không hợp lệ: {line}")

input_data = np.array(input_data)

# Đọc tệp weights và biases, mỗi lớp có 120 weight và 1 bias, và chuyển đổi từ hex sang float
weights = []
biases = []
with open("D:/DOAN/CONV/src/weights_f6.list", 'r') as f:
    lines = []
    for line in f.read().split():
        try:
            # Chuyển đổi từ hex sang float
            lines.append(float.fromhex(line))
        except ValueError:
            print(f"Bỏ qua giá trị không hợp lệ: {line}")

# Kiểm tra nếu số lượng giá trị là bội số của 121 để chia đủ cho 84 lớp
if len(lines) < 84 * 121:
    print("Số lượng giá trị trong tệp weights không đủ để chia thành 84 lớp, mỗi lớp có 120 weights và 1 bias.")
else:
    for i in range(84):
        start = i * 121
        weights.append(lines[start:start+120])  # 120 weight
        biases.append(lines[start+120])         # 1 bias

    # Tính toán đầu ra cho mỗi lớp fully connected
    outputs = []
    for i in range(84):
        weight_matrix = np.array(weights[i])
        bias = biases[i]
        output = np.dot(input_data, weight_matrix) + bias
        outputs.append(output)

    # Ghi kết quả vào file output.txt
    with open("D:/DOAN/CONV/src/result_after_filter/afterF6/afterF6.list", 'w') as f:
        for output in outputs:
            f.write(f"{output}\n")

    print("Kết quả đã được ghi vào file afterF6.list")
