# OceanBase


```sh


docker pull oceanbase/oceanbase-ce

docker run -p 2881:2881 --name oceanbase-ce -d oceanbase/oceanbase-ce

docker exec -it oceanbase-ce ob-mysql root

```


```sh


obclient -uroot@sys -h127.0.0.1 -P2881


```


```sql
-- 修改用户密码
alter user root identified by 'chench';

```