# JDK
> Java Development Environment

---
## jdk1.8

类不支持多继承，接口允许多继承

接口的default和static方法


jdk<1.8 接口不支持静态成员

jdk=1.8 函数式接口：@FunctionInterface
- 有且仅有一个abstract方法的接口，
- 不包含default和static方法
- 来自超类Object的也不算



---
### 函数接口

java.util.function

- 消费型接口:Consumer
- 供给型接口:Supplier
- 谓词型接口:Predicate
- 功能型接口:Function


---




## jdk-11 新特性：
- JEP 181: Nest-Based Access Control（基于嵌套的访问控制）
- JEP 309: Dynamic Class-File Constants（动态类文件常量）
- JEP 315: Improve Aarch64 Intrinsics（改进 Aarch64 函数）
- JEP 318: Epsilon: A No-Op Garbage Collector（Epsilon — 一个无操作的垃圾收集器）
- JEP 320: Remove the Java EE and CORBA Modules（删除 Java EE 和 CORBA 模块）
- JEP 321: HTTP Client (Standard)（标准HTTP客户端）
- JEP 323: Local-Variable Syntax for Lambda Parameters（用于 Lambda 参数的局部变量语法）
- JEP 324: Key Agreement with Curve25519 and Curve448（Curve25519 和 Curve448 算法的- 密钥协议）
- JEP 327: Unicode 10
- JEP 328: Flight Recorder（飞行记录器）
- JEP 329: ChaCha20 and Poly1305 Cryptographic Algorithms（ChaCha20 和 Poly1305 加密- 算法）
- JEP 330: Launch Single-File Source-Code Programs（启动单一文件的源代码程序）
- JEP 331: Low-Overhead Heap Profiling（低开销的 Heap Profiling）
- JEP 332: Transport Layer Security (TLS) 1.3（支持 TLS 1.3）
- JEP 333: ZGC: A Scalable Low-Latency Garbage Collector (可伸缩低延迟垃圾收集器)
- JEP 335: Deprecate the Nashorn JavaScript Engine（弃用 Nashorn JavaScript 引擎）
- JEP 336: Deprecate the Pack200 Tools and API（弃用 Pack200 工具和 API）

---

```java
public class Main {


    public static void main(String[] args) {
        System.out.println("jdk11");
    }

    public static void new01() {
        Arrays.asList("0", "1", "2", "3", "4", "5", "6", "7", "8", "9").forEach((var str) -> {
            System.out.println(str);
        });
    }

    public static void new02() {

        String string = "";


        // 判断字符串是否为空白
        string = " ";
        System.out.println(string.isBlank()); // true
        // 去除首尾空格
        string = " Javastack ";
        System.out.println(string.strip()); // "Javastack"
        // 去除尾部空格
        string = " Javastack ";
        System.out.println(string.stripTrailing()); // " Javastack"
        // 去除首部空格
        string = " Javastack ";
        System.out.println(string.stripLeading()); // "Javastack "
        // 复制字符串
        string = "Java";
        System.out.println(string.repeat(3));// "JavaJavaJava"
        // 行数统计
        string = "A\nB\nC";
        System.out.println(string.lines().count()); // 3

    }

    public static void new03() {

        var list = List.of("Java", "Python", "C");
        var copy = List.copyOf(list);
        System.out.println(list == copy); // true

        // var list = new ArrayList<String>();
        // var copy = List.copyOf(list);
        // System.out.println(list == copy); // false


    }

    public static void new04() {


        Stream.ofNullable(null).count(); // 0

        Stream.of(1, 2, 3, 2, 1)
                .takeWhile(n -> n < 3)
                .collect(Collectors.toList()); // [1, 2]


        Stream.of(1, 2, 3, 2, 1)
                .dropWhile(n -> n < 3)
                .collect(Collectors.toList()); // [3, 2, 1]

    }

    public static void new05() throws Exception {

        var classLoader = ClassLoader.getSystemClassLoader();
        var inputStream = classLoader.getResourceAsStream("javastack.txt");
        var javastack = File.createTempFile("javastack2", "txt");
        try (var outputStream = new FileOutputStream(javastack)) {
            inputStream.transferTo(outputStream);
        }

    }

    public static void new06() throws Exception {
        var request = HttpRequest.newBuilder()
                .uri(URI.create("https://javastack.cn"))
                .GET()
                .build();
        var client = HttpClient.newHttpClient();
        // 同步
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        System.out.println(response.body());
        // 异步
        client.sendAsync(request, HttpResponse.BodyHandlers.ofString())
                .thenApply(HttpResponse::body)
                .thenAccept(System.out::println);

    }

    public static void new08() throws Exception {
        Files.writeString(
                Path.of("./", "tmp.txt"), // 路径
                "hello, jdk11 files api", // 内容
                StandardCharsets.UTF_8); // 编码
        String s = Files.readString(
                Paths.get("./tmp.txt"), // 路径
                StandardCharsets.UTF_8); // 编码
    }

    public static void new09() throws Exception {
        //java Main.java
        //java --source 11 main
        /*
         * #!/g/jdk-11/bin/java --source 11
         * ./main
         */

        System.out.println("Main");

    }

}

```













---

