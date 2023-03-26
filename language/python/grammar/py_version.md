# python version

```py
import sys
print(sys.version)

# 2或3
sys.version_info.major

```


## 字符串
### Python2:
- 默认字符串默认使用ascii编码的字节字符
- 默认编码是ascii，处理非ascii编码字符串时，报错：
UnicodeDecodeError: 'ascii' codec can't decode byte 0x?? in position 1: ordinal not in range(128)
- 需要手动设置设置编码格式
```py
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
```

### Python3:
- 默认编码是utf-8
- 默认字符串以非字节字符编码，使用unicode字符集表示

具体原因：
- Python2中，str和bytes类型之间没有明显区别，经常要依赖于defaultencoding来做转换
- Python3中，str和bytes类型之间有了明确区别，可以使用显示的encode和decode来做转换


---
## 输入输出

### Python2:
```py
i = raw_input("prompt:") # int
s = input("prompt:") # str
print var
print(var)
```
- Python2不支持使用冒号指定类型，Python3支持
------------------------------------------------

### ### Python3:

```py
s:str = input("")
print(var)
```


---


### Python2:
- range(n):列表list
- xrange(n):对象xrange

------------------------------------------------


### ### Python3:
- range(n):对象range, range对象中的元素不可以改变
- list(range(n)):列表list，效果同Python2中的range(n)
- xrange(n):`name 'xrange' is not defined`

- range()不需要参数名和等号：start＝, stop＝, step＝
```py
range(stop) # start=0, stop=1
range(start, stop) # step=1
range(start, stop, step)
```
- 包含start但不包含stop

---
## 自定义类

- ### Python2:
```py
class ExtentsObject(object):


    pass
```
- ### ### Python3:
```
class CustomClass:

    def __init__():

        pass

    def method():

        pass

    @classmethod
    def classmethod

        pass

    @staticmethod
    def staticmethod():

        pass

    pass
```
- 构造函数:`__init__()`定义类的属性self.field
- 类方法:`@classmethod`(可访问class不可访问self)
- 静态方法:`@staticmethod`(不可访问self和class)

---

## 对象转化为字符串:str()
> 本质是执行类的魔法方法

### Python3:
- `__str__()`:unicode字符串
- `__reor__()`:python解释器


### Python2
- `__str__()`:返回字节
- `__unicode()__`:返回字符



---


