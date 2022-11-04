# 硬件
> hardware

## CPU
> /proc/cpuifo

- processor:逻辑CPU的index
    - `cat /proc/cpuinfo | grep "processor" | wc -l`
- physical id:物理CPU的index
    - `cat /proc/cpuinfo | grep "physical id" | sort| uniq| wc -l`
- core id:一个物理CPU中的core的index
- cpu cores:一个物理CPU中的core的size
    - `cat /proc/cpuinfo | grep "cpu cores" | uniq`


processor = physical id * cpu cores

## mem
> /proc/meminfo

- MemTotal:
- MemFree:
- MemAvailable:
- Buffers:
- Cached:
- SwapCached:

`free -h`