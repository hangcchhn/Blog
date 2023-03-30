



shell

壳shell
核kernel


command interpreter
命令解析器

windows
cmd powershell

mac
zsh

sh bash
echo $SHELL

shell.sh
#!/bin/bash

# 注释

分配执行权限
chmod +x shell.sh

将windows格式文件转换成unix格式文件

dos2unix
apt install dos2unix

:set ff=unix
:set fileformat=unix


---

```sh

# 定义变量
variable=10

# 引用变量
echo $variable
echo ${variable}

# 重置变量
unset $variable

# 变量赋值
variable=''

赋值符号=前后不能有空格


# 键盘输入
read -p 'prompt' variable
-n 参数个数
-t 等待时间

# 屏幕输出
echo 'print'

# 转义字符输出参数:-e
echo -e '第一行\n第二行'

```

- 数组

```sh

array=(item0, item1, item2)

```

---

```sh

read --help
man read

while true
do
    read -r -p "Yes or No? [Y/N] " input

    case $input in
        [yY][eE][sS]|[yY])
            echo "Yes"
            exit 1
            ;;

        [nN][oO]|[nN])
            echo "No"
            exit 1
            ;;

        *)
            echo "Invalid input..."
            ;;
    esac
done
```

---

开启新的shell环境执行shell脚本

/path/shell.sh

cd /path
./shell.sh

bash /path/shell.sh

sh /path/shell.sh


在当前shell环境中执行shell脚本

. /path/shell.sh

source /path/shell.sh


调试shell脚本
sh -vx /path/shell.sh

shell.sh:
set -x


---


su(switch user)
su username     切换用户但不切换环境变量
su - username   切换用户并且切换环境变量

指导用户执行命令
su - username -c command


---


(
    # open new shell execute
)

{
    # current shell execute
}





---

重定向

command
delimiter	定界符

0	/dev/stdin		从键盘读取输入
1	/dev/stdout		标准输出到屏幕
2	/dev/stderr		错误输出到屏幕


输入
command < file_path
command << delimiter
> input1
> input2
> delimiter



输出
覆盖
command > file_path
追加
command >> file_path


标准输出
command > file_path
错误输出
command 2> file_path

command > /dev/null

command > file_path 2>&1