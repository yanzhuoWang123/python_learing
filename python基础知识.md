python基础知识

## 一 、标准数据类型

### 1、标准数据类型

![image-20230902102113210](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230902102113210.png)

### 2、math库中的各种数学函数

![img](https://p.ananas.chaoxing.com/star3/origin/b00a4a521dbf1c26883ee39d00cb05b3.png)

## 3、pycharm中批量注释按住crtl+?键

## 二、列表构建及索引操作

![image-20230902103502538](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230902103502538.png)

### 1、列表的索引

all_in_list = [0.3,'hello',True]

从左往右查找(索引)时，从0开始往后算，0、1、2、3........

相反，从右往左查找时，从-1开始算，-1，-2，-3......

### 2、列表的切片

res = all_in_list[0:2]

print(res)

[0.3,'hello']

列表的切片从0开始计算，左闭右开，顾头不顾尾..

### 3、列表的增添

all_in_list.append('pre-hello')  向列表里增添元素调用append方法

all_in_list.insert(0,'pre-hello') 向列表里增加元素还可以用insert方法

### 4、列表的删除

all_in_list.remove('pre-hello')  列表的删除可以调用remove方法

del all_in_list[0:2]   列表的删除还可以直接调用del函数

### 5、列表的修改

all_in_list[0]='hello world'  修改列表里的元素可以直接对列表里的元素赋值

### 6、更多列表的方法

![image-20230902113255092](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230902113255092.png)

### 7、列表推导式

b = [i for i in range(1,11)]  左闭右开

print(b)

会得到一个数组[1,2,3,4,5,6,7,8,9,10]

![image-20230902153807408](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230902153807408.png)

### 8、***练习一：求曲边图形的面积***

![image-20230902160458956](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230902160458956.png)

![image-20230902161047379](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230902161047379.png)

## 三、程序流程控制语句

## 1、python常用操作符

### 1.1算术操作符

![image-20230903100851077](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903100851077.png)

### 1.2赋值操作符

![image-20230903101154084](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903101154084.png)

### 1.3 比较操作符

![image-20230903101231508](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903101231508.png)

### 1.4 逻辑操作符

![image-20230903101345050](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903101345050.png)

## 2、python条件判定语句

if 语句

if 判断语句：

​    print('输出语句')

if 判断语句1：

​    print('输出语句1')

elif 判断语句2：

​	print('输出语句2')

else:

​	print('输出语句3')

## 3、***练习二：冒泡排序***

![image-20230903103452734](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903103452734.png)

![image-20230903103519780](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903103519780.png)

# 四、字符串操作

## 1、字符串及其索引&切片

![image-20230903104415892](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903104415892.png)

![image-20230903104515198](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903104515198.png)

## 2、字符串的常见方法

![image-20230903104833888](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903104833888.png)

**字符串属于不可变的数据类型，不能对其直接进行修改**

## 3、字典的创建及索引

![image-20230903105922083](C:\Users\13343\AppData\Roaming\Typora\typora-user-images\image-20230903105922083.png)

字典中的元素无先后顺序，通过键来访问值

字典中键不能重复，值可以重复，后面的会替换前面的值

```python
dic = {'h': 'hello', 'w': 'world', 0: 0.4, 'a': 'b', 'h': 'hehe'}
print(dic)
res = dic['h']
print(res)
```



