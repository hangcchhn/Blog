
# formula indicator
> 风险调整后收益指标
> 用单位风险对应的收益评价业绩

## 超额收益率
> Excess Return
- 相对收益率

- 算数超额收益率
$$
\alpha_A = r_p - r_b
$$
- 几何超额收益率
$$
\alpha_G = \dfrac{1 + r_p}{1 + r_b} - 1
$$

---
## 夏普比率
> $Sharpe$

- 表示单位总体风险下的平均超额收益率
- 平均超额收益率除以标准差
- $\sigma_p$:总体风险
$$
Sharpe_p = \dfrac{\bar{r}_p - \bar{r}_f}{\sigma_p}
$$

- 成立以来的夏普比率通常使用成立以来的年化收益率和年化标准差计算
$$
Sharpe = \dfrac{r_a - r_f}{\sigma_a}

$$


---
## 特雷诺比率
> $Treynor$
- 假设总体风险仅为系统风险

- 表示单位系统风险下的平均超额收益率
- 平均超额收益率除以系统风险

$$
Treynor_p = \dfrac{\bar{r}_p - \bar{r}_f}{\beta}
$$



---
## 阿尔法系数
> $\alpha$

- 超额收益：超出业绩比较基准收益的那部分收益

- 经风险调整后的主动管理超额收益

- 同类被动型可投资业绩比较基准

- 基金经理通过主动管理获取超额收益
- 主动管理一般是指选股择时

$$
\alpha = \bar{r}_p - \beta \times \bar{r}_b
$$


---

## 詹森指数

- 假设总体风险仅为系统风险
- 表示总体收益超过CAPM预测的那部分
$$

Jensen = \bar{r}_p - \bar{r}_f - \beta_p \times (\bar{r}_b - \bar{r}_f)

$$





### 卡玛比率
> $Calmar$
- 年化收益除以最大回撤

$$
Calmar = \dfrac{Ra}{MaximumDrawdown}

$$



---
### M2
> Modiglianli
- $M^2$
$$

M^2 = \bar{r}_f + \dfrac{\bar{r}_p - \bar{r}_f}{\sigma_p} \times \sigma_b

\\

M^2 = \bar{r}_f + Sharpe_p \times \sigma_b
$$