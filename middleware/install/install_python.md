# install python

## windows

- Windows xp + WinPython 2.7.10.3

- Windows thin + Anaconda2 5.0.1

- Windows thin + Anaconda3 5.2.0

## linux

---
- centos 6.10 + python 3.6.5

```


wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz

tar -zxvf Python-3.6.5.tgz

yum install gcc gcc-c++ openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel

./configure --prefix=/usr/local/python3

./configure --enable-optimizations

make

make install

```
- centos 6.10 + python 2.7.14