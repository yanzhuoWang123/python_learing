python基础知识

## 一 、标准数据类型

### 1、标准数据类型

![image-20230902102113210](assets/image-20230902102113210.png)

## 2、pycharm中批量注释按住crtl+?键

## 二、列表构建及索引操作

![image-20230902103502538](assets/image-20230902103502538.png)

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

![image-20230902113255092](assets/image-20230902113255092.png)

### 7、列表推导式

b = [i for i in range(1,11)]  左闭右开

print(b)

会得到一个数组[1,2,3,4,5,6,7,8,9,10]

![image-20230902153807408](assets/image-20230902153807408.png)

### 8、***练习一：求曲边图形的面积***

![image-20230902160458956](assets/image-20230902160458956.png)

```python
# 练习1：求曲边图形的面积
import math

n = 10000  # n就是把2*pi均分成n等分，这里用了极限的思想
width = 2 * math.pi / n  # 每一份小矩形的宽度
# 方法一:利用for循环
x = []
y = []
for i in range(n):
    x.append(i * width)  # 得到包含每一个小矩形的宽度的数组
for i in x:
    y.append(abs(math.sin(i)))  # 得到每一个小矩形的长度的数组
S = sum(y) * width  # 先将长度求和再与宽度做积
print(S)

# 方法二:利用列表推导式
s = [abs(math.sin(i * width)) * width for i in range(n)]  # 利用列表推导式得到每一个小矩形的面积的数组
print(sum(s))
```

## 三、程序流程控制语句

## 1、python常用操作符

### 1.1算术操作符

![image-20230903100851077](assets/image-20230903100851077.png)

### 1.2赋值操作符

![image-20230903101154084](assets/image-20230903101154084.png)

### 1.3 比较操作符

![image-20230903101231508](assets/image-20230903101231508.png)

### 1.4 逻辑操作符

![image-20230903101345050](assets/image-20230903101345050.png)

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

```python
x = [-7, -4.5, 0, 7, 4, 5, 9, 3.4, 7.8, 9.2, 1.1]
n = len(x)
print(n)
for i in range(n):
    for j in range(i):
        if x[j] > x[i]:
            x[i], x[j] = x[j], x[i]
print(x)
```

# 四、字符串操作

## 1、字符串及其索引&切片

![image-20230903104415892](assets/image-20230903104415892.png)

![image-20230903104515198](assets/image-20230903104515198.png)

***`str[]`字符串切片是闭区间***

## 2、字符串的常见方法

![image-20230903104833888](assets/image-20230903104833888.png)

**字符串属于不可变的数据类型，不能对其直接进行修改**

## 3、字典的创建及索引

![image-20230903105922083](assets/image-20230903105922083.png)

字典中的元素无先后顺序，通过键来访问值

字典中键不能重复，值可以重复，后面的会替换前面的值

```python
dic = {'h': 'hello', 'w': 'world', 0: 0.4, 'a': 'b', 'h': 'hehe'}
print(dic)
res = dic['h']
print(res)
```

## 4、字典元素的增删改查

修改元素 可以检索原来元素直接赋值

```python
dic['h'] = 100
```

 新增键值对

```python
dic = {'h': 'hello', 'w': 'world', 0: 0.4, 'a': 'b', 'h': 'hehe'}
dic['hw'] = 'hello world'
dic.update({1: 2, 3: 4})
print(dic)
#输出结果
{'h': 'hehe', 'w': 'world', 0: 0.4, 'a': 'b', 'hw': 'hello world', 1: 2, 3: 4} 
```

删除键值对

```python
del dic['h']
print(dic)
#输出结果及与原来对比
{'h': 'hehe', 'w': 'world', 0: 0.4, 'a': 'b', 'hw': 'hello world', 1: 2, 3: 4}
{'w': 'world', 0: 0.4, 'a': 'b', 'hw': 'hello world', 1: 2, 3: 4}
```

## 5、字典推导式

```python
dic1 = {i:i**2 for i in range(10)}
print(dic1)
#输出结果
{0: 0, 1: 1, 2: 4, 3: 9, 4: 16, 5: 25, 6: 36, 7: 49, 8: 64, 9: 81}
```

# 五、python文件操作

## 1、文件操作

```python
# 文件操作
f = open("文件名.txt", 'r')  # 逗号前输入要打开的文件，后缀不能丢，逗号后边的是打开文件的方式
txt = f.read()  # 读取文件内容
txt_lines = f.readlines()  # 读取文件内容,以行为单位读取内容，也就是一个换行符一条内容
f.close()  # 关闭文件，释放内存
print(txt)
```

![image-20230908172243414](assets/image-20230908172243414.png)

![image-20230908172308269](assets/image-20230908172308269.png)

![image-20230908172340933](assets/image-20230908172340933.png)

## 2、练习三 统计文件中的单词数

```python
import re
f = open('文件名称','r')
txt = f.read() #读取进来的数据是字符串
f.close()
txt = txt.lower() #将所有字母转化成小写
txt = re.sub('[,.?:"\'!-]','',txt)  #去除文本中的标点符号，将输入的标点符号替换为空，对象是txt文件
words = txt.split() #单词分割
word_sq = {} #建立一个空字典
for i in words:
    for i not in word_sq.keys():
        word_sq[i] = 1
    else:
        word_sq[i] += 1
 res = sorted(word_sq.items(),key=lambda x:x[1],reverse=True) #排序 lambda是自定义的一个函数，在下一章节中会详细介绍
print(res)

```

# 六、函数

## 1、python函数自定义

```python
#函数自定义
#第一种方式
def Sum(x,y):   #括号中的参数，左边如果赋值，右边一定要赋值，否则会报错。如果右边赋值左边不赋值则不报错
    return x+y
#第二种方式
y = lambda x:x**2  #利用lambda定义一个简单的函数，冒号左边是变量，右边是返回值
y = lambda x:x[1]
```

## 2、练习四 自定义一个求序列偶数个数的函数

```python
def su(x):
    y = []
    for i in x:
        if i % 2 == 0:
            y.append(i)
    return y


res = su([1, 2, 3, 4, 5, 6, 7, 8, 9])
print(res)
```

## 3、python常见函数及应用

#### 3.1`append`函数

```python
append()是列表对象的一个方法，用于在列表的末尾添加一个元素。它的定义如下：

list.append(x)
其中，list表示列表对象，x表示要添加到列表末尾的元素。

使用append()方法时，会修改原始列表，并将指定的元素添加到列表的末尾。例如：

my_list = [1, 2, 3]
my_list.append(4)
print(my_list)  # 输出: [1, 2, 3, 4]
在上面的例子中，开始时my_list包含 [1, 2, 3]。然后，通过调用append(4)方法，将数字4添加到了列表的末尾，最终结果变为 [1, 2, 3, 4]。

值得注意的是，append()方法不会返回任何值，它直接操作修改了原始列表。因此，在使用append()时，不需要将其赋值给其他变量。
```

#### 3.2`insert`函数

```python
insert() 是列表对象的一个方法，用于在指定位置插入一个元素。它的语法如下：

list.insert(index, obj)
其中，list表示列表对象，index表示要插入新元素的索引（从0开始计数），obj表示要插入的元素。

使用 insert() 方法时，它会在指定的索引处插入一个新元素，并将原来索引位置以后的所有元素向后移动一个位置。例如：

my_list = [1, 2, 3]
my_list.insert(1, 'a')
print(my_list)  # 输出: [1, 'a', 2, 3]
在上面的例子中，开始时 my_list 包含 [1, 2, 3]。调用 insert(1, 'a') 方法会将字符串 'a' 插入到 my_list 的索引1处，并将原来索引为1及其之后的所有元素向后移动一个位置，最终结果变为 [1, 'a', 2, 3]。

值得注意的是，与 append() 不同，insert() 方法会影响到原始列表，并返回 None 而不是修改后的列表。
```

#### 3.3`split`函数

```python
split()是字符串的一个方法，用于根据指定的分隔符将字符串分割成多个子串，并将它们存储在列表中。它的语法如下：

str.split([sep[, maxsplit]])
其中，str表示要分割的字符串，sep表示用于分割字符串的分隔符，默认为所有空白字符（包括空格、制表符和换行符），maxsplit表示最大分割次数，默认为-1，表示不限制分割次数。

使用 split() 方法时，它会将指定字符串按照分隔符进行切割，并返回存储有所有分割后子串的列表。例如：

my_string = "The quick brown fox jumps over the lazy dog"
my_list = my_string.split()
print(my_list)  # 输出: ['The', 'quick', 'brown', 'fox', 'jumps', 'over', 'the', 'lazy', 'dog']
在上面的例子中，将字符串 "The quick brown fox jumps over the lazy dog" 赋值给变量 my_string。调用 split() 方法时，由于没有传入任何参数，因此根据默认分隔符（空白字符）将字符串分割成多个子串，并将它们存储在列表中。

你还可以自定义分隔符，例如：

my_string = "the,quick,brown,fox"
my_list = my_string.split(",")
print(my_list)  # 输出: ['the', 'quick', 'brown', 'fox']
在上面的例子中，将字符串 "the,quick,brown,fox" 赋值给变量 my_string。调用 split(",") 方法时，使用逗号作为分隔符将字符串分割成多个子串，并将它们存储在列表中。
```

#### 3.4`len`函数

```python
len() 是一个内置函数，用于返回对象的长度或元素个数。它的语法如下：

len(obj)
其中，obj表示要计算长度的对象，可以是字符串、列表、元组、字典、集合等。

使用 len() 函数时，它会返回给定对象中元素的数量。例如：

my_list = [1, 2, 3, 4, 5]
length = len(my_list)
print(length)  # 输出: 5
在上面的例子中，将列表 [1, 2, 3, 4, 5] 赋值给变量 my_list，然后调用 len() 函数计算列表的长度，并将结果赋值给变量 length，最终输出变量 length 的值为 5，表示该列表中有5个元素。

类似地，你还可以使用 len() 函数计算其他类型的对象的长度，比如字符串：

my_string = "Hello, World!"
length = len(my_string)
print(length)  # 输出: 13
在上面的例子中，将字符串 "Hello, World!" 赋值给变量 my_string，然后调用 len() 函数计算字符串的长度，并将结果赋值给变量 length，最终输出变量 length 的值为 13，表示该字符串由13个字符组成。
```

#### 3.5`input`函数

```python
input() 是一个内置函数，用于从用户处获取输入信息。它的语法如下：

input([prompt])
其中，prompt 是一个可选参数，用于在获取用户输入前向用户显示一个提示消息。

使用 input() 函数时，程序会暂停执行，等待用户在终端或命令行中输入信息。用户可以输入任意类型的数据，包括字符串、数字等。当用户按下回车键后，该函数会将用户输入的内容作为字符串返回。

以下是一个简单的示例：

name = input("请输入您的姓名：")
print("您好，" + name)
在这个例子中，调用 input() 函数并传入一个提示消息 "请输入您的姓名：" 。程序会在终端或命令行中显示该提示消息，并等待用户输入。用户可以在终端中输入他们的姓名，然后按下回车键。input() 函数会将用户输入的内容以字符串的形式返回，并将其赋值给变量 name。然后程序将打印出一条问候消息，其中包含用户输入的姓名。

需要注意的是，input() 函数返回的始终是一个字符串。如果需要将用户输入解释为其他类型（例如整数或浮点数），可以使用适当的转换函数（例如 int() 或 float()）将其转换为所需的类型。
```

#### 3.6`remove`函数

```python
remove() 是列表（list）的一个方法，用于从列表中移除指定值的元素。它的语法如下：

list.remove(obj)
其中，list表示要进行删除操作的列表，obj表示要从列表中移除的元素。

使用 remove() 方法时，它会从列表中寻找第一个等于指定元素的值，并将其移除。如果列表中不存在该元素，则会抛出 ValueError 异常。例如：

my_list = [1, 2, 3, 4, 5]
my_list.remove(3)
print(my_list)  # 输出: [1, 2, 4, 5]
在上面的例子中，将列表 [1, 2, 3, 4, 5] 赋值给变量 my_list，然后调用 remove(3) 方法移除列表中第一个值为 3 的元素。由于该元素存在于列表中，因此将其从列表中移除，并将剩余的元素 [1, 2, 4, 5] 存储在变量 my_list 中。

如果 remove() 方法尝试从列表中移除不存在的元素，则会引发 ValueError 异常。例如：

my_list = [1, 2, 3, 4, 5]
my_list.remove(6)  # 抛出 ValueError：list.remove(x): x not in list
在上面的例子中，尝试从列表 [1, 2, 3, 4, 5] 中移除值为 6 的元素。由于该元素不存在于列表中，因此会抛出 ValueError 异常。
```

#### 3.7`strip`函数

```python
strip() 是字符串的一个方法，用于去除字符串两端指定的字符（默认为空格）或字符序列。它的语法如下：

str.strip([chars])
其中，str 表示要进行处理的字符串，chars 是一个可选参数，表示要去除的字符或字符序列。

使用 strip() 方法时，它会从字符串的开头和结尾开始，连续地去除所有在 chars 参数中指定的字符或字符序列，直到遇到第一个不在 chars 中的字符为止。如果没有提供 chars 参数，则默认去除字符串两端的空格。

以下是一些示例：

str1 = "  hello world  "
str2 = "---hello---world---"
str3 = "   hello world"

print(str1.strip())     # 输出: "hello world"
print(str2.strip("-"))  # 输出: "hello---world"
print(str3.strip())     # 输出: "hello world"
在这些示例中，分别对字符串 str1、str2 和 str3 调用 strip() 方法。由于没有指定 chars 参数，它们都会删除字符串两端的空格字符。

需要注意的是，strip() 方法返回一个新的字符串，原始字符串并未被修改。如果需要将修改后的结果保存，可以将其赋值给一个新的变量。如果希望在原始字符串上进行修改，可以使用赋值运算符将其重新赋值。
```

#### 3.8`lower&upper`函数

```python
lower() 是字符串的一个方法，用于将字符串中的所有大写字母转换为小写字母。它的语法如下：

str.lower()
其中，str 表示要进行处理的字符串。

使用 lower() 方法时，它会将字符串中的所有大写字母转换为对应的小写字母，并返回一个新的字符串。原始字符串并未被修改。

以下是两个示例：

str1 = "Hello World"
str2 = "PYTHON"

print(str1.lower())  # 输出: "hello world"
print(str2.lower())  # 输出: "python"
在上面的示例中，分别对字符串 str1 和 str2 调用 lower() 方法。它们会将字符串中的所有大写字母转换为小写字母，并返回新的字符串。


str3 = "hello world"
str4 = "python"

print("Hello World")
print("PYTHON")
在上面的示例中，分别对字符串 str3 和 str4 调用了 upper()方法。 它们会将字符串中的小写字母转换为大写字母，并返回新的字符串。
需要注意的是，lower() 方法只会转换大写字母，而对于非字母字符不做任何改变，upper()只转换小写字母。
```

#### 3.9 `title和capitalize`函数的区别

```python
title() 和 capitalize() 都是字符串的方法，用于将字符串中的第一个字符转换为大写字母。它们的区别在于，title() 方法会将每个单词的第一个字符都转换为大写字母，而 capitalize() 方法只会将第一个单词的第一个字符转换为大写字母。

下面我们分别来介绍这两个方法的使用：

title()
title() 方法用于将字符串中每个单词的第一个字符转换为大写字母，其余字符转换为小写字母，返回新的字符串。示例如下：

string = "hello world, how are you?"
print(string.title()) # 输出: "Hello World, How Are You?"
在上面的示例中，title() 方法将字符串中每个单词的第一个字符转换为大写字母，其余字符都转换为小写字母，并返回了新的字符串。

capitalize()
capitalize() 方法用于将字符串中第一个字符转换为大写字母，返回新的字符串。示例如下：

string = "hello world"
print(string.capitalize()) # 输出: "Hello world"
在上面的示例中，capitalize() 方法将字符串中第一个字符 "h" 转换为大写字母 "H"，并返回了新的字符串。

需要注意的是，capitalize() 方法只会将第一个单词的第一个字符转换为大写字母，而后面的单词和字符不会改变。
```

#### 3.10`del`函数

```python
del 是 Python 的一个关键字，可以用于删除列表中的元素、删除变量或删除整个变量名。它的语法如下：

删除列表中的元素
del list[index]
其中，list 表示要进行操作的列表，index 表示要删除元素的下标。

使用 del 关键字时，它会将列表中指定下标的元素删除，并将后面的元素向前移动一个位置，使得列表中没有空的位置。如果指定的下标超出了列表的范围，会引发 IndexError 异常。

以下是一个示例：

my_list = [1, 2, 3, 4, 5]
del my_list[2]  # 删除下标为 2 的元素，即 3
print(my_list)  # 输出: [1, 2, 4, 5]
在上面的示例中，我们先定义了一个列表 my_list，然后使用 del 关键字删除下标为 2 的元素，即元素值为 3 的元素。最后打印列表，发现元素 3 已经被删除了。

删除变量或删除整个变量名
del var_name
其中，var_name 表示要删除的变量名。

使用 del 关键字删除变量时，它会将该变量从内存中删除，使得该变量名不能再被访问。如果试图访问已经被删除的变量名，会引发 NameError 异常。

以下是一个示例：

my_var = 10
del my_var # 删除变量名 my_var
print(my_var) # 试图访问已经被删除的变量名，会引发 NameError 异常
在上面的示例中，我们先定义了一个变量 my_var，然后使用 del 关键字删除该变量名，最后试图访问已经被删除的变量名 my_var，结果引发了 NameError 异常。

需要注意的是，使用 del 关键字删除列表中的元素或变量名时，它们都会从内存中被删除，因此谨慎使用以免误删。
```

#### 3.11`pop`函数

```python
pop() 是列表（list）的一个方法，用于删除并返回指定位置的元素。它可以在指定索引上删除列表中的元素，并返回被删除的元素值。pop() 的语法如下：

list.pop(index)
其中，list 是要进行操作的列表，index 是要删除的元素的索引。如果不指定索引，默认删除并返回列表中的最后一个元素。

下面是几个使用 pop() 方法的示例：

删除并返回指定索引的元素
my_list = [1, 2, 3, 4, 5]
removed_element = my_list.pop(2)  # 删除并返回索引为 2 的元素，即元素值为 3
print(my_list)  # 输出: [1, 2, 4, 5]
print(removed_element)  # 输出: 3
在上面的示例中，我们定义了一个列表 my_list，然后使用 pop() 方法删除索引为 2 的元素，即元素值为 3 的元素。删除后，列表变为 [1, 2, 4, 5]，同时被删除的元素值 3 被保存到 removed_element 变量中，并打印出来。

不指定索引，默认删除并返回最后一个元素
my_list = [1, 2, 3, 4, 5]
removed_element = my_list.pop()  # 默认删除并返回最后一个元素，即元素值为 5
print(my_list)  # 输出: [1, 2, 3, 4]
print(removed_element)  # 输出: 5
在上面的示例中，我们同样定义了一个列表 my_list，但这次没有指定索引，而是使用 pop() 方法默认删除并返回最后一个元素。删除后，列表变为 [1, 2, 3, 4]，同时被删除的元素值 5 被保存到 removed_element 变量中，并打印出来。

需要注意的是，如果指定的索引超出了列表的范围，会引发 IndexError 异常。因此，在使用 pop() 方法时，确保提供的索引是有效的
```

#### 3.12`sorted`函数

```python
sorted() 是 Python 内置的一个函数，用于对可迭代对象进行排序操作。它接受一个可迭代对象作为参数，并返回一个新的已排序的列表（或者是其他可迭代对象，取决于传入参数的类型）。

sorted() 的语法如下：
sorted(iterable, key=None, reverse=False)
其中:
iterable：表示要排序的可迭代对象，例如列表、元组、字符串等。
key：用于指定一个函数（通常是匿名函数）来从每个元素中提取一个比较键。排序将根据这些键来进行，而不是直接使用元素进行排序。该参数是可选的。
reverse：表示是否按逆序进行排序，默认为 False，表示升序排序。如果设置为 True，则表示降序排序。该参数也是可选的。
以下是几个使用 sorted() 函数的示例：

对列表进行排序
my_list = [3, 1, 4, 2, 5]
sorted_list = sorted(my_list)
print(sorted_list)  # 输出: [1, 2, 3, 4, 5]
在上面的示例中，我们定义了一个列表 my_list，然后使用 sorted() 函数对该列表进行排序。排序后，生成一个新的已排序列表并赋值给 sorted_list 变量，并打印出来。

对字符串进行排序
my_string = 'hello'
sorted_string = sorted(my_string)
print(sorted_string)  # 输出: ['e', 'h', 'l', 'l', 'o']
在上面的示例中，我们定义了一个字符串 my_string，然后使用 sorted() 函数对该字符串进行排序。排序后，生成一个新的已排序列表并赋值给 sorted_string 变量，并打印出来。注意，字符串被拆分成单个字符进行排序。

使用键函数进行排序
my_list = ['apple', 'banana', 'orange', 'grape']
sorted_list = sorted(my_list, key=lambda x: len(x))
print(sorted_list)  # 输出: ['grape', 'apple', 'banana', 'orange']
在上面的示例中，我们定义了一个列表 my_list，并使用键函数 lambda x: len(x) 来指定以字符串长度作为排序的依据。根据字符串的长度对列表进行排序后，生成一个新的已排序列表并赋值给 sorted_list 变量，并打印出来。

需要注意的是，sorted() 函数并不会修改原始的可迭代对象，而是返回一个新的已排序的对象。
```

#### 3.13`sort`函数

```python
sort() 是列表（list）的一个方法，用于对列表进行原地排序。它会修改原始列表，在排序完成后，原始列表的元素顺序会被改变。

sort() 的语法如下：

list.sort(key=None, reverse=False)
其中:

key：用于指定一个函数（通常是匿名函数）来从每个元素中提取一个比较键。排序将根据这些键来进行，而不是直接使用元素进行排序。该参数是可选的。
reverse：表示是否按逆序进行排序，默认为 False，表示升序排序。如果设置为 True，则表示降序排序。该参数也是可选的。
以下是几个使用 sort() 方法的示例：

对列表进行排序
my_list = [3, 1, 4, 2, 5]
my_list.sort()
print(my_list)  # 输出: [1, 2, 3, 4, 5]
在上面的示例中，我们定义了一个列表 my_list，然后使用 sort() 方法对该列表进行排序。排序完成后，原始列表 my_list 的元素顺序被改变，并打印出来。

使用键函数进行排序
my_list = ['apple', 'banana', 'orange', 'grape']
my_list.sort(key=len)
print(my_list)  # 输出: ['grape', 'apple', 'banana', 'orange']
在上面的示例中，我们同样定义了一个列表 my_list，并使用键函数 len 来指定以字符串长度作为排序的依据。根据字符串的长度对列表进行排序后，原始列表 my_list 的元素顺序被改变，并打印出来。

需要注意的是，与 sorted() 不同，sort() 方法直接在原始列表上进行排序，而不生成一个新的已排序列表。因此，使用 sort() 会改变原始列表的顺序。
```

**`sort与sorted`函数均默认升序排序,若想将其修改为降序,则需将reverse设置为True**

#### 3.14`reverse`函数

```python
reverse() 是列表对象的方法，用于将列表中的元素进行反转（翻转），也就是将列表中的元素顺序颠倒过来。 reverse() 方法没有返回值，它会直接在原始列表上进行修改。

reverse() 方法的语法如下：

list.reverse()
其中，list 指代要进行反转操作的列表对象。

以下是一个使用 reverse() 方法的例子：

my_list = [1, 2, 3, 4, 5]
my_list.reverse()
print(my_list)  # 输出：[5, 4, 3, 2, 1]
在上面的例子中，我们定义了一个列表 my_list，并使用 reverse() 方法对其进行反转。结果，原始列表 my_list 中的元素顺序被改变，从而得到了反转后的新列表 [5, 4, 3, 2, 1]。

需要注意的是，与 sort() 方法类似，reverse() 方法也是直接在原始列表上进行修改的，并且它没有返回值。如果你想要得到一个新的已反转列表，可以先使用切片的方式复制一份原始列表，再对复制后的列表进行反转操作。
```

