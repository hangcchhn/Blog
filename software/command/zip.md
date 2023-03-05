# 解压压缩

---

## 算法

- tar软件生成tar文件使用stored算法:只改变存储方式，并没有压缩空间

- gzip软件生成gz文件使用deflated算法

- bzip2软件生成bz2文件使用bzip2算法

- lzma算法

---
# 文件
- zip文件
- tar文件

- gz文件

---
## 软件
- tar
```


# 解压x：抽取extract
tar -xvf xxx.tar
tar -zxvf xxx.tar.gz
tar -jxvf xxx.tar.bz2
tar -Zxvf xxx.tar.Z
tar -Jxvf xxx.tar.xz

unzip xxx.zip
unrar e xxx.rar

xz -d xxx.tar.xz
# 解压xz文件生成tar文件

# 压缩c：创建create
tar -cvf xxx.tar xxx
tar -zcvf xxx.tar.gz xxx
tar -jcvf xxx.tar.bz2 xxx
tar -Zcvf xxx.tar.Z xxx
tar -Jcvf xxx.tar.xz xxx



```
- zip


- rar

- gzip(GUN zip)

- bzip2