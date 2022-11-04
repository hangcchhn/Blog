# HTML5

## 1.1 HTML5

### 1.1.1 html5

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <!--  -->
</body>
</html>
```

### 1.1.2 html5解释

* &lt;!DOCTYPE html&gt;：html5文档类型
* &lt;html&gt;&lt;/html&gt;：根标签
* &lt;head&gt;&lt;/head&gt;：头标签
* &lt;body&gt;&lt;/body&gt;：体标签
* &lt;meta charset="utf-8" /&gt;：uft-8文档编码格
* &lt;title&gt;&lt;/title&gt;：页面标题
* &lt;!--  --&gt;：注释

## 1.2 基本标签

### 1.2.1

* 回车换行

```html
<br />
```

* 水平线

```html
<hr />
```

### 1.2.2

* 标题标签

```html
<h1>一级标题</h1>
<h2>二级标题</h2>
<h3>三级标题</h3>
<h4>四级标题</h4>
<h5>五级标题</h5>
<h6>六级标题</h6>
```

* 段落标签

```html
<p>段落</p>
```

## 1.3 高级标签

### 1.3.1 多媒体标签

* 图片标签

```html
<img src="#" alt="Alternate Text" />
```

* 音乐标签

```html
<audio controls="controls">
    <source src="file.mp3" type="audio/mp3" />
    <source src="file.ogg" type="audio/ogg" />
</audio>
```

* 视频标签

```html
<video controls="controls">
    <source src="file.mp4" type="video/mp4" />
    <source src="file.webm" type="video/webm" />
    <source src="file.ogv" type="video/ogg" />
</video>
```

### 1.3.2 列表标签

* 无序列表

```html
<ul>
    <li>列表项</li>
</ul>
```

* 有序列表

```html
<ol>
    <li>列表项</li>
</ol>
```

* 定义列表

```html
<dl>
    <dt>定义的项目</dt>
    <dd>定义的描述</dd>
</dl>
```

### 1.3.3 表格标签

```html
<table><!-- 表格 -->
    <tr><!-- 行 -->
        <td></td><!-- 列 --> 
    </tr>
</table>
```

### 1.3.4 表单标签

* 表单域

```html
<form action="/" method="post"></form>
```

* 表单项

```html
<!-- input -->
<input type="text" name="name" value="" /><!-- 单行输入框 -->
<input type="password" name="name" value="" /><!-- 密码输入框 -->
<input type="button" name="name" value="" /><!-- 通用按钮 -->
<input type="radio" name="name" value="" /><!-- 单选按钮 -->
<input type="checkbox" name="name" value="" /><!-- 复选按钮 -->
<input type="submit" name="name" value="" /><!-- 提交按钮 -->
<input type="reset" name="name" value="" /><!-- 重置按钮 -->
<input type="image" name="name" value="" /><!-- 图片按钮 -->
<input type="file" name="name" value="" /><!-- 文件域 -->
<input type="hidden" name="name" value="" /><!--隐藏域-->
```

```html
<!-- 下拉选择列表 -->
<select>
    <option value="value">text</option><!-- 列表项 -->
</select>
```

```html
<!-- 多行输入域 -->
<textarea></textarea>
```



