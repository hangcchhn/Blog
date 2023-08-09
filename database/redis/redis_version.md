# Redis版本




---
## 权限控制

### 密码
> Redis<6.0

```sh
# redis.conf
requirepass password

# redis-cli
auth password

```


### 用户名和密码
> Redis>=6.0

- 默认用户名是`default`
```sh
# redis.conf
requirepass password

# redis-cli
auth default password



```

## ACL
> Access Control List

```sh

acl help

acl log 1
acl log reset

acl list

acl getuser default


acl users

acl getuser username
acl deluser username

# on, off; +:add, -:del;
acl setuser username on >password +<command> +@<category>


```
- 状态
    - 启用：`on`
    - 禁用：`off`
- 密码：一个用户可以有多个密码
    - 明文：添加`>`，移除`<`
    - 密文：添加`#`，移除`!`
        - SHA-256:`echo -n "chench" | shasum -a 256`
    - `nopass`
    - `resetpass`




- key：`~`
    - `~*`=`allkeys`
```sh
acl setuser username on >password allkeys
acl setuser username on >password ~key1* ~key2*



```
---
## 权限
- 类别category：`acl cat`
    - `+@category`
    - `-@category`
    - `+@all`
    - `-@all`
    - `+@admin`
- 命令command：`acl cat category`
    - `+command`
    - `-command`
    - `+@all`
    - `-@all`
- 子命令subcommand：只能先禁用comand再添加subcommand，不能先启用command再移除subcommand
    - `-command +command|subcommand`


```sh



```


---
### 重置
```sh

acl setuser username resetpass
acl setuser username resetkeys
acl setuser username reset

acl setuser username off

```


---

## 配置文件
> users.acl

```sh
# 保存到配置文件
acl save
# 从配置文件加载
acl load

```

