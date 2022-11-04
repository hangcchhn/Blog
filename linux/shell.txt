



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


--------------------------------------------------------------------------------------------------


定义变量
variable=10

引用变量
echo $variable
echo ${variable}

重置变量
unset $variable

变量赋值
variable=''

赋值符号=前后不能有空格


键盘输入
read -p 'prompt' variable
-n 参数个数
-t 等待时间

屏幕输出
echo 'print'

转义字符输出参数:-e
echo -e '第一行\n第二行'



--------------------------------------------------------------------------------------------------

语法
read [-ers] [-a aname] [-d delim] [-i text] [-n nchars] [-N nchars] [-p prompt] [-t timeout] [-u fd] [name ...]
参数说明:

-a 后跟一个变量，该变量会被认为是个数组，然后给其赋值，默认是以空格为分割符。
-d 后面跟一个标志符，其实只有其后的第一个字符有用，作为结束的标志。
-p 后面跟提示信息，即在输入前打印提示信息。
-e 在输入的时候可以使用命令补全功能。
-n 后跟一个数字，定义输入文本的长度，很实用。
-r 屏蔽\，如果没有该选项，则\作为一个转义字符，有的话 \就是个正常的字符了。
-s 安静模式，在输入字符时不再屏幕上显示，例如login时输入密码。
-t 后面跟秒数，定义输入字符的等待时间。
-u 后面跟fd，从文件描述符中读入，该文件描述符可以是exec新开启的。


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


--------------------------------------------------------------------------------------------------

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


--------------------------------------------------------------------------------------------------


su(switch user)
su username     切换用户但不切换环境变量
su - username   切换用户并且切换环境变量

指导用户执行命令
su - username -c command


--------------------------------------------------------------------------------------------------


(
    # open new shell execute
)

{
    # current shell execute
}




--------------------------------------------------------------------------------------------------

使用''或""

单引号和双引号中包含变量
'$variable'
"$variable"

当单独使用单引号时，不能取出变量值
当单独使用双引号时，可以取出变量值

单引号和双引号嵌套使用

当外层使用双引号时，输出内层的单引号和变量值
当外层使用单引号时，输出内层的双引号和双引号中的内容。


--------------------------------------------------------------------------------------------------


echo $(basename `pwd`)
echo $(basename $PWD)
$PWD=pwd 系统变量 当前路径

set 显示系统变量

使用${}
*：表示要删除的内容
#：表示从左边算起第一个
%：表示从右边算起第一个
##：表示从左边算起最后一个
%%：表示从右边算起最后一个
换句话来说，＃总是表示左边算起，％总是表示右边算起。

${PWD##*/} 截取路径最后一个文件夹名称

执行命令
${pwd}
`pwd`

$? 上一个命令的执行状态
$$ 当前进程编号


$# 参数个数
$* 参数列表 "$*"
$@ 参数列表 "$@"


$0 当前脚本名称
$1 第一个参数

`expr a + b`
$((a+b))


如果变量variable不存在，表达式默认等于default
${variable:-default}

如果变量variable不存在，表达式默认等于default，同时将default赋值给variable
${variable:=default}

字符串string
字符串长度
${#string}

字符串下标
${string:index}

字符串切片
${string:start:length}

替换第一个匹配项
${string/old_str/new_str}
替换所有的匹配项
${string//old_str/new_str}

字符串连接
$str1$str2


$str1" "$str2

$str1和$str2之间之所以不能出现空格，是因为当字符串不被任何一种引号包围时，遇到空格就认为字符串结束了，空格后边的内容会作为其他变量或者命令解析

--------------------------------------------------------------------------------------------------

循环
for N in 1 2 3
do
    echo $N
done

for N in 1 2 3; do echo $N; done
for N in {1..3}; do echo $N; done

for ((i = 1; i <= 3; i++))
do
    echo $i
done

i=1
while ((i<3))
do
    echo $i
done

分支
case $1 in
start)
    echo "starting"
    ;;
stop)
    echo "stoping"
    ;;
*)
    echo "Usage: {start|stop} “
esac



--------------------------------------------------------------------------------------------------

判断条件
if condition1 then
    statements1
elif condition2 then
    statements2
else statements0 fi

比较
-lt 小于
-le 小于等于
-gt 大于
-ge 大于等于
-eq 等于
-ne 不等于


多重条件
-a  与
-o  或
!   非

测试字符串，文件状态
test condition
[ condition ]


测试字符串
test str1 = str2
test str1 != str2

test -z string  空字符串
test -n string  非空字符串

文件状态
$file_name

[ -e $file_name ]

-e  是否存在
-s  是否非空

-r  是否可读
-w  是否可写
-x  是否可执行


-d  是否是目录
-f  是否是文件
-L  是否是链接
-c  是否是符号设备
-b  是否是块设备



--------------------------------------------------------------------------------------------------

command1 && command2
只有执行command1成功（返回0），才执行command2

command1 || command2
只有执行command1不成功（返回非0），才执行command2


--------------------------------------------------------------------------------------------------

function func_name(args_name)
{
    action variable;
    return variable;
}


--------------------------------------------------------------------------------------------------

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