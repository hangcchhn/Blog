# Java输入输出流
> I/O(Input/Output) Stream



- 输入流中的内容只能读取一次

---
## 字节流

- 文件读写:当文件过大的时候，会出现内存溢出（文件大小超过内存大小）
- 网络读写:当数据过大的时候，available会返回0，导致读取不到数据

```java
InputStream inputStream = new InputStream();
inputStream.available()//返回字节大小，有时不灵
inputStream.read()//循环读取直到返回-1表示读取完毕


// 字节流转字符流
BufferReader bufferReader = new BufferReader(...);



OutputStream outputStream = new OutputStream(...);
outputStream.write(); //
outputStream.flush(); //刷新缓冲区
```


---
## 字符流
- Reader:读
- Writer:写
- Random:随机数

---
## File

- File
```java

File file = new File()


```

## Files & Path & Paths
> java1.7

---