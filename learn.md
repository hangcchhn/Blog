

### SMDD(Smoothed Multivariate Discrete Distributions)
> 平滑多变量离散分布模型


- 收益率r
- 离散均匀分布随机变量R


收益率Ri
置信区间：$\theta$=0.05


$$




\sigma = \sqrt{\Omega}

\newline

\Omega = \phi^2 \cdot D[R_i]


\newline

\phi = \sqrt{(1 + \theta)} - 1 

$$
- 方差
$$

\newline

D[R_j] = \frac{1}{j} \sum\limits_{i = 1}^{j}{(R_i - \overline{R}) ^ 2}

\newline

$$

- SMDD

$$
\newline

f(x;\mu,\sigma) = \frac{1}{\sqrt{2\pi}\sigma} e^{[-\frac{1}{2}(\frac{x - \mu}{\sigma})^2]}

\newline

f(x) = \frac{1}{n} \sum\limits_{j = 1}^{n}{f(x;R_j,\sigma)}


\newline


$$



- $LPM_m(\tau)$是m阶下偏矩， τ是期望收益率

$$

\newline

LPM_m(\tau)=\int_{1}^{2}{(\tau - x)^m f(x) dx}

\newline


$$

$$

LPM_1(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n}
{[\sigma^2 f(\tau;R_j,\mu) + (\tau - R_j)f(\tau;R_j,\mu)]}

$$


$$


LPM_2(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n} {\left[
(\tau - R_j)\sigma^2 f(\tau;R_j,\mu) + [(\tau - R_j)^2 + \sigma^2] f(\tau;R_j,\mu)
\right]}

$$


- 下行偏差
$$

DD(\tau) = \sqrt{LPM_2(\tau)}

$$



#  模型

$$

y_t - Rf_t = \alpha + \epsilon + 
\sum\limits_{i}^{}{\beta_1(x_i - Rf_t)}

$$



$$

$$

- SDS(Standard Deviation Score):标准差比值法
- 风格漂移(Style Drift)

$$

SDS = \sqrt{\frac{1}{T - 1} \cdot \sum\limits_{c = 1}^{N}{
    \sum\limits_{t = 1}^{N}{(w_{c,t} - \overline{w_c})^2}}}

$$


### CAPM

- $ER_i$:预期(Expect)收益率
- $ERP_m$:预期超额收益
$$
ER_i = Rf_i + \beta_{i, m} ERP_m

\newline 

\beta_{i,m} = \frac{Cov(r_i,r_m)}{\sigma_m^2}

$$

### MPT

$$
ER_p = \sum\limits_{i=1}^{N}{(ER_i \cdot w_i)}

\newline

\begin{cases} 
0 < w_i < 1 \\ 
\sum\limits_{i=1}^{N}{w_i} = 1
\end{cases} 


\newline



\sigma_p = \sum\limits_{i=1}^{N}{
    \sum\limits_{j=1}^{N}{
        (w_i \cdot w_j \cdot \sigma_{i,j})
    }
}


\newline
min(\sigma_p)


\newline



$$


### 风险平价模型
> Risk Parity
- 投资组合由N个资产构成
- 资产i的权重$w_i$
- $w_i$构成权重向量$\vec{w}$
- $w_i$的协方差(Covariance)矩阵$\sum{w}$

- 资产i的绝对风险贡献$\sigma_i(w)$

- 投资组合的标准差$\sigma(w)$
- 权重上(high)限$h$
- 权重下(low)限$l$
$$
\newline

\begin{cases} 
l < w_i < h \\ 
\sum\limits_{i=1}^{N}{w_i} = 1
\end{cases} 

\newline

\sigma_i(w) = w_i \cdot x \cdot \sigma(w)
= \frac{w_i \cdot {(\sum{w})}_i}
{\sqrt{\vec{w} \cdot \sum{w}}}

\newline

\sigma(w) = \sqrt{\vec{w} \cdot \sum{w}}



\newline

\sigma(w) = \sum\limits_{i = 1}^{N}{\sigma_i(w)}

\newline
\sigma_i(w) = \frac{\sigma(w)}{N}

\newline
min{\sum\limits_{i = 1}^{N}{[
        w_i \cdot {(\sum{w})}_i - \sigma(w)^2 / N
]^2}}

\newline


\newline

$$

### 风险预算模型

- 资产i的风险贡献比例$rc_i$
$$

rc_i = \frac{\sigma_i(w)}{\sigma(w)}
\newline

\sum\limits_{i = 1}^{N}{[
    w_i \cdot (\sum{w})_i - rc_i(\vec{w} \cdot \sum{w})
]^2}

\newline

$$



























# 指标


- CDF:累积概率密度函数$F(x)$

- $F(x)$的反函数是$F^{-1}(x)$


### VaR(Value at Risk):风险价值
> 在一定的置信水平下，某一金融资产（或证券组合）在未来特定的一段时间内的最大可能损失。

- 概率p
$$

VaR(p) = -F^{-1}(p)

\newline




\newline

$$
- 第k个收益率r_k
$$

k = |T \cdot p|
\newline



\newline

d = T \cdot p - k
\newline

VaR(p) = - 
\begin{cases} 
null, & if \quad k = 0 \\ 
(r_k - r_{k-1}) \cdot d + r_{k-1}, & if \quad k > 0
\end{cases} 
\newline


$$

### CVaR(Conditional Value at Risk):条件风险价值
- 估值函数E[X]
$$

CVaR(p) = E[-X|X \leq -VaR(p)]
\newline

CVaR(p) = - \frac{1}{k}\sum\limits_{i=1}^{k}{r_i}

$$

