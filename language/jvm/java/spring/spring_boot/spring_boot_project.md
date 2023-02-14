# Spring Bootx项目



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

// @RunWith(SpringJUnit4ClassRunner.class)
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
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
        </plugin>
    </plugins>
</build>

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

- MANIFEST.MF
```
Manifest-Version: 1.0
Spring-Boot-Classpath-Index: BOOT-INF/classpath.idx
Implementation-Title: spring-boot-start
Implementation-Version: 1.0-SNAPSHOT
Spring-Boot-Layers-Index: BOOT-INF/layers.idx
Start-Class: package.Application
Spring-Boot-Classes: BOOT-INF/classes/
Spring-Boot-Lib: BOOT-INF/lib/
Build-Jdk-Spec: 1.8
Spring-Boot-Version: 2.5.4
Created-By: Maven Jar Plugin 3.2.0
Main-Class: org.springframework.boot.loader.JarLauncher


```

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