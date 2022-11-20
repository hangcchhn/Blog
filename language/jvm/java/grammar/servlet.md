# servlet
java
maven
tomcat


---
- TestServlet.java
```java
// 继承HttpServlet类重写doGet和doPost方法
public class TestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // super.doPost(req, resp);
    }
    @Override
    public void destroy() {
        super.destroy();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

}
```
---
- WEB-INF/web.xml
```xml
<web-app>
    <servlet>
        <servlet-name>test</servlet-name>
        <servlet-class>TestServlet</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>test</servlet-name>
        <url-pattern>/test</url-pattern>
    </servlet-mapping>
</web-app>
```