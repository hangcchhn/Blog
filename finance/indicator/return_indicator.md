
# return indicator
> 收益指标


---
## 区间(Interval)收益率
> $ Ri_t $
- $ Rp_t $:投资组合(Portfolio)的区间收益率
- $ Rf_t $:无风险(RiskFree)收益率
- $ Rb_t $:基准(Benchmark)指数的区间收益率
- $ Rm_t $:市场(Market)指数的区间收益率
$$
Rp_t = \frac{CNAV_{t} - CNAV_{t - 1}}{CNAV_{t - 1}}
 = \frac{CNAV_{t}}{CNAV_{t - 1}} - 1
$$
### 大区间T包含N个小区间t
- $R_p$:大区间T的收益率，
- $R_i$:大区间t的收益率
$$

R_p = \prod\limits_{i = 1}^{N}{(R_i + 1)} - 1

$$

---

## 年化指标

- 年数 = 季数 / 4 = 月数 / 12 = 周数 / 52 = 天数 / 365.25 = 交易日 / 252
$$
y = \frac{q}{4} = \frac{m}{12} = \frac{w}{52} = \frac{d}{365.25}
$$
- 指标X:$Xp_t$

- 年化X:$Xa_t$
$$
Xa_t = (1 + Xp_t) ^ {\frac{1}{y}} - 1
$$

## 年化(Annual)收益率
> $ Ra_t $


- 现金分红
$$
Ra_t = \frac{\sum\limits_{t = 1}^{N}{Rp_t}}{y}
$$

- 分红再投
    - 成立日的净值:$CNAV_0 = 1$
    - 成立以来的收益率:$Rp_t = \dfrac{CNAV_T}{CNAV_0} - 1$
$$
Ra_t = (1 + Rp_t) ^ {\frac{1}{y}} - 1 = CNAV_t ^ {\frac{1}{y}} - 1
$$

---
## 平均(Average)收益率
> $ \bar{R}_p $


- 算术平均收益率

$$
\bar{R}_A = \dfrac{\sum\limits_{t = 1}^{T}{R_t}}{T}
$$

- 几何平均收益率

$$
\bar{R}_G = \sqrt[T]{\prod\limits_{t = 1}^{T}{(R_t + 1)}} - 1
$$


---
## 收益贡献
> Return Contribution
$$

Cont = w_i \times r_i


$$

---
## 业绩持续性
- 对同类策略基准的平均收益率进行评分




---
##
### 上行捕获收益率
> $UCR$
$$
UCR =
\Bigg\lbrace
\prod\limits_{t = 1}^{K}{1 + Rp_t}
\Bigg\rbrace^{
    \dfrac{1}{\sum\limits_{t = 1}^{T}{count(1)}}
} - 1
$$
$$
\\
Rb_t \geq 0
$$

### 上行捕获率
> $UC Ratio$
$$
UC Ratio = \dfrac{UCRp}{UCRb}
$$

### 下行捕获收益率
> $DCR$
$$
UCR =
\Bigg\lbrace
\prod\limits_{t = 1}^{K}{1 + Rp_t}
\Bigg\rbrace^{
    \dfrac{1}{\sum\limits_{t = 1}^{T}{count(1)}}
} - 1

\\
Rb_t < 0
$$
### 下行捕获率
> $DC Ratio$
$$
DC Ratio = \dfrac{DCRp}{DCRb}

$$
