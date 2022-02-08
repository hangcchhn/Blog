# C语言

## main

- c
``` c
// 只适用C语言
void main()
{
	// code
} 
```

- cpp
``` cpp
// 即适用C语言又适用C++语言
int main(int argc, char *argv[]){
	// code
    return 0;
}
// C语言编译器将可执行文件名称也作为参数
// 命令行中的字符串也包括可执行文件名称
// 整型argc表示命令行中字符串的个数，
// 指针数组argv[]指向命令行中的各个字符串

```

## gcc编译器
> mac|unix|linux
- 生成默认的目标文件a.out：`gcc helloworld.c`
- 生成指定的目标文件：`gcc helloworld.c -o helloworld`
- 生成指定的预处理文件：`gcc helloworld.c -E helloworld.i`
- 生成指定的汇编文件：`gcc helloworld.c -S helloworld.s`
- 生成指定的二进制文件：`gcc helloworld.c -E helloworld.o`
	

## g++编译器




## gdb调试器
	gdb				//进入gdb调试器


## makefile
- 在源文件的目录下创建一个文本文件，名为makefile
- 使用文本编辑器编写makefile文件；

### 1.makefile语法
```
target:source
TAB command option parameter

```
### 2.makefile命令
```
使用命令''执行makefile文件  

# 清除
make clean
# 编译
make
# 安装
make install


```

### 3.makefile过程

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
