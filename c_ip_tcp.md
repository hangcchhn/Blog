# C IP TCP

> C语言 socket套接字

## 服务端

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/socket.h>
#include <arpa/inet.h>

void main()
{
    printf("sock serv\n");
    // 端口
    int port = 12701;
    // 数量
    int size = 1;

    // 通讯
    int fd_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (fd_socket == -1)
    {
        perror("socket error");
        exit(-1);
    }
    // 地址
    struct sockaddr_in server_addr;
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server_addr.sin_port = htons(port);

    // 绑定
    if (bind(fd_socket, (struct sockaddr *)&server_addr, sizeof(server_addr)) == -1)
    {
        perror("bind error");
        exit(-1);
    }

    // 监听
    if (listen(fd_socket, size) == -1)
    {
        perror("listen error");
        exit(-1);
    }
    
    printf("bind:%d\n", port);

    // 接受
    struct sockaddr_in client_addr;
    int addr_size = sizeof(client_addr);
    int fd_accept = accept(fd_socket, (struct sockaddr *)&client_addr, &addr_size);
    if (fd_accept == -1)
    {
        perror("accept error");
        exit(-1);
    }
    printf("conn:%s\n", inet_ntoa(client_addr.sin_addr));

    // 接收
    int max_len = 1024;
    char buf[max_len];
    int buf_len = 0;

    do
    {
        buf_len = recv(fd_accept, buf, max_len - 1, 0);//默认传0
        if (buf_len == -1)
        {
            perror("recv error");
            exit(-1);
        }else if (buf_len == 0)
        {
            printf("recv over\n");
            break;
        }
        else
        {
            buf[buf_len] = '\0';//字符串结束符
            printf("recv:%s\n", buf);
        }
    } while (strcmp(buf, "over") != 0);
    
    // 关闭
    close(fd_accept);
    close(fd_socket);


    printf("main exit\n");
    exit(0);
}
```


## 客户端

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/socket.h>
#include <arpa/inet.h>

void main()
{
    printf("conn send\n");
    // char host[] = "127.0.0.1";
    // int port = 12701;

    char host[] = "192.168.10.143";
    int port = 9999;


    // 通讯
    int fd_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (fd_socket == -1)
    {
        perror("socket error");
        exit(-1);
    }
    // 地址
    struct sockaddr_in server_addr;
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = inet_addr(host);
    server_addr.sin_port = htons(port);

    // 连接
    int fd_connect = connect(fd_socket, (struct sockaddr *)&server_addr, sizeof(server_addr));
    if (fd_connect == -1)
    {
        perror("connect error");
        exit(-1);
    }
    printf("conn:%s\n", host);


    // 发送
    char buf[] = "over";
    printf("send:%s\n", buf);
    int fd_send = send(fd_socket, buf, sizeof(buf), 0);//默认传0
    if (fd_send == -1)
    {
        perror("send error");
        exit(-1);
    }
    // 关闭
    close(fd_socket);

    printf("main exit\n");
    exit(0);
}
```