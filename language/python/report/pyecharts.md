# pycharts

- https://pyecharts.org/

---

```py
# pip install pyecharts
from pyecharts import options as opts
from pyecharts.charts import Line, Bar, Pie

# 链式调用
line_chart = (
    # 初始配置
    Line(init_opts=opts.InitOpts())
    .add()
    # 全局配置
    .set_global_opts()
    # 系列配置
    .set_series_opts()
)

line_chart.render()  # render.html
# line_chart.render_notebook()



```


---

# pycharts生成的图表导出图片

```py
from pyecharts.render import make_snapshot
# pip install snapshot-selenium
from snapshot_selenium import snapshot

# 生成快照图片：使用selenium需要安装chrome浏览器和配置chromedriver驱动
make_snapshot(snapshot, bar.render(path='line_chart.html'), "line_chart.png")
```
---

- 无法访问pyecharts官网的解决办法
```py
from pyecharts.globals import CurrentConfig
# echarts.min.js
CurrentConfig.ONLINE_HOST = 'http://host:port/path'

```
