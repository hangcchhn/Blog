
# 风险模型
> risk model

- 投资组合p由N个资产构成
- $r_i$:资产i的收益率(return)
- $w_i$:资产i的权重(weight)

- $W$:权重组成的列向量
$
W = (w_1, w_2, \cdots, w_N)^T
$

- $\sum$:协方差矩阵



---
## 风险分解
> Risk Decomposition

- $r_p$:投资组合p的收益率
$$
r_p = \sum\limits_{i = 1}^{N}{w_i \times r_i}
$$

- $\sigma_p$:投资组合p的标准差
$$
\sigma_p = \sqrt{
    \sum\limits_{i = 1}^{N}{\sum\limits_{j = 1}^{N}{
    w_i \times w_j \times Cov(r_i, r_j)}}
}
$$

$$
\sigma_p = \sqrt{W^T \sum W}
$$


### 边际风险贡献
> MRC(Marginal Risk Contribution)
- $MRC_i$:资产i的边际风险贡献
    - 组合标准差对资产i权重的偏导数
$$
MRC_i = \dfrac{\partial \sigma_p}{\partial w_i}
$$

$$
MRC_i = \dfrac{1}{\sigma_p} \times
    \sum\limits_{j = 1}^{N}{w_j \times Cov(r_i, r_j)}
$$


$$
MRC_i = \dfrac{Cov(r_i, r_p)}{\sigma_p}
$$





---
$$
\begin{aligned}
\boxed{
    MRC_i = \dfrac{(\sum W)_i}{\sqrt{W^T \sum W}}
}
\end{aligned}
$$
- $(\sum W)_i$:第i个元素
- $E_i$:第i个元素为1，其他元素为0的N维列向量

$$
\begin{aligned}
MCR_i
& = \dfrac{\partial \sigma_p}{\partial w_i}
\\
& = \dfrac{1}{2\sqrt{W^T \sum W}} \times
 \dfrac{\partial (\sqrt{W^T \sum W})}{\partial w}
\\
&  = \dfrac{1}{2\sqrt{W^T \sum W}} \times
 \dfrac{\partial (\sqrt{W^T \sum W})}{\partial W} \times
 \dfrac{\partial W}{\partial w}
\\
&  = \dfrac{1}{2\sqrt{W^T \sum W}} \times 2W^T \times E_i
\\
&  = \dfrac{W^T E_i}{\sqrt{W^T \sum W}}
\\
&  = \dfrac{E_i^T (\sum W)}{\sqrt{W^T \sum W}}
\\
&  = \dfrac{(\sum W)_i}{\sqrt{W^T \sum W}}
\end{aligned}
$$






### 风险贡献
> RC(Risk Contribution)
- $RC_i$:资产i的风险贡献

$$

RC_i = w_i \times MRC_i = \dfrac{w_i(\sum W)_i}{\sqrt{W^T \sum W}}
$$



$$
\sigma_p = \sum\limits_{i = 1}^{N}{RC_i}
$$





---
## 风险平价模型
> Risk Parity

- 权重上限(upper bound):$b_u$
- 权重下限(lower bound):$b_l$

$$
\begin{cases}
b_l < w_i < b_u, i=1,2,\cdots,N \\
w_1 + w_2 + \cdots + w_N= 1
\end{cases}
$$


- 风险平价要求各个资产的风险贡献相同

$$
RC_i = \dfrac{\sigma_p}{N}
$$

$$
\sum\limits_{i = 1}^{N}{\sum\limits_{j = 1}^{N}{(RC_i - RC_j)^2}} = 0
$$


### 求最小值


$$
\min{\sum\limits_{i = 1}^{N}{\left(
    RC_i - \dfrac{\sigma_p}{N}
\right)^2}}
$$

$$

\min{\sum\limits_{i = 1}^{N}{\left(
    \dfrac{w_i (\sum W)_i}{\sqrt{W^T \sum W}}
     - \dfrac{\sqrt{W^T \sum W}}{N}
\right)^2}}



$$

$$
\min{\sum\limits_{i = 1}^{N}{\left(
    w_i (\sum W)_i - \dfrac{W^T \sum W}{ N}
\right)^2}}

$$

### 雅可比矩阵

- $Jacobi$


- $Jacobi_{i, j}$
$$
Jacobi_{i, j} =
$$

---
## 风险预算模型
> Risk Budget


- 风险预算是风险平价的模型泛化
- 取消各个资产的风险贡献相同的条件


$$
\sum\limits_{i = 1}^{N}{\left(
    w_i \left(\sum W \right)_i - RC_i \times W^T \sum W
\right)^2}
$$




---







