

```sh


nohup ./bin/mqnamesrv &

nohup bin/mqbroker -n localhost:9876 &

export NAMESRV_ADDR=localhost:9876

./bin/tools.sh org.apache.rocketmq.example.quickstart.Producer


./bin/tools.sh org.apache.rocketmq.example.quickstart.Consumer


./bin/mqshutdown broker

./bin/mqshutdown namesrv

```