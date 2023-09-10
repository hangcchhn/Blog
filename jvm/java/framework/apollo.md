# Apollo

- 阿波罗是携程实现的分布式配置管理中心

- 支持Java和.net客户端


- 数据库
    - PortalDB
    - ConfigDB




- 模块
    - Config Service(8080)：读取，推送配置
        - Meta Server：注册中心(Eureka)
    - Admin Service(8090)：修改，发布配置
    - Portal(8070)：门户网站
        - 账户/密码：apollo/admin
---


- environment
- cluster
- namespace

---

- 百度自动驾驶