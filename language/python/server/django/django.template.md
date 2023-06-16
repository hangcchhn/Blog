# 模板

- `{% python code %}`
- `{{ object.field }}`


- templates/module/template.html
```html
{% for object in objects %}
    {{ object.field }}
{% endfor %}
```


- views.py

```py

from django.http import HttpResponse
from django.template import loader

from .models import Question


def template(request):
    # ./templates可以省略
    template = loader.get_template('module/template.html')
    context = {
        'latest_question_list': latest_question_list,
    }
    return HttpResponse(template.render(context, request))

```
