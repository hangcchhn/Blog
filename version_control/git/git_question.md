# Git问题

---
git pull
There is no tracking information for the current branch
git branch --set-upstream-to=origin/develop develop
git pull


---

Updates were rejected because the tip of your current branch is behind

git pull origin master

---

Checkout as-is, commit as-is:Checkout as-is, commit as-is

git config --global core.autocrlf true
结束符
提交代码：CRLF转换成LF
签出代码：LF转换成CRLF

windows系统core.autocrlf配置默认true


git config --global core.autocrlf false
结束符不变


git config --global core.autocrlf input
提交代码：CRLF转换成LF


---

OpenSSL SSL_read: Connection was reset, errno 10054
```
git config --global http.sslVerify "false"
```

---

```
git config --global --add safe.directory "*"
```
