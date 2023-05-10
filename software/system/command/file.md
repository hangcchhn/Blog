



## 复制移动

> 复制copy
> 移动move


### 删除
```
# 选项
-f（确认）
-r（递归）
# 删除文件
rm -f /path/name.file
# 删除文件夹
rm -rf /path/dir/
```

### 复制

> -f ： 如果有同名文件时才会出现需要确认

```
# 复制文件到目标路径
cp -f file /dest/path/
# 复制文件到目标路径并对文件进行重命名
cp -f old_file /dest/path/new_file

# 将文件夹复制到目标路径
cp -rf dir /dest/path/
# 复制文件夹到目标路径并对文件夹进行重命名
cp -rf dir/ /dest/path/not_exist_dir/
# 目标路径下不存在的文件夹就表示对文件夹重命名


# 将文件夹下的全部复制到目标路径
cp -rf dir/* /dest/path/
# 虽说不带*也是一样的，但是不建议
cp -rf dir/ /dest/path/
# 网上说不同linux对此支持不一样


```
### 移动

> -r : 没有这个选项直接移动文件或文件夹


```
# 移动文件到路径
mv -f /scr/path/name.file /dest/path/
# 移动并重命名文件
mv -f /scr/path/name.file /dest/path/name.file
# 移动文件夹到路径
mv -f /scr/path/dir/ /dest/path/
# 移动并重命名文件夹
mv -f /scr/path/dir/ /dest/path/dir/




```