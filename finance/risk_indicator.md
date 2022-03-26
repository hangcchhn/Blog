

# risk indicator
> 风险指标

- 绝对风险
    - 标准差（波动率）
- 相对风险
    - 跟踪误差



---
## 标准差(Standard Deviation)
> 波动率(Volatility)

- $\sigma_p$:

$$
\sigma_p = \sqrt{
    \dfrac{\sum\limits_{t = 1}^{T}{(r_t - \bar{r}_p)^2}}{T - 1}
}

$$

$$

StdDev_p = \sqrt{
    \dfrac{
        \sum\limits_{t = 1}^{T}{(Rp_t - \bar{R}p)^2
    }}{T - 1}
}

$$




---
### 贝塔系数
> beta coefficient

投资组合的总风险分为系统风险和非系统性风险

- $\beta_p$:投资组合p的系统风险

$$

\beta_p = \dfrac{Cov(r_p, r_b)}{\sigma_b^2}
 = \rho_{p, b} \times \dfrac{\sigma_p}{\sigma_b}

$$

- $Beta_p$:
$$

Beta_p = \frac{
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


---
## 跟踪误差
> Tracking Error
- 表示投资组合p相对于基准b的跟踪偏离度的标准差


$$
TE = \sqrt{\dfrac{1}{T - 1} \times
    \sum\limits_{t = 1}^{T}{(TD - \overline{TD})^2}
}
$$


- $\sigma_{p - b}$:跟踪误差
$$

\sigma_{p - b} = \sqrt{\sigma_p^2 + \sigma_b^2
 + 2 \times \rho_{p, b} \times \sigma_p \times \sigma_b }

$$


##
- $TD$:跟踪偏离度(Tracking Difference)
$$
TD = r_p - r_b
$$

- $\overline{TD}$:平均跟踪偏离度
$$
\overline{TD} = \dfrac{1}{T} \times \sum\limits_{t = 1}^{T}{(Rp_t - Rb_t)}

$$

$$
\overline{TD} = \bar{r}_p - \bar{r}_b
$$


---
### 信息比率
> Information Ratio

- 表示单位跟踪误差下的平均跟踪偏离度
- $IR$:

$$

IR = \dfrac{\overline{TD}}{TE}

$$

$$
IR = \dfrac{\bar{r}_p - \bar{r}_b}{\sigma_{p - b}}
$$





## 偏度
> $Skewness$:

$$

Skewness = \dfrac{
    \sum\limits_{t = 1}^{T}{(r_t - \bar{r}_p)^3}
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
    \sum\limits_{t = 1}^{T}{(r_t - \bar{r}_p)^4}
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
> 下行标准差
> Downside Risk
> ShortFall Risk
下行风险 = 损失概率 * 损失额度
- $DR$
$$
DR = \sqrt{\dfrac{
    \sum\limits_{t = 1}^{T}{min(Rp_t - Rf_t, 0)^2}
}{T - 1}}

$$

---
### 索提诺比率
> $Sortino$

$$
Sortino_p = \frac{
    \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}{(Rp_t - Rf_t)}
}{DR}

$$

### 索提诺比率(MAR)
> MAR(Minumum Acceptable Return):最小可接受收益率

- $Sortino_{MAR}$:

$$

Sortino_{MAR} = \frac{
    \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}{(Rp_t - min(Rp_1, Rp_2, \ldots, Rp_t))}
}{DR}

$$






















###
> $M^2$
$$
M^2 = r_f + \dfrac{\bar{r}_p - r_f}{\sigma_p} \times \sigma_m

$$
---
