

# risk indicator
> 风险指标

- 绝对风险
    - 波动率（标准差）
- 相对风险
    - 跟踪误差







---
## 标准差(Standard Deviation)
> $\sigma_p$

- 波动率(Volatility)
$$

\mu_p = \dfrac{\sum\limits_{t = 1}^{T}{r_t}}{T}
$$

$$
\sigma_p = \sqrt{
    \dfrac{\sum\limits_{t = 1}^{T}{(r_t - \mu_p)^2}}{T}
}

$$

$$

\sigma_p = \sqrt{
    \dfrac{
        \sum\limits_{t = 1}^{T}{(Rp_t - \bar{R}p_t)^2
    }}{T - 1}
}

$$



---
## 跟踪误差
> tracking error

$$
\sigma_{p - b} = \sqrt{\sigma_p^2 + \sigma_b^2
 + 2 \times \rho_{p, b} \times \sigma_p \times \sigma_b }

$$
---
### 贝塔
> $\beta$

- 表示投资组合的系统性风险
$$

\beta = \dfrac{cov(r_p, r_b)}{\sigma_b^2}
 = \rho_{p, b} \times \dfrac{\sigma_p}{\sigma_b}

$$

$$

\beta = \frac{
    \bigg\lgroup \sum\limits_{t=1}^{T}{(Rb_t \cdot Rp_t)} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t} \bigg\rgroup
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t} \bigg\rgroup
}
{
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t^2} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t = 1}^{T}{Rp_t} \bigg\rgroup^2
}
$$




## 偏度
> $Skewness$:

$$

Skewness = \dfrac{
    \sum\limits_{t = 1}^{T}{(r_t - \mu_p)^3}
}{T \times \sigma_p^3}

$$

$$
Skewness = \dfrac{T}{(T - 1) \cdot (T - 2)}
\Bigg\lbrace
\dfrac{1}{\sigma_t^3}
\sum\limits_{t=1}^{T}{(Rp_t - \bar{R}p_t)^3}
\Bigg\rbrace
$$

## 峰度
> $Kurtosis$

$$
Kurtosis = = \dfrac{
    \sum\limits_{t = 1}^{T}{(r_t - \mu_p)^4}
}{T \times \sigma_p^4}

$$


$$
Kurtosis = \dfrac{
    T \cdot (T + 1) \cdot
    \Bigg\lbrace
    \dfrac{1}{\sigma_t^4} \cdot
    \sum\limits_{t=1}^{T}{(Rp_t - \bar{R}p_t)^4}
    \Bigg\rbrace
}{
    (T - 1) \cdot (T - 2) \cdot (T - 3)
}
 - \dfrac{
    3 \cdot (T - 1)^2
 }{
    (T - 2) \cdot (T - 3)
 }

$$



---
## 下行风险
> (Downside Risk)
> ShortFall Risk
下行风险 = 损失概率 * 损失额度

$$
\sigma_{d,t} = \sqrt{\frac{\sum\limits_{t = 1}^{T}{min(Rp_t - Rf_t, 0) ^ 2}}{T - 1}}

$$


### 最大回撤：累计净值(分红再投)
> Maximun Drawdown
$$
MaxDrawdown = max(max(
    \frac{CNAV_i - CNAV_j}{CNAV_i}
),0)

$$























###
> $M^2$
$$
M^2 = Rf + \dfrac{\bar{R}p - Rf}{\sigma_p} \cdot \sigma_m

$$
---
