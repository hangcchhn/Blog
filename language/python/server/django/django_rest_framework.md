hench# Django REST Framework


- `pip install djangorestframework`



```py

INSTALLED_APPS = [
    'rest_framework',
]

REST_FRAMEWORK = {
}

```

- `import rest_framework.settings.DEFAULTS`
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


### ModelMixin

- `CreateModelMixin`
    - `POST`
    - `preform_create`
- `ListModelMixin`
    - `GET`
- `RetrieveModelMixin`
    - `GET`
- `UpdateModelMixin`
    - `PUT`|`PATCH`
- `DestroyModelMixin`
    - `DELETE`



## generics

- `GenericAPIView`
    - `queryset`：查询集
    - `serializer_class`：序列化类
    - `lookup_field`：主键id，默认pk
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

## 搜索
- `SearchFilter`：字段`search_fields=[]`
    - `SearchFilter.search_param`请求参数，默认`search`
    - `SearchFilter.lookup_prefixes`：规则`'^name','=id'`
        - `icontains`：包含匹配，是默认值，符号``
        - `istartswith`：前缀匹配，符号`^`
        - `iexact`：精确匹配，符号`=`
        - `iregex`：正则匹配，符号`$`
        - `search`：全文检索，只支持`PostgreSQL`数据库，符合`@`，

    -
### 排序
- `OrderingFilter`：字段`ordering_fields=['name', '-age']`
    - `OrderingFilter.ordering_param`请求参数，默认`ordering`
    - 默认正序，前缀`-`表示逆序
---
## 分页
> pagination
- `pagination_class=CustomPagination`
    - `class CustomPagination(PageNumberPagination)`

- `PageNumberPagination.page_query_param`页码请求参数，默认`page=1`
- `PageNumberPagination.page_size_query_param`页面大小请求参数，需要继承配置

## 渲染器
> renderer



---
## JWT

- `pip install djangorestframework-jwt`

