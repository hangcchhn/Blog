# MyBatis注解


- `@CacheNamespace`:`<cache>`
- `@CacheNamespaceRef`:`<cacheRef>`

- `@Property`:`<property>`



- `@ConstructorArgs`

- `@Arg`:`<arg>`,<idArg>

- `@TypeDiscriminator`

- `@Case`:`<case>`

- `@Results`:`<resultMap>`
- `@Result`:`<result>`,`<id>`

- `@One`:`<association>`
- `@Many`:`<collection>`

- `@MapKey`
- `@Param`

- `@ResultMap`
- `@ResultType`


- `@Flush`:`SqlSession#flushStatements()`

- `@Options`

---

- `@Insert`,`@InsertProvider`:`<insert>`
- `@Update`,`@UpdateProvider`:`<update>`
- `@Delete`,`@DeleteProvider`:`<delete>`
- `@Select`,`@SelectProvider`:`<select>`
```java
@Mapper
public interface ProviderMapper {

    @SelectProvider(value = SourceProvider.class, method = "selectTable")
    public List<TableEntity> selectTable(@Param(value = "tableColumn") String tableColumn,
                                         @Param(value = "orderColumn") String orderColumn);

    @SelectProvider(value = ProviderMethodResolverImpl.class)
    public List<TableEntity> providerMethod(@Param(value = "tableColumn") String tableColumn,
                                            @Param(value = "orderColumn") String orderColumn);

    @SelectProvider
    // @SelectProvider(value = DefaultProvider.class)
    public List<TableEntity> defaultProvider(@Param(value = "tableColumn") String tableColumn,
                                             @Param(value = "orderColumn") String orderColumn);

}
```



- 实现`ProviderMethodResolver`接口，在`@XxxxxxProvider`注解中不要指定方法，默认匹配到同名方法上。
```java
public class ProviderMethodResolverImpl implements ProviderMethodResolver {

    public String providerMethod(String orderColumn) {
        return new SQL() {{
            SELECT("primary_key", "table_column");
            FROM("table_entity");
            WHERE("table_column = #{}");
            ORDER_BY(orderColumn);
        }}.toString();
    }
}
```
- 设置默认Provider.class
```java
Configuration configuration = new Configuration();
configuration.setDefaultSqlProviderType(DefaultProvider.class);

```


