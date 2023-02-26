# Lombok

---
- 注解
```java

// 使用@AllArgsConstructor后使@Data中的@NoArgsConstructor失效
@NoArgsConstructor
@AllArgsConstructor
// @Data = @NoArgsConstructor + @Setter + @Getter + @ToString
@Data
public class User {

    private String id;
}


```


---

- 日志

```java
@Slf4j
@Service
public class UserServiceImpl {

    @Autowired
    private UserMapper userMapper;

    public User getUserById(String id) {
        log.info("id:{}", id)
        User user = userMapper.getUserById(id);
        return user;
    }
}


```
