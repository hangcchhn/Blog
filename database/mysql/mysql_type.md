
# MySQL数据类型

- 数值

| 类型 | 说明 |
| :- | :- |
| tinyint | 非常小的整数（占1个字节） |
| smallint | 较小整数（占2个字节） |
| mediumint | 中等大小整数（占3个字节） |
| int | 标准整数（占4个字节） |
| bigint | 较大整数 |
| float | 单精度浮点数 |
| double | 双精度浮点数 |
| decimal | 一个串的浮点数 |


- 字符串

| 类型 | 说明 |
| :- | :- |
| char | 定长字符串 |
| varchar | 可变长字符串 |
| tinyblob | 非常小的blob（二进制大对象） |
| blob | 小blob |
| mediumblob | 中等的blob |
| longblob | 大blob |
| tinytext | 非常小的文本串 |
| text | 小文本串 |
| mediumtext | 中等文本串 |
| longtext | 大文本串 |
| enum | 枚举；列可赋予某个枚举成员 |
| set | 集合；列可赋予多个集合成员 |


- 日期和时间

| 类型 | 说明 |
| :- | :- |
| date | "yyyy-mm-dd"格式表示的日期 |
| time | "hh:mm:ss"格式表示的时间 |
| datetime | "yyyy-mm-dd hh:mm:ss"格式表示日期和时间 |
| timestamp | "yyyymmddhhmmss"格式表示的时间戳 |
| year | "yyyy"格式表示的年份 |

---
- 在设计数据库创建表时，mysql会自动分配长度：int(11)、tinyint(4)、smallint(6)、mediumint(9)、bigint(20)。
- 括号中的数字(n)并不代表占用空间容量。而代表最小显示位数，只有在字段设置zerofill用0来自动填充才有效果

- decimal(m,n):整数位数m，小数位数n


---
## MySQL数据库与Java语言映射关系

| MySQL | Java |
| :- | :- |
| VARCHAR<br>CHAR<br>TEXT | java.lang.String |
| BLOB | java.lang.Byte[] |
| BIT | java.lang.Boolean |
| TINYINT<br>SMALLINT<br>MEDIUMINT<br>INT | java.lang.Integer |
| FLOAT | java.lang.Float |
| DOUBLE | java.lang.Double |
| BIGINT | java.math.BigInteger |
| DECIMAL | java.math.BigDecimal |
| DATE<br>YEAR | java.sql.Date |
| TIME | java.sql.Time |
| DATETIME<br>TIMESTAMP | java.sql.Timestamp |

---
