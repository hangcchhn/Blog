
# formula finnace
> 金融公式



## 指标


- 区间：
    - 近一月，近三月，近六月，
    - 近一年，近两年，近三年，近五年，近十年，
    - 今年以来，成立以来

- 数据（净值和收益率）频率默认按月计算

- 区间内月份数：$ T $
- 月度收益率：$ r_t $


- 无风险收益率：$ r_f $


$$



$$

- Downside Standard Deviation:下行风险(下行标准差)
$$
\sigma_d = \sqrt{\frac{\sum\limits_{t = 1}^{T}{min(r_t - r_f, 0) ^ 2}}{T - 1}}

$$




- Sortino Ratio:索提诺比率

$$


Sortino Ratio = \frac{\frac{1}{T}\sum\limits_{t = 1}^{T}{(r_t - r_f)}}{\sigma_d}

$$

## 模型