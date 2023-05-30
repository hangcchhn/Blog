

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

### 年化标准差
- 根据$r_t$频率不同
    - 日频：$y=365.25$，即一年平均365.25天
    - 月频：$y=12$，即一年12个月
    - 周频：$y=52$，即一年平均52周
- $\sigma_a$:
$$
\sigma_a = \sigma_p * \sqrt{y}
$$
- 标准差从小区间转换成大区间的逻辑是假设每个区间收益率相互独立，且具有相同方差，计算方式与年化标准差同理

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
 - 2 \times \rho_{p, b} \times \sigma_p \times \sigma_b }

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





---

## 偏度
> $Skewness$:
- 总体偏度

$$

Skewness = \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}
    {(\dfrac{r_t - \bar{r}_p}{\sigma_p})^3}

$$
- 样本偏度

$$
Skewness = \dfrac{T}{(T - 1)(T - 2)}
     \sum\limits_{t=1}^{T}{(\dfrac{r_t - \bar{r}_p}{\sigma_p})^3}
$$
---
## 峰度
> $Kurtosis$
- 总体峰度
$$
Kurtosis = = \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}
    {(\dfrac{r_t - \bar{r}_p}{\sigma_p})^4}

$$

- 样本峰度
$$
Kurtosis = \dfrac{T(T + 1)}
    {(T - 1)(T - 2)(T - 3)}
    \sum\limits_{t=1}^{T}{(\dfrac{r_t - \bar{r}_p}{\sigma_p})^4} \\
    - \dfrac{3(T - 1)^2}
    {(T - 2)(T - 3)}

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
    \sum\limits_{t = 1}^{T}{(Rp_t - \min(Rp_1, Rp_2, \ldots, Rp_t))}
}{DR}

$$


$$
E[(R - MAR)^2] = \dfrac{1}{T}\sum\limits_{t = 1}^{T}{(Rp_t - MAR)^2}
$$

$$
Sortino = \dfrac{ER - MAR}{
    \sqrt{E[(R - MAR)^2]}
}
$$


















###
> $M^2$
$$
M^2 = r_f + \dfrac{\bar{r}_p - r_f}{\sigma_p} \times \sigma_m

$$
---
