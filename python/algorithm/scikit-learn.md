
# scikit-learn

- `pip install scikit-learn`
- `import sklearn`


---

- 特征抽取：`sklearn.feature_extraction`
- 预处理：`sklearn.preprocessing`
- 特征选择：`sklearn.feature_selection`
	- 1.过滤式：Filter
	- 2.嵌入式：Embedded
	- 3.包裹式：Wrapper
	- 4.VarianceThreshold

- 降维：`sklearn.decomposition`
	- 主成分分析PCA：`sklearn.decomposition.PCA`


- 数据集：`sklearn.datasets`
	- 加载数据集：`load_XXX`
	- 下载数据集：`fetch_XXX`

- 交叉验证：数据集划分为训练集和测试集
	- `sklearn.model_selection.train_test_split`

- 网格搜索：`sklearn.model_selection.GridSearchCV`


---
## 分类

- 近邻算法：`sklearn.neighbors`
	- KNN分类器：`KNeighborsClassifier`





---
## 回归

- 线性模型：`sklearn.linear_model`
	- 逻辑回归：`LogisticRegression`
	- 线性回归：`LinearRegression`
	- 岭回归：`Ridge`

- 线性：y = wi * xi + b
- 因变量=权重*自变量+偏置

线性回归：一元或多元

- 分类报告指标：`sklearn.metrics.classification_report`

---


- 准确率
- 召回率
- 真实值
- 预测值



---

- 朴素贝叶斯：`sklearn.naive_bayes`

- sklearn.naive_bayes.MultinomialNB(alpha = 1.0)
- 拉普拉斯平滑系数alpha


---
## 决策树和随机森林：分支，条件，选择

- if-else

- 信息熵（比特）
y=-xlogx
H(X) = -XilogXi
H(X|Y) = -(Xi/Yi)log(Xi/Yi)

- 信息增益
G(X|Y) = H(X) - H(X|Y)

---
## 决策树算法：
- ID3：最大信息增益
- C4.5：最大信息增益比
- CART：
	- 回归树：最小平方误差
	- 分类树：最小基尼系数

- 决策树：`sklearn.tree.DecisionTreeClassifier()`
- 导出dot格式：`sklearn.tree.export_graphviz()`


## 随机森林：多个决策树
- 有放回的随机抽样

- 随机森林：`sklearn.ensemble.RandomForestClassifier`


---
## graphviz
- dot格式转成pdf格式
```sh
apt install graphviz
dot -Tpdf tree.dot -o tree.pdf
```


---
## 结巴分词
- `pip install jieba`
```py
import jieba
jieba.cut(str)
```

