# MyBatis分页插件PageHelper



```java
// pageNum从1开始，传入0和1得到的结果一样
Page page = PageHelper.startPage(pageNum, pageSize, false);
// 只对该语句后的第一个查询语句得到的数据进行分页
List<Xxx> xxxList = XxxMapper.getList();
// page.getPageNum();
// page.getPageSize();
// page.getTotal();
// page.getResult();

```

- application.properties
```properties
pagehelper.helper-dialect=mysql
# pagehelper.helper-dialect=oracle

pagehelper.support-methods-arguments=true
# 请求参数包含pageNum和pageSize都会分页
pagehelper.reasonable=true


```
