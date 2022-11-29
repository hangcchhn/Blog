
---
## 新建用户
> 远程连接:`host=%`

- 给每个数据库配置一个用户
```sql
grant all privileges on database_name.* to 'user_name'@'%' identified by '******' with grant option;
flush privileges;
```

- 配置最大权限的用户
```sql
grant all privileges on *.* to 'root'@'%' identified by '******' with grant option;
flush privileges;
```

---
## mysql8不支持创建用户与配置权限同时执行，需要把创建用户与配置权限分开

```sql
-- 新建用户
create user 'root'@'%' identified by '******';
-- 修改密码
alter user 'root'@'localhost' identified  by '******';
-- 删除用户
drop user 'user_name'@'host_name';
```

配置权限：
```sql
show grants for 'user_name';
grant all privileges on *.* to 'user_name'@'host_name' with grant option;
flush privileges;
```

- my.cnf|my.ini:
```ini
[mysqld]
skip-name-resolve

bind-address=0.0.0.0
```


---

# 解决mysql密码过期问题

- 跳过授权表格（跳过安全登陆）
- my.cnf|my.ini:
```ini
[mysqld]
skip-grant-tables
```
- 重启MySQL服务
```sql
update mysql.user set authentication_string=password('chench') where user='root';

set password for 'root'@'localhost' = password('******');
```


- 不同版本mysql修改密码
```sql
use mysql;
-- 插件plugin
select user, host, plugin from user;

-- MySQL 5.x插件plugin=mysql_native_password
alter user 'root'@'localhost' identified with mysql_native_password by 'chench';

-- MySQL 8.x插件plugin=caching_sha2_password
alter user 'root'@'localhost' identified with caching_sha2_password by 'chench';
```

- 由于SQLyog连接工具只支持mysql_native_password插件加密密码，建议MySQL 8.x修改用户插件mysql_native_password按MySQL 5.x方式




---



```sh

./bin/mysqld --defaults-file=/opt/mysql/mysql-8.0.16/my.cnf --initialize --console

./bin/mysqld --defaults-file=/opt/mysql/mysql-8.0.16/my.cnf

./bin/mysqld_safe --defaults-file=/opt/mysql/mysql-8.0.16/my.cnf


./bin/mysql -S /opt/mysql/mysql-8.0.16/data/mysql.sock
```


```
./bin/mysqladmin -S /opt/mysql/mysql-8.0.16/data/mysql.sock -u root -p shutdown



```