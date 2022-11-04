
makefile

xxx.c
xxx.h

xxx.cpp

xxx.o   二进制文件
xxx.a   静态库文件
xxx.so  动态库文件

-c：只编译不链接

-E
预编译后停下来，生成后缀为 .i 的预编译文件。
-c
编译后停下来，生成后缀为 .o 的目标文件。
-S
汇编后停下来，生成后缀为 .s 的汇编源文件。


-Wall：显示所有警告信息
-w：隐藏任何警告信息



-L:添加链接库目录
-l:添加链接库文件

-I:添加头文件目录
-i:添加头文件文件

-o:(output)输出文件
-O:(order)优先顺序


-shared：生成共享目标文件
-static：禁止使用共享连接

-Wa,option
-Wl,option


-fpic
编译器就生成位置无关目标码.适用于共享库(shared library)

-fPIC
编译器就输出位置无关目标码.适用于动态连接(dynamic linking)



gcc -Wall -o "c" "c.c"

gcc -Wall -lcrypto -o "md5" "md5.c"

gcc -L/usr/local/lib64/ -lcrypto -o sms4 sms4.c






gcc TestJni.c -fPIC -shared -o libtest.so

gcc -dynamiclib -I . TestJni.c -o libtest2.so





gcc -I%JAVA_HOME%\include -I%JAVA_HOME%\include\win32 -shared -Wl,–kill-at -s -o lib.dll Test.c

