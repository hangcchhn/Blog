# GraalVM





- Native Image
- LLVM toolchain

- Java on Truffle
## GraalVM Community

## GraalVM Enterprise
- 在HotSpot JVM上运行
- 使用Graal编译器作为顶层JIT编译器

- HotSpot JVM


- Substrate VM(SVM)


## GraalVM编译器


- 提前编译(Ahead Of Time:AOT)
- 即时编译(Just-In-Time:JIT)


## GraalVM Updater
> gu

## Polyglot


## Truffle

---
## 静态编译

```sh
export GRAALVM_PATH=/opt/graalvm
export PATH=$GRAALVM_PATH/bin:$PATH

```

---

```sh
yum install gcc glibc-devel zlib-devel
apt install build-essential libz-dev zlib1g-dev


# GraalVM Updater本地安装native-image
gu -L install native-image-installable-svm-java11-linux-amd64-X.Y.Z.jar

```


---

```sh


native-image --jar jar-file.jar

```