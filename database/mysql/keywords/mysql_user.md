



# MySQL用户
> user

```sql
create user u identified by 'password'
rename user old_user to new_user
set password for u = password('password')
drop user u
```

## 权限
> grants

- usage(无权限)
- all privileges
- grant option

```sql
show grants for u

grant|revoke ... on database.table to user

grant all privileges on *.* to 'root'@'%' with grant option
```

## 备份
```sql
flush tables;
mysqldump|msqlhotcopy

backup|restore table
select into 'table.sql' from table ...
```
## 运维

```sql
analyze table t
check table t
```
