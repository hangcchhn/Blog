# matplotlib
> matlab plot library

```py
import matplotlib as mpl
import matplotlib.pyplot as plt
```

- plt.figure
- AxesSubplot




- axis
- tick
- lim
- label
-









---
## color

| 缩写 | 英文 |中文 |
| :-: | :-: | :-: |
| b | blue |  |
| g | green |  |
| r | red |  |
| c | cyan |  |
| m | magenta |  |
| y | yellow |  |
| k | black |  |
| w | white |  |
|  |  |  |
|  |  |  |



---
## linestyle


| 符号 | 英文 |
| :-: | :-: |
| - | solid |
| -- | dashed |
| -. | dashdot |
| : | dotted |
|  |  |
|  |  |
|  |  |



- color + linestyle:'r--'

---
## marker

| 符号 | 英文 |
| :-: | :-: |
| . | point |
| , | pixel |
| o | circle |
| v | down |
| ^ | up |
| < | left |
| > | right |


---

## function

| function | plt | ax |
| :-: | :-: | :-: |
| 标题 | plt.title(label=) | ax.set_title(label=) |
| 图例 | plt.legend(loc='best') | ax.legend(loc='best') |
| 范围 | plt.xlim() <br> plt.ylim() | ax.set_xlim() <br> ax.set_ylim() |
| 刻度 | plt.xticks(ticks=, labels=) <br> plt.yticks(ticks=, labels=)| ax.set_xticks(), ax.set_xticklabels() <br> ax.set_yticks(), ax.set_yticklabels() |
| 标签 | plt.xlabel(xlabel=) <br> plt.ylabel(ylabel=) | ax.set_xlabel() <br> ax.set_ylabel() |
| 坐标轴 |  | ax.xaxis() <br> ax.yaxis() |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
