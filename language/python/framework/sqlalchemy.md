
# SQLAlchemy


- 数据库持久化

- `pip install sqlalchemy`


## ORM


---

## 数据库连接
- `dialect+driver://username:password@host:port/database`

- mysql:
    - `mysql+mysqldb://<user>:<password>@<host>[:<port>]/<dbname>`
    - `mysql+pymysql://<username>:<password>@<host>/<dbname>[?<options>]`
    - `mysql+mysqlconnector://<user>:<password>@<host>[:<port>]/<dbname>`




- oracle:
    - `oracle+cx_oracle://user:pass@host:port/dbname[?key=value&key=value...]`
- sqlserver:
    - `mssql+pymssql://<username>:<password>@<freetds_name>/?charset=utf8`

- sqlite:
    - `sqlite+pysqlite:///file_path`
- postgresql:
    - `postgresql+psycopg2://user:password@host:port/dbname[?key=value&key=value...]`


