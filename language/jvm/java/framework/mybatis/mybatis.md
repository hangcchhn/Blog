# MyBatis


- iBatis


- 数据库持久层框架
- 动态SQL
- XML配置
- 映射


---


- 先通过SqlSessionFactoryBuilder读取配置构建SqlSessionFactory实例，再通过SqlSessionFactory打开SqlSession执行SQL语句获取返回结果

```java
// 读取mybatis配置文件
String resource = "mybatis-config.xml";
InputStream inputStream = Resources.getResourceAsStream(resource);
// 构建SqlSessionFactory
SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
// 打开SqlSession
SqlSession sqlSession = sqlSessionFactory.openSession();
// 根据SqlSession获取Mapper
ResultMapper resultMapper = sqlSession.getMapper(ResultMapper.class);
List<Result> resultList = resultMapper.selectResult();
// 关闭SqlSession
sqlSession.close();
```





