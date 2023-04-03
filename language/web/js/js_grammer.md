
```js
// 单行注释

/*
多行
注释
*/

// alert("alert");

console.log("console.log");
var input = prompt("input:")

// typeof(input)


// 声明变量
var m;
console.log(m);//undefined
var n = 0;
console.log("n="+n);//n=0
// 终端日志(打印输出)
console.log(m + n);//NaN

// 创建常量
const c = 1;

/*
数据类型DateType：
1.数值Number
2.字符串String
3.布尔Boolean
4.符号Symbol
5.对象Object

6.空null
7.未定义undefined
8.非数值NaN
*/

```
- 页面加载完成后执行的函数
```js
// javascript
window.onload = function () {
    //页面加载完成后执行的函数
    console.log("ready");
};

// jquery
$(function () {
    //页面加载完成后执行的函数
    console.log("ready");
});

```
---
- 函数
```js
# 函数 y = f(x)
function method(x){
    return y;
}

```
method表示使用函数对象
method(x)表示使用函数结果



encodeURI(str)函数处理js中的特殊字符和中文乱码问题



- 基本数据类型
    - 字符串(String)
    - 数字(Number)
    - 布尔(Boolean)
    - 空(Null)
    - 未定义(Undefined)
    - Symbol(ES6)
- 引用数据类型
    - 对象(Object)
    - 数组(Array)
    - 函数(Function)。

js:()，[]，{}
[]数组
{}对象



new Set()
new Map()
set元素不能重复
map主键不能重复

```html
<script type="text/javascript">
    <%--首页跳转--%>
    window.location.href = 'http://localhost:8080/center/';
</script>

```