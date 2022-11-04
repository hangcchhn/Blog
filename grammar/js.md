# Javascript

## 1.1 基础

### 1.1.1 引入

* 内嵌式

```html
<script type="text/javascript"></script>
```

* 外链式

```html
<script type="text/javascript" scr=""></script>
```

### 1.1.2 常用函数

* 警示对话框`alert()`
* 输入对话框`prompt()`
* 控制台输出`console.log()`

### 1.1.3 变量

* 声明赋值`var variable_name = initial_name;`

### 1.1.4 函数

* 定义

```js
function func1() {
    alert("函数1");
}
func1();
```

```js
var func2 = new function () {
    alert("函数2");
};
```

### 1.1.5 对象

* 对象的模板

```js
function Word(c, s) {
    //属性
    this.color = c;
    this.size = s;
    //方法
    this.show = function (str) 
    {
        document.write("<span style='color:" + this.color + "; font-size:" + this.size + "px'>" + str + "</span>");
    }
}
```

* 对象的实例

```js
var w1 = new Word("red", 90);
```

* 实例的调用

```js
//调用属性
w1.color
//调用方法
w1.show("字体样式");
```

## 

## 1.2 JavaScript对象

### 1.2.1 时间Date

### 1.2.2 数组Array

### 

### 

## 

## 事件

### 页面事件

* 加载页面事件：`onload`
* 离开页面事件：`unonload`

### 鼠标事件

* 鼠标单击事件：`onclick`
* 鼠标双击事件：`ondblclick`
* 鼠标进入事件：`onmouseover`
* 鼠标离开事件：`onmouseout`
* 鼠标按下事件：`onmousedown`
* 鼠标松开事件：`onmouseup`
* 鼠标移动事件：`onmousemove`
* 鼠标滚轮事件：`onmousewheel`

### 键盘事件

* 键盘敲击事件：`onkeypress`
* 键盘按下事件：`onkeydown`
* 键盘松开事件：`onkeyup`

### 焦点事件

* 元素获取焦点事件：`onfouse`
* 元素失去焦点事件：`onblur`

### 推迟事件

```js
//推迟时间执行函数
setTimeout("function_name()", time_ms);
setInterval(function_name, time_ms);
```



