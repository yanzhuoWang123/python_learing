# 数据分析之numpy&pandas

## 一、mumpy

## 1.1 、numpy属性

```python
import numpy as np                # 导入numpy包

array = np.array([[1,2,3],        # ()中有两个[]表示该数组为二维数组
                [2,3,4]])       

# 以下是其几个属性
print(array) #输出数组
[[1 2 3]
[2 3 4]]     # 没有`,`作分隔符
print('number of dim:',array.ndim) # 输出该数组是几维数组
number of dim:2 # 表示该数组是2维数组
print('shape:',array.shape) # 输出该数组形状
shape:(2,3) # 表示该数组形状为2行3列
print('size:',array.size) # 输出该数组长元素个数
size:6 # 表示该数组共有6个元素
```

## 1.2、numpy的创建array

```python
import numpy as np

a = np.array([[1,2,3],
             [4,5,6]],np.dtype) # 创建一个2行3列的数组，并查询其类型
print(a) #输出数组
print(a.type) #输出类型
[[1 2 3]
 [4 5 6]]
object
```

