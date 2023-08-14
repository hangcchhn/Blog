# Spring Data ElasticSearch


- pom.xml

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-elasticsearch</artifactId>
</dependency>

```

- application.yml
```yaml
spring:
    elasticsearch:
        rest:
            uris: http://localhost:9200


```


```java

public class ElasticsearchServiceImpl {

    @Autowired
    private ElasticsearchRestTemplate template;

}

```


---


```xml
<dependency>
    <groupId>org.elasticsearch.client</groupId>
    <artifactId>elasticsearch-rest-high-level-client</artifactId>
</dependency>

```