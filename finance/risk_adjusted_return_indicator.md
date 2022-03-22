
# formula indicator
> 风险调整后收益指标
> 用单位风险对应的收益评价业绩


---
## 夏普比率
> $Sharpe$

- 表示单位总体风险下的平均超额收益率
- 平均超额收益率除以标准差
$$
Sharpe = \dfrac{\bar{r}_p - \bar{r}_f}{\sigma_p}
$$
- $\sigma_p$:总体风险

$$
Sharpe = \dfrac{\dfrac{1}{T} \cdot
    \sum\limits_{t=1}^{T}{(Rp_t - Rf_t)}
}{\sigma_p}
$$

## 特雷诺比率
> $Treynor$
- 假设总体风险仅为系统风险

- 表示单位系统风险下的平均超额收益率
- 平均超额收益率除以系统风险

$$
Treynor = \dfrac{\bar{r}_p - \bar{r}_f}{\beta}
$$


$$
Treynor = \dfrac{Ra - Rf}{\beta}
$$


---
## 阿尔法
> $\alpha$

- 超额收益：超出业绩比较基准收益的那部分收益

- 经风险调整后的主动管理超额收益

- 同类被动型可投资业绩比较基准

- 基金经理通过主动管理获取超额收益
- 主动管理一般是指选股择时

$$
\alpha_t = \bar{R}p_t - \beta_t \cdot \bar{R}b_t
$$

--
## 超额收益
- 算数超额收益
$$
\alpha_A = r_p - r_b
$$
- 几何超额收益
$$
\alpha_G = \dfrac{1 + r_p}{1 + r_b} - 1
$$

## 詹森指数（阿尔法系数)
> 詹森阿尔法：Jensen Alpha

- 假设总体风险仅为系统风险

$$
Jensen = \bar{R}p - Rf - \beta \cdot (\bar{R}b - Rf)

$$

- 表示总体收益超过CAPM预测的那部分
$$

Jensen = (\bar{r}_p - \bar{r}_f) - \beta \times (\bar{r}_m - \bar{r}_f)

\\

Jensen = \bar{r}_p - [\bar{r}_f + \beta \times (\bar{r}_m - \bar{r}_f)]


$$

### 信息比率
> $IR$:Information Ratio

- 表示单位跟踪误差下的平均超额收益率

$$
IR = \dfrac{\bar{r}_p - \bar{r}_b}{\sigma_{p - b}}
$$
- $\sigma_{p - b}$:跟踪误差

$$
IR = \dfrac{1}{T} \cdot \dfrac{
    \sum\limits_{t = 1}^{T}{(Rp_t - Rb_t)}
}{\sigma(Rp - Rb)}

$$



### 卡玛比率
> $Calmar$
- 年化收益除以最大回撤

$$
Calmar = \dfrac{Ra}{MaxDrawdown}

$$


### 索提诺比率
> $Sortino$


$$
Sortino = \frac{
    \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}{(Rp_t - Rf_t)}
}{\sigma_{d,t}}

$$

### 索提诺比率(MAR)
> $Sortino_{MAR}$:
> MAR(Minumum Acceptable Return):最小可接受收益率
$$
Sortino_{MAR} = \frac{
    \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}{(Rp_t - min(Rp_1,Rp_2,\ldots,Rp_t))}
}{\sigma_{d,t}}

$$


###
> $M^2$
$$
M^2 = r_f + \dfrac{\mu_p - r_f}{\sigma_p} \times \sigma_m

$$