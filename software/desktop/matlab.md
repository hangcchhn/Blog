
# MATLAB

R2014b

---

feature('locale')


环境变量

MWLOCALE_TRANSLATED
OFF

英文

---


cell
%%



%为注释符


算术运算符





关系运算符:~=(不等于)
逻辑运算符:&&(与),||(或),~(非)

系统特殊变量与常数:ans,inf,i,j,pi


常用命令
...(代码续行)
;(不回显结果)
who ans     (显示变量简要结果)
whos ans    (显示变量详细结果)
clear       (清除当前workspace)
clc         (清除当前command)

display('显示函数')

中文 字符 字符串 用单引号括起来 ''
---



A = [a11,a12;a21;a22]
A(4) = A(2,2) = a22
A(:,1) = [a11;a21]



加减乘除
A + 2 = [a + 2]
A - 2 = [a - 2]
A * 2 = [a * 2]
A / 2 = [a / 2]
A \ 2 = [2 / a]


A.^B = power(a, b)

转置B = A.'

---










---

程序设计

variable = input('prompt')

if condition

else

end



switch variable

    case {i,j}

    case k

    otherwise

end



for variable=start:step:stop

end



while condition

end




---

函数绘图
自变量=起始值:步长:终止值

二维图形   y=plot(x)   plot(x,y)
多条曲线绘图格式   plot(x1,y1,x2,y2……)

开关格式   plot(x,y,'s')   字符串s设置图形曲线颜色，线形和标记


图形修饰
title('') 标题
xlabel('') ylabel('') x y轴加标注
text('') gtext('')
grid on    grid off

legend 图例
axis 控制坐标轴的刻度
hold on    hold off 开启/关闭图形保持功能
subplot(m,n,p)

三维图形
三维曲线图  plot(x,y,z,'s'…)
三维网格图  mesh(x,y,z)
网格矩阵  [X,Y]=meshgrid(x,y)
三维曲面  surf()  peaks()
观察点  view(azimuth,elevation)


特殊坐标系
极坐标  polar(theta,rho)
特殊图形
直方图  bar
饼图  pie
阶梯图  stairs
火柴杆图  stem
面积图  area
向量图
罗盘图compass
羽毛图feather



---


概率分布


pdf：连续分布的密度函数｜离散分布的概率函数
cdf：分布函数
inv：逆概率分布函数
rnd：随机数
fit：参数的最大似然估计和置信区间
stat：期望和方差
like：负对数似然函数



---
读取excel
xlsread('path')

---
解方程


线性方程
solve()

非线性方程
vpasolve()

---

图形用户界面设计
File->New>GUI
控件：

    弹出式菜单(Pop-up Menu)
    按钮(Push Button)
    开关(Toggle Button)
    静态文本框(Static Text)
    编辑文本框(Edit Text)
    单选框(Radio Button)
    复选框(Check Box)
    滚动条(Slider)
    列表框(Listbox)
    坐标轴(Axes)
    面板(Panel)

属性Property Inspector
对齐Align Objects
对象Object Browser
菜单Menu Editor
句柄(handle)

图形层次

图形函数
    figure
    newplot
    axes
    line
    patch
    surface
    image
    uicontrol
    uimenu

gcf
gca
gco
gcbo
delete
findobj

句柄属性获取和设置
get(handle,'PropertyName')
set(handle,'PropertyName',value)

公用对话框
文件选择对话框：[fname,pname]=uigetfile(ffilter,strTitle,x,y)
颜色选择对话框：c=uisetcolor(h,strTitle)
字体选择对话框：h_Font=uisetfont(h,strTitle)
页面设置对话框：

警告与错误信息对话框：
   warndlg({'WARNING:……','Try Again'},'Warning')
   errordlg({'ERROE:……','Program Cancel'},'Error')

简单帮助信息对话框：helpdlg()




---

mbuild -setup

deploytool

***.h,***.dll,***.lib

### 项目属性
- VC++目录
    - 包含目录
        C:\Program Files\MATLAB\R2014a\extern\include
    - 库目录
        C:\Program Files\MATLAB\R2014a\extern\lib\win32
        C:\Program Files\MATLAB\R2014a\extern\lib\win32\microsoft
- 链接器
    - 常规 -> 附加库目录
        C:\Program Files\MATLAB\R2014a\bin\win32

    - 输入 -> 附加依赖项
        xxx.lib
        libmat.lib
        libmex.lib
        mclmcr.lib
        mclmcrrt.lib