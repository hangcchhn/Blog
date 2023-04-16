# JNI
> Java Native interface

- Java本地接口

---
## 加载动态库


```java
// System.load 参数必须为库文件的绝对路径，可以是任意路径，例如：
System.load("C:\\ProgramFiles\\Java\\TestLibrary.dll"); //Windows
System.load("/usr/java/libTestLibrary.so"); //Linux

// System.loadLibrary 参数为库文件名，不包含库文件的扩展名。
System.loadLibrary ("TestLibrary"); //加载Windows下的TestLibrary.dll本地库
System.loadLibrary ("TestLibrary"); //加载Linux下的libTestLibrary.so本地库
```
---

- TestLibrary.java:
```java
package hn.cch;

public class TestLibrary {

    static {
        // 加载动态库dll
        System.load("TestLibrary.dll");
    }

    // 关键字native
    public native String result(String params);


    public static void main(String[] args) {
        TestLibrary testLibrary = new TestLibrary();
        String params = "params";
        String result = testLibrary.result(params);
    }

}
```

---
## 通过Java语言接口文件生成C语言头文件
- `java -h TestLibrary.java`
    - `TestLibrary.h`
    - `TestLibrary.c`

---

- TestLibrary.h:
```h
#ifndef ENDECRYPT_TestLibrary_H
#define ENDECRYPT_TestLibrary_H

JNIEXPORT jstring JNICALL Java_hn_cch_LibJni_result(JNIEnv *env, jobject obj, jstring par);

#endif //ENDECRYPT_TestLibrary_H
```
- TestLibrary.c:
```c
#include <jni.h>

/*
 * Class:     hn_cch_TestLibrary
 * Method:    result
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_hn_cch_TestLibrary_result(JNIEnv *env, jobject obj, jstring par)
{

    // 字符串(java)与字符数组(c)相互转化
    const char *parCharPoint = (*env)->GetStringUTFChars(env, par, 0);
    printf("parCharPoint:%s\r\n", parCharPoint);

    jstring ret = (*env)->NewStringUTF(env, "GCC_JVM");

    const char *retCharPoint = (*env)->GetStringUTFChars(env, ret, 0);
    printf("retCharPoint=%s\r\n", retCharPoint);

    return ret;

}
```
