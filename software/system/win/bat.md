
批处理文件

中文路径：ANSI编码

---

- xxx.bat:
```bat
@echo off
@rem 注释：关闭命令回显

title "xxx"
echo "xxx"
rem xxx
pause



@rem 当前cmd.exe调用xxx.bat
call "xxx.bat"

创建cmd.exe执行xxx.bat
start "title" "xxx.bat"

%0      @rem 批处理文件本身
%1-%9   @rem 批处理文件参数

@rem 变量
%variable%

@rem 输入一个字符
choice

@rem 显示文件内容，类似shell脚步cat命令
type "xxx.txt"

type "xxx.txt" ｜ more

type "xxx.txt" ｜ find "xxx"



set key=value

set /p variable="prompt"

set /a variable = 1 + 2




```
---
```bat


&   @rem 顺序执行，无论成功失败
&&  @rem 顺序执行，执行失败中断，不再执行后续语句
||  @rem 顺序执行，执行成功中断，不再执行后续语句

|   @rem 管道：前一个命令的结果作为第二个命令的参数

>   @rem 覆盖文件插入
>>  @rem 当前文件追加

@rem ^转义特殊字符
| & > <


```
---
```bat

setlocal ENABLEDELAYEDEXPANSION
!variable!


@rem 判断

@rem 文件是否存在
if exist xxx.txt (

) else (

)

if "" == "" (

)

@rem 循环

for %%i in (

) do (

)


:loop

goto loop

```