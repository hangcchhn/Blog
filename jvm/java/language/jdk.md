# JDK
> Java Development Environment



---




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


