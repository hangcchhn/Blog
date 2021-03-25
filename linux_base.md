# Linux Base #
## 一、系统操作 ##
	login:chench    //账户
	password:chench	//密码
	logout			//注销
	exit			//退出

	reboot			//重启
	halt			//关机
	shutdown -r now //重启
	shutdown -h now	//关机

	shutdown -r 10 //十分钟之后重启
	shutdown -h 10:10 //十点十分关机
	

	poweroff		//断电
	
	
## 二、目录操作 ##
### 1.显示当前目录路径 ###
    pwd
### 2.显示当前目录文件 ###
	ls
	ls -a			//显示隐藏文件
	ls -l			//显示文件所有信息
	ls -R			//显示子目录文件
### 3.进入指定目录 ###
	cd dir
### 4.新建目录 ###
	mkdir dir
### 5.删除目录 ###
	rmdir dir
## 三、文件操作 ##
###  ###
## 四、权限操作 ##
## 五、进程操作 ##
## 六、程序设计 ##
### 1.vim编辑器 ###
	vim helloworld.c
	//源文件内容
	    #include<stdio.h>
		void main()
		{
			printf("hello world!\n");
		}
### 2.gcc编译器 ###
- 生成默认的目标文件a.out：`gcc helloworld.c`
- 生成指定的目标文件：`gcc helloworld.c -o helloworld`
- 生成指定的预处理文件：`gcc helloworld.c -E helloworld.i`
- 生成指定的汇编文件：`gcc helloworld.c -S helloworld.s`
- 生成指定的二进制文件：`gcc helloworld.c -E helloworld.o`
	

### 3.gdb调试器 ###
	gdb				//进入gdb调试器
### 4.makefile项目管理工具 ###
- 在源文件的目录下创建一个文本文件，名为makefile
- 使用文本编辑器编写makefile文件；

> makefile语法格式：  
> 目标:依赖  
> TAB 命令

- 使用命名'make'执行makefile文件  
#### 简单的流程代码 ####

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