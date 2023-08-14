
# matplotlib


---


## notebook:

```py

%matplotlib widget
%matplotlib inline

%matplotlib agg
%matplotlib qt5


%matplotlib = from matplotlib import *

%pylab inline = %matplotlib inline + from numpy import *

```
---


```py
import matplotlib.pyplot as plt



绘制折线图,散点图,柱状图,直方图,箱线图,饼状图

可用风格
plt.style.available

经典白色
plt.style.use('classic')

黑色背景
plt.style.use('dark_background')



# 字体
import matplotlib
print(matplotlib.matplotlib_fname())
# font.sans-serif
plt.rcParams['font.sans-serif'] = ['SimHei']  # 用来正常显示中文标签
plt.rcParams['axes.unicode_minus'] = False  # 用来正常显示负号


import matplotlib.font_manager

font_list = sorted([font.name for font in matplotlib.font_manager.fontManager.ttflist])
print(font_list)

```

---


```py

# 图形
plt.figure

# 折线图
plt.plot()
# 显示
plt.show()
# 保存
plt.savefig()

# 坐标轴刻度
plt.xticks()
plt.yticks()

# 坐标轴标签
plt.xlabel()
plt.ylabel()

# 标题
plt.title()
# 叠加:不同样式
plt.plot()
plt.plot()
# 图例
plt.legend()
# 水印
```

---


```py

# 散点图
plt.scatter()

# 条形图
plt.bar()

# 直方图
plt.hist()

# 网格
plt.grid()

#
plotly

```
