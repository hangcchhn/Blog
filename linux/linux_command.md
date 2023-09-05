# Command


command interpreter
命令解析器

- unix:sh

- linux:bash
`echo $SHELL`

- windows:cmd,powershell

- mac:zsh


---
- 开启新的shell环境执行shell脚本
```sh
/path/shell.sh

cd /path
./shell.sh

bash /path/shell.sh

sh /path/shell.sh
```
---
- 在当前shell环境中执行shell脚本
```sh
. /path/shell.sh

source /path/shell.sh


# 调试shell脚本
sh -vx /path/shell.sh


shell.sh:
set -x
```

---


- su(switch user)
```sh
# 切换用户但不切换环境变量
su username
切换用户并且切换环境变量
su - username

# 指导用户执行命令
su - username -c command

```
---

```sh
(
    # open new shell execute
)

{
    # current shell execute
}
```


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