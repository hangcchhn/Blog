# NumPy


- 安装：`pip install numpy`
- 导包：`import numpy as np`

---


数组np.ndarray

输出print(array)
一维数组:[1 2 3]
二维数组:
        [[1 2 3]
        [4 5 6]]

array = np.array()：参数是元组，列表或数组

np.arange()：参数是stop=stop，start=stop，step=stop
arange(stop=stop) # start=0, stop=1
arange(start, stop=stop) # step=1
arange(start=start, stop=stop, step=step)

array.data
array.size
array.itemsize



array.dtype
数据类型：位数
int|uint:8,16,32,64
float:16,32,64,128
complex:64,128,256s
bool->True,False

---
二维数组：行row和列col

array[row_start:row_stop:row_step, col_start:col_stop:col_step]


---

n维数组
n = array.ndim
维ndim从1开始
轴axis从0开始
n维的轴从0轴到n-1轴
0 <= i <= n-1,Si=i轴长度（数据个数）

数组形状使用元组表示
np.ndarray.shape
数组的形状(Sn-1, ... S1, S0)
数组的形状相当于整数坐标系中的点


二维数组n=2
形状(y,x,)
描述y行x列
x表示横x轴对应的整数
y表示纵y轴对应的整数

统计函数

n维数组统计函数参数轴
axis最大可设置为n-1

二维数组使用统计函数：
不设置axis表示全部统计，结果一个
设置axis=0表示按列统计，结果x个
设置axis=1表示按行统计，结果y个

np.size(array)
np.size(array, axis=n)
np.size(array)



直接改变原数组维度
array.resize(y, x)
原数组不变，生成新数据
new_array = old_array.reshape(y, x)

多维数组转化为一维数组
array.flatten() = array.ravel()

---

累加:array.sum()
:array.cumsum()

累乘:array.prod()
np.prod(array)


均值:array.mean()
中值:np.median(array)
最大值:array.max()
最小值:array.min()

标准差:array.std()


极差:np.ptp(array) = array.ptp()




(array == '').any()

(array == '').all()



---





---
numpy:父类ndarray（数组）|子类matrix（矩阵）


---

通用函数unfunc


广播原则：数组与数字之间的加减乘除运算操作都被作用到所有元素上

两个相同维度数组之间的运算：对应位置数字运算
两个不同维度数组之间的运算：
1.其中一个为一维
2.后缘维度(从末尾开始算起的维度)的轴长相符，例子：(z,y,x)与(y,x)




CSV：Comma Separated Value
换行和逗号分隔行和列数据：相当于表格数据
np.loadtxt()

转置
array.T
array.transpose()
array.swapaxes(1,0)

数组类似列表

下标索引位置
[]
切片
:
赋值
=

数值数组转换布尔数组
array >,<,<=,>= ,!=,<>,== 0

条件赋值
array[array>,<,<=,>= ,!=,<>,== 0] = 0
np.where(array>,<,<=,>= ,!=,<>,== 0, -1,1)
裁剪
array.clip(-1,1)
---





拼接：水平|竖直
np.hstack((array1,array2))
np.vstack((array1,array2))

二维数组：行列交换
array[[i,j],:] = array[[j,i],:]
array[:,[i,j]] = array[:,[j,i],:]


返回最大值最小值下标索引位置
array.argmax()
array.argmin()
np.argmax(array)
np.argmin(array)



---

生成均匀分布样本
np.linspace()


---

特殊元素

np.float
np.inf
np.nan = float('nan')
两个nan是不相等的
nan与任何数值计算都得nan


特殊矩阵

单位矩阵：二维方阵（等宽行列）
np.eye(3)

零矩阵
np.zeros([2, 3])


空矩阵
np.empty([2, 3])


---

去重
np.unique(array)

---

绝对值:np.abs(array)
开根号:np.sqrt(array)
e^x:np.exp(array)

np.sign(array)
x > 0 => 1
x == 0 => 0
x < 0 => -1

向上取整:np.ceil(array)
向下取整:np.floor(array)

四舍五入取整:np.rint(array)

np.modf(array)
返回数组的小数部分和整数部分作为单独的数组

判断是否
np.isnan(array)
np.isfinite(array)
np.isinf(array)

对数
np.log(array)
np.log2(array)
np.log10(array)
np.log1p(array)

---
三角函数
:np.cos(array)
:np.cosh(array)
:np.sin(array)
:np.sinh(array)
:np.tan(array)
:np.tanh(array)
:np.arccos(array)
:np.arccosh(array)
:np.arcsin(array)
:np.arcsinh(array)
:np.arctan(array)
:np.arctanh(array)

