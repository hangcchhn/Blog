

# 搜索

```sh
# linux bash
which command_name
# 在环境变量匹配命令，默认只显示第一匹配项的绝对地址
which -a command

whereis execute_name
# binary 二进制文件
# source 源文件
# manual 帮助手册

# windows cmd
where command_name
# windows powershell
Get-Command command_name
```
---


## locate

```sh
-bash: locate: command not found
yum install mlocate

# locate: can not stat () `/var/lib/mlocate/mlocate.db': No such file or directory
updatedb

locate keywords
# 默认情况下，keywords不包含通配符*时locate命令会自动转化为匹配*keywords*

```
---
## find
```sh
# 在文件夹下查找文件
find direction -name *keywords*
-type f # 文件
-type d # 文件夹

```
---

- grep擅长查找功能，
- sed擅长取行和替换
- awk擅长取列

---


## grep
> global search regular expression and print out the line
- 全局搜索 正则表达式 打印行

```sh
默认搜索文件
grep 'word' file

-d 搜索文件夹
grep 'word' -d path

# 行首显示文件名称使用:分隔匹配行内容
grep root /etc/passwd /etc/group

-i 忽略字母大小写
-l 只显示文件名
-h 不显示文件名
-n 显示行号


-r 递归搜索 = -d recurse
-v 反转搜索


# -c 搜索统计 count
grep -c 'word' file

# -C 上下文 context
grep -C line 'word' file



tail -10f file | grep -C 5 'word'

```
---



## sed
>Stream Editor
- 流编辑器
```sh
sed options command

# options
-n 显示操作的行
-i 直接修改文件
-e 编辑edit
-f 文件file

# command
i 在当前行的上面新增一行
a 在当前行的下面新增一行

d 删除当前行
p 打印当前行(-n和p常一起使用)


# example
sed -n 10,20p /etc/passwd

sed 10a\append /etc/passwd
sed 10i\insert /etc/passwd
sed 10c\replace /etc/passwd
sed 10d /etc/passwd

sed s/sbin/root/g /etc/passwd

```


---

## awk