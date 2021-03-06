# Python性能

## 全局解释器锁
- GIL(Global Interpreter Lock)
- 同一时刻只允许一个线程在解释器中运行
- Cython版本的Python解释器：转化为C语言代码
- 互斥锁，线程安全
- 保证在单核处理器上的使用率
- 多线程无法利用多核处理器加速



- 多线程对IO密集型任务要比CPU密集型任务更加友好
    - IO密集型：多线程，协程
    - CPU密集型：多进程，进程池
- 多进程之间没有GIL，但是进程本身资源消耗较大

- 指定处理器运行线程：使用affinity模块

- Jython，Ironpython等解释器没有GIL

---

- python基于事件的性能分析
```py
import sys
sys.setprofile(profile)
```


- linux统计式性能分析器oprofile

- python统计式性能分析器statprof

- timeit

- profile

---


## cProfile & pstats
```sh
# cProfile
python -m cProfile -o prof.prof py_cprofile.py
# pstats模块
python -m pstats prof.prof


```
- ncalls   函数总的调用次数
- tottime  函数内部（不包括子函数）的占用时间
- percall （第一个） tottime/ncalls
- cumtime  函数包括子函数所占用的时间
- percall （第二个）cumtime/ncalls

- filename:lineno(function)文件:行号(函数)




---

## line_profiler

```sh
pip3 install line_profiler==3.3.0
pip2 install line_profiler==2.1.2
```

- kernprof命令属于line_profiler

@profile配合kernprof
报错：基础开发环境不识别装饰器@profile
命令：kernprof -l -v py_line_profiler.py
生成：py_line_profiler.py.lprof
查看：python -m line_profiler py_line_profiler.py.lprof


Line：行号
Hits：代码行执行总次数
Time：代码行执行总时间
Per Hit：代码行平均消耗时间
% Time：代码行时间消耗比例
Line Contents：行内容

---
- memory_profiler
```sh
pip3 install memory_profiler

```
- objgraph
```sh
pip3 install objgraph

```



---
## RunSnakeRun

- win:pip3install RunSnakeRun
- mac:pip3install RunSnake

- Python3:
    - pip3install wxpython==4.0.7
- Python2:
    - pip3install wxpython==4.0.2
    - pip3install runsnakerun==2.0.1


- ubuntu
```sh
apt install kcachegrind
apt install runsnakerun

```
- centos:
```sh
yum install python36-wxpython4
yum install kcachegrind
pip3 install runsnakerun

```

```sh
python -m cProfile -o prof.prof py_cprofile.py
runsnake prof.prof

```



---
- cachegrind

- linux:kcachegrind
- win/mac:qcachegrind

```sh
pip3install pyprof2calltree
pyprof2calltree -i prof.prof

```
- pyprof2calltree生成prof.prof.log
- cachegrind打开prof.prof.log




- Valgrind


