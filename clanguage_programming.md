
# programming
> C语言程序设计

## 一、vim编辑器
	vim helloworld.c
	//源文件内容
	    #include<stdio.h>
		void main()
		{
			printf("hello world!\n");
		}
## 二、gcc编译器
- 生成默认的目标文件a.out：`gcc helloworld.c`
- 生成指定的目标文件：`gcc helloworld.c -o helloworld`
- 生成指定的预处理文件：`gcc helloworld.c -E helloworld.i`
- 生成指定的汇编文件：`gcc helloworld.c -S helloworld.s`
- 生成指定的二进制文件：`gcc helloworld.c -E helloworld.o`
	

## 三、gdb调试器
	gdb				//进入gdb调试器


##  四、makefile
- 在源文件的目录下创建一个文本文件，名为makefile
- 使用文本编辑器编写makefile文件；

### 1.makefile语法
```
target:source
TAB command option parameter

```
#### 2.makefile命令
```
使用命令''执行makefile文件  

# 清除
make clean
# 编译
make
# 安装
make install


```

#### 3.makefile过程

```
touch makefile	//创建项目文件
vim makefile	//编辑项目文件
//makefile文件                                                 
helloworld:helloworld.c
	gcc helloworld.c -o helloworld
//清除命令
clean:
	rm helloworld
make			//运行项目文件
make clean		//执行清除命令


```