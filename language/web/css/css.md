# CSS

## 1.1 基础

### 1.1.1 引入

- 行内式

```html
<!-- 宽：100px 高：100px -->
<div style="width:100px;height:100px"></div>
```

- 内嵌式

```html
<style type="text/css">
    <!-- div：标签选择器 -->
    div
    {
        width:100px;
        height:100px
    }
</style>
```

- 外链式

```html
<!-- css.css：css文件的相对路径 -->
<link rel="stylesheet" href="css.css">
```

```css
/* div：标签选择器 */
div
{
    width:100px;
    height:100px
}
```

### 1.1.2 选择器

- 通配符选择器
- 标签选择器
- 类选择器
- id选择器
- 子选择器
- 兄弟选择器

```html
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <!-- 内嵌式 -->
    <style type="text/css">
        <!-- 通配符选择器 -->
        *
        {

        }
        <!-- 类选择器 -->
        .class
        {

        }
        <!-- id选择器 -->
        #id
        {

        }
        <!-- 子选择器 -->
        #parent #son
        {

        }
        <!-- 兄弟选择器 -->
        #id, #parent
        {

        }

    </style>
</head>
<body>
    <div></div>
    <div class="class"></div>
    <div id="id"></div>
    <div id="parent">
        <div id="son"></div>
    </div>
</body>
</html>
```

## 1.2 单位

### 1.2.1 大小

- px：像素
- %：百分比
- em：字体
- pt：磅
- in：英尺
- em：厘米

### 1.2.2 颜色

##### 英文

- red：红色
- yellow：黄色
- blue：蓝色
- green：绿色
- black：黑色
- white：白色

##### 十六进制

```css
/- 十六进制颜色 */
#FFFFFF
#000000
```

##### RGB

```css
/- RGB颜色 */
rgb(255,255,255)
rgb(0,0,0)
rgb(100%,100%,100%)
rgb(0%,0%,0%)
```

## 1.3 样式

### 1.3.1 基本

- 宽
- 高
- 前景色
- 背景色

### 1.3.2 文本

- 字体`font`
- 字体类型`font-family`
- 字体大小`font-size`
    - px:像素
    - pt:磅
    - em:字号
    - %:百分比
- 字体颜色
    - 前景色
- 字体粗细`font-weight`
- 字体风格`font-style`
- 字间距`letter-spacing`
- 行间距`line-height`

### 1.3.3 边框
> border

### 1.3.4 边距

- 外边距`margin`

- 内边距`padding`

### 1.3.5 浮动

- `float:left,right,none;`
- `overflow:visible,hidden,auto,scroll;`

### 1.3.6 位置


### 显示
- `visibility:hiden`:占位
- `display:none`:不占位


`position:absolute;`
`left:;`
`top:;`
`z-index:;`


