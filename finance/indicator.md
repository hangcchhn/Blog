
# formula indicator
> 指标公式


---
##

- 区间(Interval)：年y，季q, 月m，周w，天d

- t期：yyyy，yyyyq, yyyy-mm，yyyyww，yyyy-mm-dd

- 数据（净值和收益率）频率默认按月计算

- 区间单位（月份）数：$ T $

- 常用区间：
    - 近一月，近三月，近六月，
    - 近一年，近两年，近三年，近五年，近十年，
    - 今年以来，成立以来

- 截止日期








---
### 最大下跌
> MaxFall
- 最小的收益率
$$
MaxFall = min(Rp_1,Rp_2,\ldots Rp_N, 0)
$$



### 胜率
> WinRatio
- 投资组合收益率大于基准指数收益率的区间数量除以区间总数
$$
WinRatio= \frac{count(Rp_t - Rb_t)}{N}
$$

### 盈亏比
> GainLossRatio
- 收益率为正的总和除以收益率为负的总和

$$
GainLossRatio = -\frac{
    \sum\limits_{t = 1}^{T}{Rp_t},(Rp_t>0)
}{
    \sum\limits_{t = 1}^{T}{Rp_t},(Rp_t<0)
}
$$

---
