# Visual Studio Code



---

## Remote Server

git-bash

windows 10 & centos 7.x

rm -rf ~/.vscode-server



---
## 执行 & 任务
- launch.json
- tasks.json
```json
${workspaceFolder} // 当前工作目录(根目录)
${workspaceFolderBasename} // 当前文件的父目录
${file} // 当前打开的文件名(完整路径)
${relativeFile} // 当前根目录到当前打开文件的相对路径(包括文件名)
${relativeFileDirname} // 当前根目录到当前打开文件的相对路径(不包括文件名)
${fileBasename} // 当前打开的文件名(包括扩展名)
${fileBasenameNoExtension} // 当前打开的文件名(不包括扩展名)
${fileDirname} // 当前打开文件的目录
${fileExtname} // 当前打开文件的扩展名
${cwd} // 启动时task工作的目录
${lineNumber} // 当前激活文件所选行
${selectedText} // 当前激活文件中所选择的文本
${execPath} // vscode执行文件所在的目录
${defaultBuildTask} // 默认编译任务(build task)的名字
```

---
## 快捷键
> key map


智能提示
win:Ctrl + Space, Ctrl + I
mac:Command + Space, Command + I

参数提示
win:Ctrl + Shift + Space
mac:Command + Option + Space

关闭标签
win:Ctrl + F4, Ctrl + W
mac:Command + W

新建标签
win:Ctrl + N
mac:Command + N

新建窗口
win:Ctrl + Shift + N
mac:Shift + Command + N

搜索
win:Ctrl + F
mac:Command + F

替换
win:Ctrl + H
mac:Option + Command + F

命令窗口
win:Ctrl + Shift + P
mac:Shift + Command + P

跳转文件
win:Ctrl + P
mac:Command + P





---
## Windows 7 & Visual Studio Code 1.70.3

- https://vscode.cdn.azure.cn/stable/a21a160d630530476218b85db95b0fd2a8cd1230/VSCodeSetup-ia32-1.70.3.exe
- https://vscode.cdn.azure.cn/stable/a21a160d630530476218b85db95b0fd2a8cd1230/VSCodeSetup-x64-1.70.3.exe
