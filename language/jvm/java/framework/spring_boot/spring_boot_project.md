# Spring Boot项目



- pom.xml

```xml

<parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>2.1.1.RELEASE</version>
    <relativePath/>
</parent>

```

- Application.java
```java

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}

```

---
- ApplicationTest.java
- Spring Boot < 2.2.0
```java

// @RunWith(value = SpringJUnit4ClassRunner.class)
// @ContextConfiguration(classes = Application.class)
@SpringBootTest
public class ApplicationTest {

    @Test
    public void test() {
        // code
    }
}



@AutoConfigureMockMvc
@SpringBootTest
public class Test {

    @Test
    public void test(@Autowired MockMvc mvc) {
        MockHttpServletRequestBuilder builder = MockMvcRequestBuilders.get("/path");
        ResultActions actions = mvc.perform(builder);

        StatusResultMatchers status = MockMvcResultMatchers.status();
        ResultMatcher matcher = status.isOk();


        ContentResultMatchers content = MockMvcResultMatchers.content();
        ResultMatcher matcher = content.json("{\"id\":1}");

        HeaderResultMatchers header = MockMvcResultMatchers.header();
        ResultMatcher matcher = header.string("Content-Type", "application/json");

        actions.andExpect(matcher);


    }

}
```



---
## 打包执行

```xml


<build>
    <finalName>xxx</finalName>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
        </plugin>
    </plugins>
</build>

```


---
- restart-spring-boot-jar.sh
```sh
env=prod
jar_path='/path/xxx.jar'
pids=`pgrep -f $jar_path`
for pid in ${pids}
do
    kill -9 $pid
    sleep 3
    echo "stop $pid:$jar_path"
done

su - chench -c "nohup java -jar $jar_path --spring.profiles.active=$env > /dev/null 2>&1 &"
pids=`pgrep -f $jar_path`
echo "start $pids:$jar_path"

```



- xxx.jar
    - META-INF
        - MANIFEST.MF
    - BOOT-INF
        - classes
        - lib
    - org
        - springframework
            - boot
                - loader
                    - JarLauncher.class


---
## 使用Maven构建的Spring Boot项目读取src/java/resource下文件


```java

@Service
public class FileServiceImpl implements FileService {

    @Autowired
    ResourceLoader resourceLoader;

    public void getFile() {
        Resource resource = resourceLoader.getResource("classpath:/static/xxx");

        ClassPathResource classPathResource = new ClassPathResource("/static/xxx");
    }
}

```

- 使用File或ResourceUtils无法读取jar内文件