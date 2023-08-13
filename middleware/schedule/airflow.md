# Airflow

- Airbnb


- 使用Python语言实现


- http://airflow.apache.org/
- Airflow 1.10.x -> Python 2.7.x
- Airflow 2.2.x -> Python 3.6.x


---

- airflow-scheduler
    -

- airflow-webserver


- airflow-worker
- airflow-triggerer
- airflow- init
- postgres
- redis

---
## 部署

- 安装
```sh
wget https://raw.githubusercontent.com/apache/airflow/constraints-1.10.15/constraints-3.6.txt
pip install apache-airflow==1.10.15 --constraint constraints-3.6.txt
```
- 命令
```sh

airflow db init

airflow webserver

airflow scheduler


# 创建用户
airflow users create --username admin --firstname chen --lastname hang --role Admin --email admin@airflow.com



airflow run example_bash_operator runme_0 2015-01-01
airflow backfill example_bash_operator -s 2015-01-01 -e 2015-01-02

```
---



## Docker部署Airflow

```sh

docker pull apache/airflow:2.5.3-python3.10
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.5.3/docker-compose.yaml'
mkdir -p ./dags ./logs ./plugins
docker compose up airflow-init
docker compose up

# http:localhost:8080
# username/password:airflow/airflow

docker compose run airflow-worker airflow info


# Linux
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.5.3/airflow.sh'
chmod +x airflow.sh
airflow --help

docker compose down --volumes --rmi all

```


---
## 组件

- DAG：一个DAG包含多个Task

- Task

- Web UI
    - Flask
    - Jinja2

- Scheduler
- Worker

- Executor
    - SequentialExecutor
    - LocalExecutor
    - CeleryExecutor



- Operator
    - BashOperator
    - PythonOperator
    - MySQLOperator
    - SimpleHttpOperator