#


IDEA_JDK
IDEA_JDK_64


IDEA_JDK / PHPSTORM_JDK / WEBIDE_JDK / PYCHARM_JDK / RUBYMINE_JDK /CLION_JDK / DATAGRIP_JDK


IDEA_IDE_UI:Find Action->Switch IDE Boot JDK  选择JDK路径
IDEA_IDE_NEW:Preferences->Plugins->Choose Runtime 安装IDEA查看


填写JDK路径

java必须与idea系统位数保持一致

---




### 配置文件路径

- IDEA 2020.1 以上社区版Community
    - win:~/AppData/Roaming/JetBrains/IdeaICXXXX.x/
    - mac:~/Library/Application\ Support/JetBrains/IdeaICXXXX.x/
    - linux:~/.config/JetBrains/IdeaICXXXX.x/


- IDEA 2019.3 以下专业版Ultimate|Professional
    - win:~/.IntelliJIdeaXXXX.x/
    - mac:~/Library/Preferences/IntelliJIdeaXXXX.x/
    - linux:~/.IntelliJIdeaXXXX.x/





---


idea - eclipse：
项目project - 工作空间workspace
模块module - 项目project


# 模板配置
- file and code template
    - `-Djdk.util.zip.ensureTrailingSlash=false`


- 编辑模式(LightEdit mode)
```
idea -e ***.txt
idea64 -e ***.txt
```
---




File->Settings->Editor->Genneral->Apperance->
OK--Show line numbers
OK--Show method separators
NO--Show parameter name hints


File->Settings->Editor->Inlay Hints
NO--show hints for:



win:
File->Settings->Keymap->Other->Debug context configuration->Add Keyboard Shortcut->Ctrl+Shift+F9


mac:
IDEA->Preferences->Keymap->Main Menu->Navigate->Back,Forward->remove command+[,]

---


## 快捷键
> key map

win = mac
Ctrl = Command
Alt = Option



重命名
Shift+F6

搜索方法名使用的地方
Alt + F7

计算表达式值
Alt + F8


定义
Ctrl + B
实现
Ctrl + Alt + B


Previous Method
win:Alt + Up
mac:Option + Up

Next Method
win:Alt + Down
mac:Option + Down

后退Back
win:Ctrl + Alt + Left
mac:Command + Option + Left

前进Forward
win:Ctrl + Alt + Right
mac:Command + Option + Right




Close Tab
win:Ctrl + W
mac:Command + W

Extend Selection:Ctrl + Alt + W
Shrink Selection:Ctrl + Shift + W




调试
F8：调试单步运行
F9：跳到下个断点


Ctrl + Alt + U
Ctrl + F12


---


win|mac

Run
win:Ctrl + Shift + F10
mac:Ctrl + Shift + R

Debug
win:Ctrl + Shift + F9
mac:Ctrl + Shift + D

书签
win:F11, Shift + F11, Ctrl + F3
mac:F3, Option + F3, Command + F3

Ctrl + Home
Ctrl + End











---


idea:
支持语言：Java,Kotlin,Groovy,Scala
构建工具：Ant,Maven,Gradle,SBT






---




Method breakpoints may dramatically slow down debugging

Breakpoints

Java Method Breakpoints



