# curl


- 注意网址使用引号包括
```sh
curl "http://127.0.0.1:80/"

curl -X POST -H "Content-Type: application/json" \
	-d '{"test": "demo"}' \
	"http://127.0.0.1:80/test"


# 连接超时时间（单位：秒）
curl --connect-timeout 30 \
	"http://127.0.0.1:80/"

# 最大时间（单位：秒）
curl --max-time 300 \
	"http://127.0.0.1:80/"

```
---


---

## windows系统使用mingw编译curl

- https://github.com/curl/curl/releases
- curl-7.72.0.zip



- 编译动态库
```bat
cd curl-7.72.0
cd ./lib
mingw32-make -f Makefile.m32
libcurl.dll
libcurl.a
libcurldll.a
```


- 编译可执行文件
```bat

curl-7.72.0
cd ./src
mingw32-make -f Makefile.m32
curl.exe
```
---
