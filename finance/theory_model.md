# 理论模型
> theory model

---
## 现代投资组合理论
> MPT(Modern Portfolio Theory)
> 哈里·马科维茨(Harry Markowitz)在1952年提出


### 分散投资可以降低风险

- $r_p$:多资产投资组合p的收益率
- $w_i$:投资组合p中资产i的权重（占比）
- $r_i$:投资组合p中资产i的收益率
$$
r_p = \sum\limits_{i = 1}^{N}{(w_i \times r_i)}
$$


### 风险取决于各资产直接的相关性






- 标准差:$\sigma_p$
$$

\sigma_p = \sqrt{\sum\limits_{i = 1}^{N}{(w_i^2 \times \sigma_i^2)}}


$$

- 相关系数:$\rho_p$

$$
\rho_p^2 = \sum\limits_{i = 1}^{N}{(w_i^2 \times \sigma_i^2)}
+ \sum\limits_{i = 1}^{N}{\sum\limits_{j = 1}^{M}(
    w_i \times \sigma_i \times  w_j \times \sigma_j \times  \rho_{i,j}
)}
$$

- 假设N个资产，权重相同
- 资产平均标准差
- 资产平均相关系数

$$
\rho_p^2 = \bar{\sigma_i}^2 + \dfrac{\bar{\sigma_i}^2 \times (1 - \bar{\rho_i})}{N}
$$
- 分解后的前部分是不可分散风险（市场风险，系统性风险）

---
- 基于CMA

- 缺陷
    - 使用标准差作为唯一的风险指标
    - 假设基础不现实
    - 只适用单期投资

- 耶鲁模型
    - David Swensen和Dean Takahashi在1985年提出
    - 将资产等分次5～6份，每份都投资于一类大类资产，大类资产之间的相关性很低
    - 以牺牲收益率为代价获取流动性
- 基于风险的资产配置
    - 安全类
    - 市场风险类
    - 风险类
---
## 资本资产定价
> CAPM(Capital Asset Pricing Model)
> 威廉·夏普(William Sharpe)在1964年提出资本资产定价模型



## 资产收益率与市场收益率是一次线性关系


- 线性关系
    - 斜率$\beta$
    - 截距$\alpha$

- 单因子模型
    - 市场收益

$$
r_i = \alpha_i + \beta_i \times r_m + \epsilon_i
$$
- $r_f$:无风险收益率
- $r_m$:市场收益率
- $r_i$:资产i的收益率

---
- $\beta_i$:资产i的收益率对市场收益率的敏感系数
$$

\dfrac{r_i -r_f}{\beta_i} = \dfrac{r_m - rf}{\beta_m}

$$



- 市场系统风险
    - $\beta_m = 1$
- 风险溢价：收益率超过无风险收益率的差值
    - $r_i - r_f$:

$$
r_i - r_f = \beta_i \times (r_m - r_f)

\\

r_i = (1 - \beta_i) \times r_f + \beta_i \times r_m

\\

\alpha = (1 - \beta_i) \times r_f

$$






---
## 套利定价理论
> APT(Arbitrage Pricing Theory)
> 斯蒂芬·罗斯(Stephen Ross)：在1976年提出套利定价理论

- 多因子模型

$$

r_p = \alpha + \sum\limits_{i = 1}^{N}{(\beta_i \times r_i)} + \epsilon_p

\\

\alpha = \beta_0 \times 1
$$


---
$$
ER_p = \sum\limits_{i=1}^{N}{(ER_i \cdot w_i)}

\\

\begin{cases}
0 < w_i < 1 \\
\sum\limits_{i=1}^{N}{w_i} = 1
\end{cases}


\\



\sigma_p = \sum\limits_{i=1}^{N}{
    \sum\limits_{j=1}^{N}{
        (w_i \cdot w_j \cdot \sigma_{i,j})
    }
}


\\
min(\sigma_p)


\\



$$

---
## 有效市场假说

> EMH(Efficient Market Hypothesis)
尤金·法玛(Eugene Fama)：在1970年提出


---
## 投资市场假说
> CMA(Capital Market Assumption)

- 均值方差优化
    - MVO(Mean Variance Optimisation)
    - 通过优化模型确定最佳风险收益下的资产配置

- 蒙特卡洛模拟
    - (Monte Carlo Simulation)


### CMA优化
- 自举法
    - Bootstrapping
    - 优化计算相关系数

- 重抽样
    - resample
    - 将均值方差优化和蒙特卡洛模拟结合起来



---
### 效用理论

> 效用理论的主要作用是将有效资产配置与投资者的风险偏好匹配起来

- (quadratic utility function)

    可以使用二次效用函数表达投资者的风险偏好
    即使用预期收益减去预期风险的函数来表达预期效用

- 效用函数$U$
$$

U = r_p - \dfrac{\sigma_p^p}{\lambda}
$$
- $\lambda$:投资者的风险容忍度




---
## 布莱克-林特曼模型
> Black-Litterman
> Fischer Black和Robert Litterman在1990年提出



- 使用贝叶斯方法

- 将市场均衡预期收益和投资者对各类资产的预期收益的个人观点结合起来

- 模型只会使用预期收益的公开市场数据，即投资者只是对子资产有个人观点
    - subset of asset classes




- 收益来源
    - 无风险收益率$r_f$
    - 市场风险溢价$r_b - r_f$
    - 主动管理收益$\alpha$

- 风险来源
    - 利率风险
    - 市场风险
    - 主动管理风险
- 逆向优化
    - reverse optimisation

---
$$
\sigma^2 = \vec{w}^T \sum \vec{w}

$$
- $\vec{w}$:投资组合的各类资产配置比例的行向量(N×1)
- $\sum$:协方差矩阵(N×N)

- $\prod$:各类资产隐含超额收益的列向量
$$
\prod = \lambda \sum \vec{w}
$$

- $\lambda$:风险厌恶系数
    - 市场对风险的定价
- 市场组合中的各类资产的权重由各类资产相应的市值决定
$$
\lambda = \dfrac{r_m - r_f}{\sigma_m^2}
$$

---

- 投资组合有N类资产
- 投资者对各类资产有M个观点构成观点列向量Q(N×1)
- 投资组合的N类资产的所有观点列向量Q构成观点矩阵P(M×N)
- 观点范围：[-1, 1]

- $\Omega$:对角矩阵(M×N)

$$
\Omega = (P \sum P^T) \tau
$$

- $\tau$:不确定性刻度(double)
    - uncertainty scaling parameter
    - Satchell and Scowcroft(2000) -> $\tau$ = 0.05

$$
\tau = \dfrac{1}{T - 1}
$$

- 中心极限定理
    - Central Limit Theorem

$$
\vec{r} =
\bigg[\Big( \tau \sum\Big)^{-1} + P^T \Omega^{-1} P\bigg]^{-1}
\bigg[\Big(\tau \sum\Big)^{-1} \prod + P^T \Omega^{-1} Q\bigg]


$$

---
## 期权定价模型
> Black Scholes