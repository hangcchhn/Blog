# MySQL command

`mysql> command`

---
## MySQL用户管理
> 远程连接:`host=%`

- 给每个数据库配置一个用户
```sql
grant all privileges on database_name.* to 'root'@'%' identified by 'chench' with grant option;
flush privileges;
```

- 配置最大权限的用户
```sql
grant all privileges on *.* to 'root'@'%' identified by 'chench' with grant option;
flush privileges;
```

---
### MySQL 8.x不支持创建用户与配置权限同时执行，需要把创建用户与配置权限分开

```sql
-- 新建用户
create user 'root'@'%' identified by 'chench';
-- 修改密码
alter user 'root'@'%' identified  by 'chench';
-- 删除用户
drop user 'root'@'%';
```

- 配置权限
```sql
show grants for 'root';
grant all privileges on *.* to 'root'@'%' with grant option;
flush privileges;
```

- my.cnf|my.ini:
```ini
[mysqld]
# mysql库中user表的host字段不能使用域名
skip-name-resolve

bind-address=0.0.0.0
```


---

## MySQL密码过期

- 跳过授权表格（跳过安全登陆）
- my.cnf|my.ini:
```ini
[mysqld]
skip-grant-tables
```
- 重启MySQL服务
```sql
-- 插件plugin
select user, host, plugin from mysql.user;

-- 处理plugin是auth_socket，只能本地登录，无法远程连接
update user set plugin='mysql_native_password' where user='root' and host='localhost';

-- 修改密码
update user set password=password('chench') where user='root' and host='localhost';

update mysql.user set authentication_string=password('chench') where user='root';

set password for 'root'@'localhost' = password('chench');

```

---
- 不同版本mysql修改密码
```sql
-- 切换数据库
use mysql;

-- MySQL 5.x插件plugin=mysql_native_password
alter user 'root'@'localhost' identified with mysql_native_password by 'chench';

-- MySQL 8.x插件plugin=caching_sha2_password
alter user 'root'@'localhost' identified with caching_sha2_password by 'chench';
```

- 由于SQLyog连接工具只支持mysql_native_password插件加密密码，建议MySQL 8.x修改用户插件mysql_native_password按MySQL 5.x方式



