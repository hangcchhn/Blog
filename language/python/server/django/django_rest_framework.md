hench# Django REST Framework


- `pip install djangorestframework`
- `pip install djangorestframework-jwt`


```py

INSTALLED_APPS = [
    'rest_framework',
]

```



---


## serializers


---
## views
- `APIView`继承`View`

- 权限

```py
perform_authentication







```
- `APIView`
- `request.user`
- `for authenticator in self.authenticators:`


## mixins
- 可以重写`perform_xxx`方法

## generics

- `GenericAPIView`
    - `queryset`：查询集
    - `serializer_class`：序列化类
    - `lookup_field`：主键id
    - `lookup_url_kwarg`
    - `filter_backends`：过滤器
    - `pagination_class`：分页类

    - `get_object()`
    - `get_serializer()`


## viewsets

- `ViewSetMixin`
    - `as_view`方法：`url()`
    - `get_extra_actions`方法：获取被`@action`标记的方法，`router.register()`，

- `GenericViewSet`继承`ViewSetMixin`和`GenericAPIView`


## authentication
- 基类`BaseAuthentication`
- 基础`BasicAuthentication`
    - header:`Authorization Basic base64.encode(username:password)`
- 会话`SessionAuthentication`
    - form-data
- 令牌`TokenAuthentication`


## permissions 

- `BasePermission`
- `AllowAny`
- `IsAuthenticated`
- `IsAdminUser`
- `IsAuthenticatedOrReadOnly`



## 过滤器
> filter
- BaseFilterBackend
- SearchFilter
- OrderingFilter



## 渲染器
> renderer