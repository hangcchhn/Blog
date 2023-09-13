# HBase command

```sh
./bin/hbase shell
hbase(main):001:0> help

# command_group
help command_group
# command
help command

```


---
## namespace
```sh
list_namespace

create_namespace 'n1'


```


---
## table
```sh
list
list_namespace_tables 'n1'


exists 'n1:t1'

create 'n1:t1','cf1','cf2','cf3'

put 'n1:t1','row_key','cf1:c1','value1'
get 'n1:t1','row_key'


count 'n1:t1'

scan 'n1:t1'



```