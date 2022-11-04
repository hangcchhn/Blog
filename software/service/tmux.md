# Linux Tmux

## 安装

- centos：yum install tmux
- ubuntu：apt install tmux 

## 使用

### 启动命令
tmux

### 键盘操作

#### 回话
- ctrl+b+?：列出所有快捷方式
- ctrl+b+s：列出所有回话|选择切换回话
- ctrl+b+~


#### 窗口
- ctrl+b+c：创建
- ctrl+b+&：关闭
- ctrl+b+数字键：切换
- ctrl+b+w：列出所有窗口|选择切换窗口
- ctrl+b+,：修改名称
- ctrl+b+.：修改编号
- ctrl+b+f：寻找

#### 面板
- ctrl+b+"：水平分布面板
- ctrl+b+%：垂直分布面板
- ctrl+b+x：关闭当前面包
- ctrl+b+!：新建前置面板

- ctrl+b+q：显示面板编号
- ctrl+b+o：切换另一面板
- ctrl+b+方向键：按方向切换面板

- ctrl+b+ctrl+方向键：以1单元格为单位向某方向移动分界线
- ctrl+b+alt+方向键：以5单元格为单位向某方向移动分界线
- ctrl+b+space：循环重排预设面板

- ctrl+b+{：前置
- ctrl+b+}：后置
- ctrl+b+ctrl+o：顺时针旋转面板
- ctrl+b+alt+o：逆时针旋转面板

