import numpy as np
from scipy.ndimage import convolve

def convolution2d(input_array, kernel, bias=0, stride=1):
    input_height, input_width = input_array.shape
    kernel_height, kernel_width = kernel.shape
    
    output_height = (input_height - kernel_height) // stride + 1
    output_width = (input_width - kernel_width) // stride + 1
    
    output_array = np.zeros((output_height, output_width))
    
    for i in range(0, output_height):
        for j in range(0, output_width):
            region = input_array[i*stride:i*stride+kernel_height, j*stride:j*stride+kernel_width]
            output_array[i, j] = np.sum(region * kernel) + bias

    output_array = output_array.astype(int)
    
    return output_array

def conv3d(input_image, kernel, bias=0):
    num_channels, image_height, image_width = input_image.shape
    kernel_channels, kernel_height, kernel_width = kernel.shape
    
    assert num_channels == kernel_channels, "Number of channels in input and kernel must match"
    
    output_height = image_height - kernel_height + 1
    output_width = image_width - kernel_width + 1
    
    output = np.zeros((output_height, output_width))
    
    for i in range(output_height):
        for j in range(output_width):
            region = input_image[:, i:i+kernel_height, j:j+kernel_width]
            output[i, j] = np.sum(region * kernel) + bias 

    output = output.astype(int)
    
    return output

def max_pooling2d(input_array, pool_size=2, stride=2):
    input_height, input_width = input_array.shape
    
    output_height = (input_height - pool_size) // stride + 1
    output_width = (input_width - pool_size) // stride + 1
    
    pooled_array = np.zeros((output_height, output_width))
    
    for i in range(0, output_height):
        for j in range(0, output_width):
            region = input_array[i*stride:i*stride+pool_size, j*stride:j*stride+pool_size]
            pooled_array[i, j] = np.max(region)

    pooled_array = pooled_array.astype(int)

    return pooled_array

def load_matrix(file_path):
    with open(file_path, 'r') as f:
        # Đọc dữ liệu từ file và chuyển thành mảng 14x14
        data = f.read().strip().split()
        matrix = np.array(data, dtype=float).reshape(14, 14)
    return matrix



def write(output_array, file_path):
    with open(file_path, 'w') as file:
        rows, cols = output_array.shape
        for i in range(rows):
            for j in range(cols):
                file.write(f"{output_array[i, j]:>5} ")
            file.write("\n")

file_path = 'D:/DOAN/CONV/src/result_after_filter/afterC3/afterC3_16.list'
with open(file_path, 'r') as file:
    content = file.readlines()

content[:10]
data = []
for line in content:
    row = list(map(int, line.split()))
    data.append(row)

array_2d = np.array(data)

kernel = np.array((5,5))
print(kernel)

kernel = np.array([[2, 2, 2, 2, 2],
                   [2, 2, 2, 2, 2],
                   [2, 2, 2, 2, 2],
                   [2, 2, 2, 2, 2],
                   [2, 2, 2, 2, 2]])

file_list = [
    'D:/DOAN/CONV/src/result_after_filter/afterS2/afterS2_1.list',
    'D:/DOAN/CONV/src/result_after_filter/afterS2/afterS2_2.list',
    'D:/DOAN/CONV/src/result_after_filter/afterS2/afterS2_3.list',
    'D:/DOAN/CONV/src/result_after_filter/afterS2/afterS2_4.list',
    'D:/DOAN/CONV/src/result_after_filter/afterS2/afterS2_5.list',
    'D:/DOAN/CONV/src/result_after_filter/afterS2/afterS2_6.list'
]
multi_dim_array = np.zeros((6, 14, 14))
for i, file_path in enumerate(file_list):
    multi_dim_array[i] = load_matrix(file_path)

kernelC3 = np.zeros((6, 5, 5))

# Gán giá trị cho từng lớp
for i in range(6):
    kernelC3[i] = (i + 1)  # Lớp 0 là 1, lớp 1 là 2, ..., lớp 5 là 6

#multi_dim_array = conv3d(multi_dim_array, kernelC3, 9)

#array_2d = convolution2d(array_2d, kernel, bias = 6, stride = 1)
array_2d = max_pooling2d(array_2d, 2, 2)

#CAN THAN TRUOC KHI CHAY
write(array_2d, 'D:/DOAN/CONV/src/result_after_filter/afterS4/afterS4_16.list')
