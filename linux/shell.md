# shell


---
- shell.sh
```sh
#!/bin/bash

# 注释

# 分配执行权限
chmod +x shell.sh

- 将windows格式文件转换成unix格式文件
```sh
dos2unix shell.sh
apt install dos2unix

vim shell.sh
:set ff=unix
:set fileformat=unix
```

---

```sh
# 赋值符号=前后不能有空格
# 定义变量
variable=10

# 引用变量
echo $variable
echo ${variable}

# 重置变量
unset $variable


# 键盘输入
read -p 'prompt' variable
-n 参数个数
-t 等待时间

# 屏幕输出
echo 'print'

# 转义字符输出参数:-e
echo -e '第一行\n第二行'

```

- 数组

```sh
# 数组
array=(item0 item1 item2)

# 长度：*=@
echo ${#array[@]}
echo ${#array[*]}

# 下标：从0开始，至-1结束
echo ${array[0]}
echo ${array[-1]}


# 下标越界，新增元素
array[4]=10
# 删除元素
unset array[2]

# 切片
slice=(${array[@]:offset:number})

# 替换
replace=(${array[@]/old_item/new_item})

# 所有元素：返回以空格分割的字符串
echo ${array[@]}
# 遍历
for item in ${array[@]}
do
    echo $item
done

```

---

```sh

read --help
man read

while true
do
    read -r -p "Yes or No? [Y/N] " input

    case $input in
        [yY][eE][sS]|[yY])
            echo "Yes"
            exit 1
            ;;

        [nN][oO]|[nN])
            echo "No"
            exit 1
            ;;

        *)
            echo "Invalid input..."
            ;;
    esac
done
```




