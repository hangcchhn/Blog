# selenium
```sh
pip install selenium
```
- webdriver:http://chromedriver.storage.googleapis.com/index.html

chrome:v49.0.2623.112
chromium:v49.0.2623.112
chromedriver:v2.21

将chromedriver放在与python相同路径

---

```py
from selenium import webdriver
import time
driver = webdriver.Chrome()
driver.get("https://www.baidu.com")
time.sleep(3)
driver.close()
```
