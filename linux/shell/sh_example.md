# Shell举例

- 变量

```sh
data='{
        "reference": "'$1'",
        "start_date": "2022-01-01"
}'
result=$(
    curl -X "POST" -H "Content-Type: application/json" \
    -d "$data" "http://192.168.1.8:8000/task/add"
)
echo $result # "SUCCESS"
if [ $result == '"SUCCESS"']
then
echo "OK"
fi

exit 0
exit 1

```