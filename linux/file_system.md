# 文件系统
> file system

- /:根路径

- /bin/:
- /lib/:
- /sbin/:
- /slib/:

- /home/:普通用户
- /root/:超级用户

- /etc/:软件配置目录
- /usr/:系统软件目录
    - bin/:
    - lib/:
    - local/:
    - share/:
    - man/:

- /opt/:应用软件目录
- /tmp/:临时文件目录
- /var/:
    - tmp/:

- /dev/:设备
- /mnt/:挂载

- /boot/:系统引导
- /proc/:进程信息
    - cpuinfo
    - meminfo


---
- /proc/meminfo
- processor:逻辑CPU的index
    - `cat /proc/cpuinfo | grep "processor" | wc -l`
- physical id:物理CPU的index
    - `cat /proc/cpuinfo | grep "physical id" | sort| uniq| wc -l`
- core id:一个物理CPU中的core的index
- cpu cores:一个物理CPU中的core的size
    - `cat /proc/cpuinfo | grep "cpu cores" | uniq`


- processor = physical id * cpu cores



---
- /proc/meminfo

- MemTotal:
- MemFree:
- MemAvailable:
- Buffers:
- Cached:
- SwapCached:

`free -h`