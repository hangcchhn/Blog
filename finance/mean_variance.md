# 均值-方差
> Markowitz在1952年提出

- Mean-Variance
- 均值-方差模型
- 均值-方差优化



---
## 单资产
- $r_i$:资产在第i种状态下的收益率
- $p_i$:资产在第i种状态发生的概率

### 期望收益率
> expected return

- $E(r) = \bar{r}$:期望，均值

- $Var(r) = \sigma^2$:方差


$$
Var(r) = \sum\limits_{i = 1}^{N}{\{p_i \times [r_i - E(r)]^2\}}

$$
- $p_i = \dfrac{1}{N}$

$$
Var(r) = \dfrac{1}{N}
\sum\limits_{i = 1}^{N}{[r_i - E(r)]^2}

$$

- 实践中，常常用资产过去T期的收益率作为样本来估算该资产收益率的方差
- 样本方差是对总体方差的无偏估计
$$
\sigma^2 = \dfrac{1}{T - 1}
\sum\limits_{i = 1}^{T}{[r_i - \bar{r}]^2}
$$

---
### 协方差和相关系数
- 资产i和j的收益率的联合分布

- $Cov(r_i, r_j)$:协方差


$$
Cov(i, j) = E([r_i - E(r_i)][r_j - E(r_j)])
$$

$$
Cov(i, j) = \sum\limits_{k = 1}^{M}{
    \{p_k \times [r_i - E(r_i)][r_j - E(r_j)]\}}
$$
$$
Cov(i, j) = \dfrac{1}{T - 1} \times \sum\limits_{k = 1}^{M}{
    \{ [r_i - E(r_i)][r_j - E(r_j)]\}}
$$
- $\rho_{i, y}$:相关系数

$$

\rho_{i, j} = \dfrac{Cov(r_i, r_j)}{\sigma_i \times \sigma_j}

$$

---
## 双资产
> $N = 2$


- $\rho_{i, j} = +1$

$$
Var(r_p) = w_i^2 \times \sigma_j^2 + w_j^2 \times \sigma_j^2
 + 2 \times w_i \times w_j \times \sigma_i \times \sigma_j
\\
\sigma_p = w_i \times \sigma_i + w_j \times \sigma_j
$$

- $\rho_{i, j} = -1$

$$
Var(r_p) = w_i^2 \times \sigma_j^2 + w_j^2 \times \sigma_j^2
 - 2 \times w_i \times w_j \times \sigma_i \times \sigma_j
\\
\sigma_p = |w_i \times \sigma_i - w_j \times \sigma_j|
$$


- $\rho_{i, j} = 0$

$$
Var(r_p) = w_i^2 \times \sigma_j^2 + w_j^2 \times \sigma_j^2
\\
\sigma_p = w_i \times \sigma_i + w_j \times \sigma_j
$$



---
## 多资产
- 投资组合p由N个资产构成
- $r_i$:资产i的收益率(return)
- $w_i$:资产i的权重(weight)

###
- $E(r_p)$:投资组合p的期望收益率
$$
E(r_p) = \sum\limits_{i = 1}^{N}{[w_i \times E(r_i)]}
$$

- $Var(r_p)$:投资组合p的方差

$$

Var(r_p) = \sum\limits_{i = 1}^{N}{(w_i^2 \times \sigma_i^2)} +
\sum\limits_{i = 1}^{N}{\sum\limits_{j = 1}^{N}{
    w_i \times w_j \times Cov(r_i, r_j)}}

$$



---
- 资产i的收益率之间的相关性会影响投资组合p的标准差，而不会影响投资组合p的期望收益率
-