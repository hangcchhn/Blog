
---

使用''或""

单引号和双引号中包含变量
'$variable'
"$variable"

当单独使用单引号时，不能取出变量值
当单独使用双引号时，可以取出变量值

单引号和双引号嵌套使用

当外层使用双引号时，输出内层的单引号和变量值
当外层使用单引号时，输出内层的双引号和双引号中的内容。


---

```sh
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
```


- 字符串string

```sh
# 字符串长度
${#string}

# 字符串下标
${string:index}

# 字符串切片
${string:start:length}

# 替换第一个匹配项
${string/old_str/new_str}
# 替换所有的匹配项
${string//old_str/new_str}

# 字符串连接
echo $str1$str2


echo $str1" "$str2

# $str1和$str2之间之所以不能出现空格，是因为当字符串不被任何一种引号包围时，遇到空格就认为字符串结束了，空格后边的内容会作为其他变量或者命令解析
```
---

循环
```sh
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
```

- 分支
```sh
case $1 in
start)
    echo "starting"
    ;;
stop)
    echo "stoping"
    ;;
*)
    echo "Usage: {start|stop} "
esac

```

---

- 判断条件
```sh
if condition1 then
    statements1
elif condition2 then
    statements2
else statements0 fi
```
- 比较
    - -lt 小于
    - -le 小于等于
    - -gt 大于
    - -ge 大于等于
    - -eq 等于
    - -ne 不等于


- 多重条件
    - -a  与
    - -o  或
    - !   非

测试字符串，文件状态
test condition
[ condition ]


测试字符串
test str1 = str2
test str1 != str2

test -z string  空字符串
test -n string  非空字符串

- 文件状态
```sh
$file_name
# 判断文件是否存在
if [ -e $file_name ]
    # 存在就删除
    rm $file_name
fi

$file_path
# 判断文件夹是否存在
if [ ! -e $file_path ]
    # 不存在就创建
    mkdir -p $file_path
fi
```
- -e  是否存在
- -s  是否非空

- -r  是否可读
- -w  是否可写
- -x  是否可执行

- -d  是否是目录
- -f  是否是文件
- -L  是否是链接
- -c  是否是符号设备
- -b  是否是块设备



---

command1 && command2
只有执行command1成功（返回0），才执行command2

command1 || command2
只有执行command1不成功（返回非0），才执行command2


---

function func_name(args_name)
{
    action variable;
    return variable;
}
