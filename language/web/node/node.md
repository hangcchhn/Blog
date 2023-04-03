# node


## version

- LTS——Long Term Support
    - 8.x(8.16.2)
    - 10.x(10.15.3)




---
- server
```js
"use strict";//使用严格语法模式

// 模块
// import http from "http";//ES6(ECMAScript 6)
const http = require("http")//CommonJS

// 模板编译node支持ES6可以webpack项目中使用babel编译

var server = http.createServer(function(req, res){
    let status = 200;
    res.writeHead(status, {"Content-Type":"text/plain"});
    res.end("HelloWorld\n");
});
server = server.listen(9090, "0.0.0.0");

console.log("http://0.0.0.0:9090");

```