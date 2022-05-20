# numpy ndarray

## 等号 

> 指针 -> 内存  
> 引用 -> 对象

- 赋值
`array1 = array2`
指针不同，内存相同

- 切片
`array1 = array2[:]`

- 视图
`array1 = array2.view()`

- 复制
`array1 = array2.copy()`
指针不同，内存不同

```python


a = numpy.array(range(12))
print(id(a))
print(a)
print("=" * 10)

b = a
print(id(b))
b[0] = 9
print(a)
print("=" * 10)

c = a[:]
print(id(c))
c[1] = 9
print(a)
print("=" * 10)

d = a.view()
print(id(d))
d[2] = 9
print(a)
print("=" * 10)

e = a.copy()
print(id(e))
e[3] = 9
print(a)

"""
4422450272
[ 0  1  2  3  4  5  6  7  8  9 10 11]
==========
4422450272
[ 9  1  2  3  4  5  6  7  8  9 10 11]
==========
4424218944
[ 9  9  2  3  4  5  6  7  8  9 10 11]
==========
4424219024
[ 9  9  9  3  4  5  6  7  8  9 10 11]
==========
4424219104
[ 9  9  9  3  4  5  6  7  8  9 10 11]

"""
```