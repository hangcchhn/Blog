# AJAX
> Asynchronous Javascript And XML

- 异步

---
- JavaScript

```js

const xhr = new XMLHttpRequest();
xhr.onreadystatechange = () => {
    if (xhr.readyState == 4 && xmlhttp.status == 200){
        console.log(xhr.responseText);
    }
};
xhr.open('GET', 'text.json', true);
xhr.send();

```

---
## JQuery
```js

// ajax 传统写法
var text = $.ajax({
    url:"/json",
    type:"POST",
    dataType: "json",
    data:null,
    success:function(data){

        // 使用ajax函数有区别于get/post函数
        // 这里返回的data就是个json格式object
        // 其所有的属性如果是json格式都是object
        // 只有属性是不是json格式才是文本才能显示
        // ajax的返回值text与data是一样的

        alert(data.data);
        $("#ajax").append(data.code)
    },
    error:function(){
        $("#ajax").append("error");
    }
});


// json 新写法 jquery>1.5.0
$.ajax({
    url:"json",
    type:"POST",
    dataType: "json",
    data:null
}).done(function(data){
    $("#ajax").append(data.code)
}).fail(function(){
    $("#ajax").append("error");
});


$.post("/post", function (data) {
    alert(data);

    $("#post").append(data)
});


$.get("/home", function (data) {
    alert(data);

    $("#home").append(data)
});

```



---

## jsonp
- jsonp解决ajax不能跨域问题
- CORS
```js

// jquery对于其封装成跟ajax一样
$.ajax({
    url:"http://localhost:8899/jsonp",
    type:"POST",
    dataType: "jsonp",
    jsonp:"jsonp"
}).done(function(data){
    $("#ajax").append(data.code)
}).fail(function(){
    $("#ajax").append("error");
});

//注意后台程序要接收网址上的jsonp参数
//返回的数据json要使用jsonp()格式

// 后台修改的接口也只能使用jsonp去访问
$.ajax({
    url:"/jsonp",
    type:"POST",
    dataType: "jsonp",
    jsonp:"jsonp"
}).done(function(data){
    alert(data.code)
}).fail(function(){
    $("#ajax").append("error");
});


```
