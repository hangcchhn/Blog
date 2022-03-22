
# return indicator
> 收益指标


---
## 区间(Interval)收益率
> $ Ri_t $
- $ Rp_t $:投资组合(Portfolio)的区间收益率
- $ Rf_t $:无风险(Risk-free)收益率
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
## 年化(Annual)收益率
> $ Ra_t $
- 年数 = 季数 / 4 = 月数 / 12 = 周数 / 2 = 天数 / 365.25
$$
y = \frac{q}{4} = \frac{m}{12} = \frac{w}{52} = \frac{d}{365}
$$

- 现金分红
$$
Ra_t = \frac{\sum\limits_{t = 1}^{N}{Rp_t}}{y}
$$

- 分红再投
$$
Ra_t = (1 + Rp_t) ^ {\frac{1}{y}} - 1
$$

---
## 平均(Average)收益率
> $ \bar{R} $
> $ \mu $

- 算术平均收益率

$$
\bar{R}_A = \dfrac{\sum\limits_{t = 1}^{T}{R_t}}{T}
$$

- 几何平均收益率

$$
\bar{R}_G = \sqrt[T]{\prod\limits_{t = 1}^{T}{(R_t + 1)}} - 1
$$

---
## 业绩持续性

- 与同策略基准的平均收益率进行评分




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
