
# formula finnace
> 金融公式



## 指标


- NAV(Net Asset Value):单位净值

    - 基金单位净值 = (总资产 - 总负债) / 基金单位总数
    - 已知价又叫历史价，是指上一个交易日的收盘价
    - 未知价又称期货价，是指当日证券市场上各种金融资产的收盘价

- CNAV:累计(Cumulative)净值

    - 拆分比例：$S_n$
    - 分红金额：$D_n$


    - 现金分红

    $$
    CNAV_t = NAV_t \times \prod\limits_{n=1}^{t}{S_n} + \sum\limits_{n=1}^{t}{D_n}
    $$
    
    - 分红再投
    $$
    CNAV_t = CNAV_{t - 1} \times (1 + r_t)
    \newline
    r_t = \frac{NAV_t \times S_t + D_t}{NAV_{t - 1}} - 1
    $$






- 区间：
    - 近一月，近三月，近六月，
    - 近一年，近两年，近三年，近五年，近十年，
    - 今年以来，成立以来

- 数据（净值和收益率）频率默认按月计算

- 区间内月份数：$ T $


- 无风险收益率：$ Rf_t $


- t期：年y，月m，周w，天d
$$
y = m / 12 = w / 52 = d / 365.25 
$$

- 月度收益率：$ r_t $
$$
r_t = 

$$




- 年化收益率

$$
r_a = (1 + r_t) ^ {1 / y} - 1

$$




- 最大下跌
$$
Worst = min(r_1,\ldots r_n, 0)
$$



- 最大回撤：累计净值(分红再投)

$$
MaxDrawdown_t = max(max(
    \frac{CNAV_i - CNAV_j}{CNAV_i}
),0)

$$

- 胜率

$$
WinRatio= \frac{count(Rp_t - Rb_t)}{N}
$$

- 盈亏比
$$
GainLossRatio_t = -\frac{
    \sum\limits_{t = 1}^{T}{Rp_t},(Rp_t>0)
}{
    \sum\limits_{t = 1}^{T}{Rp_t},(Rp_t<0)
}
$$



- $\beta$:系统风险

$$
\beta = \frac{
    \sum\limits_{t = 1}^{T}{(Rp_t \cdot Rb_t)} - 
    \dfrac{1}{T} \sum\limits_{t = 1}^{T}{Rp_t} 
    \cdot \sum\limits_{t = 1}^{T}{Rp_t}
}
{
    \sum\limits_{t = 1}^{T}{Rb_t^2} -
    \dfrac{1}{T} \bigg(\sum\limits_{t = 1}^{T}{Rp_t}\bigg)^2
}
$$

- $\alpha$:超额收益

$$
\alpha_t = \bar{Rp_t} - \beta_t \cdot \bar{Rm_t}
$$


- $R^2$:拟合优度(Goodness of Fit)

$$

R^2 = \frac{
    
    \lbrace
    \rbrace
}{

}
$$

# 

- $\sigma$:标准差(Standard Deviation)
$$

\sigma_t = \sqrt{\frac{\sum\limits_{t = 1}^{T}{(r_t - \bar{r}_t) ^ 2}}{T - 1}}

$$

- 下行(Downside)风险(标准差)
$$
\sigma_{d,t} = \sqrt{\frac{\sum\limits_{t = 1}^{T}{min(r_t - Rf_t, 0) ^ 2}}{T - 1}}

$$




- Sortino Ratio:索提诺比率

$$


Sortino Ratio = \frac{\frac{1}{T}\sum\limits_{t = 1}^{T}{(r_t - Rf_t)}}{\sigma_{d,t}}

$$

## 模型