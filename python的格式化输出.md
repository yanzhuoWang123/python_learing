# python的格式化输出

## python字符串格式化输出的三种方式:

### 1、`f-string`

```python
name = input()
print(f'I am {name} and I am studying Python in Nowcoder!')

f-string 是 Python 3.6 中引入的一种新的字符串格式化方法，它允许在字符串中直接嵌入变量，并且使用 {} 包含变量名即可。当程序遇到这样的字符串时，会自动将 {} 中的表达式计算出来，并将结果转换成字符串后插入到字符串中。
在这个例子中，f'I am {name} and I am studying Python in Nowcoder!' 的意思是要打印一个字符串，其中包含变量 name 的值。由于使用了 f-string，所以可以直接在字符串中使用 {} 将变量名嵌入其中。
例如，如果用户输入的名字是 "Charlie"，那么程序将输出 "I am Charlie and I am studying Python in Nowcoder!"。
```

### 2、`format`

```python
name = input()
print('I am {} and I am studying Python in Nowcoder!'.format(name))

这里使用了 str.format() 方法来进行字符串格式化。在这个方法中，{} 是一个占位符，表示后面会传入一个值来替换它。在这个例子中，{} 表示会被变量 name 的值替换。
例如，如果用户输入的名字是 "Bob"，那么程序将输出 "I am Bob and I am studying Python in Nowcoder!"。
```

### 3、`%格式化`

```python
name = input()
print('I am %s and I am studying Python in Nowcoder!'%name)

首先，它使用 input() 函数接收用户的输入，并将输入的值存储在变量 name 中。
然后，通过使用字符串格式化的方式，将用户输入的名字插入到输出语句中，打印出一条消息。输出语句中的 %s 是一个占位符，会被变量 name 的值替代。
例如，如果用户输入的名字是 "Alice"，那么程序将输出 "I am Alice and I am studying Python in Nowcoder!"。
```

## python数字格式化输出的三种方式：

### 1、使用字符串的` format()` 方法

```python
这种方法可以通过在字符串中使用大括号 {} 和冒号 : 来指定格式，并调用 format() 方法将数字作为参数传递进去。

例如，可以使用 {:.2f} 来保留两位小数：

num = 3.14159
formatted_num = "{:.2f}".format(num)
print(formatted_num)  # 输出：3.14
使用 f-string
```

### 2、`f-string` 也可以用于数字格式化输出

```python
可以在大括号 {} 中使用 : 来指定格式。

例如，可以使用 :.2f 来保留两位小数：

num = 3.14159
formatted_num = f"{num:.2f}"
print(formatted_num)  # 输出：3.14
```

### 3、使用内置函数 `format()`

```python
Python 还提供了一个内置函数 format()，可以用于对数字进行格式化输出。它接受一个格式字符串和一个或多个要格式化的值。

例如，可以使用 "{:.2f}".format(num) 将数字格式化为保留两位小数。

这种方法与第一种方法中使用字符串的 format() 方法是等价的。

num = 3.14159
formatted_num = format(num, ".2f")
print(formatted_num)  # 输出：3.14
```


