


## 资产净值
---
### NAV(Net Asset Value):单位净值

- 单位净值 = (总资产 - 总负债) / 总份额
- 基金资产净值 = 基金总资产 - 基金总负债
- 基金份额净值 = 基金资产净值 / 基金总份额数


- 已知价又叫历史价，是指上一个交易日的收盘价
- 未知价又称期货价，是指当日证券市场上各种金融资产的收盘价

$$
R_N = \sum\limits_{n = 2}^{N}{\bigg\lgroup
    \dfrac{NAV_{n - 1}}{NAV_{n - 2} - D_{n - 2}}
    \times \dfrac{NAV_{n}}{NAV_{n - 1} - D_{n - 1}}
\bigg\rgroup} - 1

$$

- $NAV_0$:初始单位净值1
- $D0$:初期没有分红0

---
### CNAV:累计(Cumulative)净值

- 拆分比例：$S_n$
- 分红金额：$D_n$


- 累计净值（现金分红）

$$
CNAV_t = NAV_t \times \prod\limits_{n=1}^{t}{S_n} + \sum\limits_{n=1}^{t}{D_n}
$$

- 累计净值（分红再投）
$$
CNAV_t = CNAV_{t - 1} \times (1 + R_t)

$$

$$

R_t = \frac{NAV_t \times S_t + D_t}{NAV_{t - 1}} - 1
$$


---
## 超额净值
>
$$

$$

---
## 最大回撤：累计净值(分红再投)
> Maximum Drawdown

- 在指定区间内，最小收益率，最大亏损值
- 按时间顺序，净值从局部最高点到局部最低点的幅度中最大值就是最大回撤

- 区间:$[t_0, t_N]$
$$
MaximumDrawdown = max(max(
    \frac{CNAV_i - CNAV_{i+j}}{CNAV_i}
),0)
$$
- 假设时刻i是最大累积净值，计算时刻i之后的最小累计净值
$$
minCNAV_i = min(CNAV_{i + 1}, CNAV_N)
$$
- 计算起始时刻i的最小收益率
$$
MinimunReturn_i = minCNAV_i / CNAV_i - 1
$$
- 取起始时刻在区间中的最小收益率中的最小值为区间的最大回撤
$$
MaximumDrawdown = min(MinimunReturn_i)
$$

