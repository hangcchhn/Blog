
```sh
date
Sat Mar 19 11:30:19 CST 2022
week month day hour:minute:second zone year

date +%F
yyyy-MM-dd

date +%D
MM/dd/yy


date +%T
HH:mm:ss

备份文件
mv file_name.file_type file_name.file_type_`date +%F`

date +%s
毫秒数


显示（display）
date -d '' +'%Y-%m-%d %H:%M:%S'
设置（setting）
date -s ''



date -d now +'%Y%m%d%H%M%S'

date +'%Y%m%d'


date -d now +'%Y-%m-%d %H:%M:%S'


date +'%Y-%m-%d'



date -d today +'%Y-%m-%d'
date -d yesterday +'%Y-%m-%d'
date -d tomorrow +'%Y-%m-%d'


sunday
last-sunday
last-week,next-week,last-month,next-month,last-year,next-year



一天后
date -d '1 day' +'%Y-%m-%d'
一天前
date -d '-1 day'  +'%Y-%m-%d'
date -d '1 day ago'  +'%Y-%m-%d'

year,month,day,hour,minute,second

```




%%	一个文字的 %
%a	当前locale 的星期名缩写(例如： 日，代表星期日)
%A	当前locale 的星期名全称 (如：星期日)
%b	当前locale 的月名缩写 (如：一，代表一月)
%B	当前locale 的月名全称 (如：一月)
%c	当前locale 的日期和时间 (如：2005年3月3日 星期四 23:05:25)
%C	世纪；比如 %Y，通常为省略当前年份的后两位数字(例如：20)
%d	按月计的日期(例如：01)
%D	按月计的日期；等于%m/%d/%y
%e	按月计的日期，添加空格，等于%_d
%F	完整日期格式，等价于 %Y-%m-%d
%g	ISO-8601 格式年份的最后两位 (参见%G)
%G	ISO-8601 格式年份 (参见%V)，一般只和 %V 结合使用
%h	等于%b
%H	小时(00-23)
%I	小时(00-12)
%j	按年计的日期(001-366)
%k   hour, space padded ( 0..23); same as %_H
%l   hour, space padded ( 1..12); same as %_I
%m   month (01..12)
%M   minute (00..59)
%n	换行
%N	纳秒(000000000-999999999)
%p	当前locale 下的"上午"或者"下午"，未知时输出为空
%P	与%p 类似，但是输出小写字母
%r	当前locale 下的 12 小时时钟时间 (如：11:11:04 下午)
%R	24 小时时间的时和分，等价于 %H:%M
%s	自UTC 时间 1970-01-01 00:00:00 以来所经过的秒数
%S	秒(00-60)
%t	输出制表符 Tab
%T	时间，等于%H:%M:%S
%u	星期，1 代表星期一
%U	一年中的第几周，以周日为每星期第一天(00-53)
%V	ISO-8601 格式规范下的一年中第几周，以周一为每星期第一天(01-53)
%w	一星期中的第几日(0-6)，0 代表周一
%W	一年中的第几周，以周一为每星期第一天(00-53)
%x	当前locale 下的日期描述 (如：12/31/99)
%X	当前locale 下的时间描述 (如：23:13:48)
%y	年份最后两位数位 (00-99)
%Y	年份
%z +hhmm		数字时区(例如，-0400)
%:z +hh:mm		数字时区(例如，-04:00)
%::z +hh:mm:ss	数字时区(例如，-04:00:00)
%:::z			数字时区带有必要的精度 (例如，-04，+05:30)
%Z			按字母表排序的时区缩写 (例如，EDT)


--------------------------------------------------------------------------------------------------
- 时间同步
```sh
yum install ntp -y
systemctl start ntpd
systemctl enable ntpd


vim /etc/ntp.conf

ntpq -p



yum install ntpdate -y
ntpdate ntp1.aliyun.com

```
---

## 时区时间

```sh

# 时区：GMT|CST
# 查看当前时区
cat /etc/localtime
# 查看所有时区
cd /usr/share/zoneinfo/

# 修改时区为GMT
rm -f /etc/localtime
cp /usr/share/zoneinfo/GMT0 /etc/localtime

sudo cp -f /usr/share/zoneinfo/GMT  /etc/localtime
sudo cp -f /usr/share/zoneinfo/UTC  /etc/localtime



# 修改时区为CST
rm -f /etc/localtime
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

sudo cp -f /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
export TZ=Asia/Shanghai

tzselect


```