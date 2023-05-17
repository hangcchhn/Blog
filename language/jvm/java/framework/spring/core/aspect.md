
---

```java

@Aspect
@Component
public class AnnotationAspect(){
    @Pointcut(value = "@annotation(hn.cch.common.annotation.Annotation)")
    public void pointcut() {

    }


    @Around("pointcut()")
    public Object around(ProceedingJoinPoint proceedingJoinPoint) {

    }
}


```

---
## AspectJ
> Eclipse

- 基于Java语言的AOP框架
- Spring 2.0+支持AspectJ，注解`@EnableAspectJAutoProxy`
- 支持类，接口，字段，方法，构造方法，静态方法，静态变量初始赋值，final终态等

- 织入：编译和加载过程中修改字节码实现增强，性能较高，入侵性较强

- AspectJ编译器(ajc)
- compile:maven插件aspectj-maven-plugin

- agent:`-javaagent:./aspectjweaver.jar`

