# MyBatis分页插件PageHelper




pageNum从1开始，传入0和1得到的结果一样

Page page = PageHelper.startPage(pageNum, pageSize);
只对该语句后的第一个查询语句得到的数据进行分页