
# Django Test

- 参考unittest框架

- 测试用例所在文件命名规则:`test*.py`
```py

from django.db.models import Model, CharField, IntegerField, DateField


class UserModel(Model):
    user_name = CharField(max_length=128,)
    mobile = CharField(max_length=11,)
    status = IntegerField()
    birthday = DateField(default='2000-01-01')

    pass
```

## 测试脚本

```py

class MenuTestCase(TestCase):

    def setUp(self):
        menu_list = list()
        batch = 10
        for i in range(batch):
            menu_list.append(Menu(name=f'menu{i}'))
            pass
        Menu.objects.bulk_create(menu_list, batch)
        count = Menu.objects.count()
        self.assertEqual(count, batch)
        pass

    def test_menu_filter(self):
        queryset: QuerySet = Menu.objects.filter(Q(name__startswith='menu'))
        data: QuerySet = queryset.filter(Q(name__startswith='menu'))
        logger.info(f'data.count={data.count()}')
        self.assertNotEqual(data.count(), 0)
        pass

    pass
```


## 测试命令
```sh

# 保存数据
python manage.py test --keepdb
# 屏蔽输出
python manage.py test --noinput

# 测试用例执行顺序
python manage.py test --shuffle
python manage.py test --reverse


# 测试范围
python manage.py test # all
python manage.py test django_service # package
python manage.py test django_service.tests # module
python manage.py test django_service.tests.MenuTestCase # class
python manage.py test django_service.tests.MenuTestCase.test_menu_filter # method



python manage.py test --pattern="test_*.py"

```