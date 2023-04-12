



# MySQL触发器
> trigger
- 只支持表table

```sql
create trigger trigger_name
before|after insert|update|delete
on t for each row select t_p(触发打印)

```

