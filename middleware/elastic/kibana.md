# Kibana





./config/kibana.yml

server.port: 5601
server.host: "0.0.0.0"
elasticsearch.url: "http://localhost:9200"

./bin/kibana

http://localhost:5601

--------------------------------------------------------------------------------------------------

使用logstash配合logback框架以tcp协议将springboot程序日志传到elasticsearch系统
通过kibana连接elasticsearch系统查询springboot程序的logback日志信息展示在界面上

在kibana界面上查询springboot日志的流程
1.先访问kibana主页确保连接elasticsearch正常
2.在左侧最下面点击按钮展开菜单栏选择management菜单项
3.先在Elasticsearch->Index Management确认logstash是否存在
3.依次选择Kibana->index patterns->Create index pattern
4.输入Index pattern确认Success! Your index pattern matches 1 index.后再点击Next step
5.在Configure settings下拉列表选择@timestamp后再点击Create index pattern
6.在菜单栏选择management菜单项Discover就可以看到对应的数据信息



--------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------
