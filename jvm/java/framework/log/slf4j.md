# slf4j



- Binding:
    - slf4j-api

    - slf4j-nop

    - slf4j-jcl

    - slf4j-simple

    - slf4j-jdk14

    - slf4j-log4j12
    - log4j

- Bridging:
    - log4j-over-slf4j
    - jul-to-slf4j
    - jcl-over-slf4j

---


## MDC
> Mapped Diagnostic Context
- 映射诊断式上下文

- `MDC`类是线程安全的，底层使用`ThreadLocal`类

```java
MDC.put(key, value);
value = MDC.get(key);
MDC.remove(key);
MDC.clear();

```