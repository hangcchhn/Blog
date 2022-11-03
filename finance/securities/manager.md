## 基金经理
> 主动管理：选股择时


- $\alpha$:选股能力系数
- $\beta_2$:择时能力系数
- $\beta_1$:投资组合所承担的系统风险
- $\epsilon_t$:零均值的随机误差项
- $Rp_t - Rf_t$:投资组合的超额收益率

---
### T-M模型
> Treynor和Mauzy在1966年提出


#### 二次模型
> 投资组合的收益率与市场收益率是二次曲线关系

$$
Rp_t - Rf_t = \alpha +
    \beta_1 \cdot (Rm_t - Rf_t) +
    \beta_2 \cdot (Rm_t - Rf_t)^2 +
    \epsilon_t
$$

- $\beta_2 \cdot (Rm_t - Rf_t)^2 \geq 0$
- $R_p - R_f$:投资组合的风险溢价
- $R_m - R_f$:市场的风险溢价
    - $R_m - R_f > 0$:多头
    - $R_m - R_f < 0$:空头

当证券市场为多头时，投资组合的风险溢价大于市场的风险溢价；
当证券市场为空头时，投资组合的风险溢价小于市场的风险溢价；

---
### H-M模型
> Henriksson和Merton在1981年提出

#### 一次模型

$$

Rp_t - Rf_t = \alpha +
    \beta_1 \cdot (Rm_t - Rf_t) +
    \beta_2 \cdot (Rm_t - Rf_t)^2 \cdot D +
    \epsilon_t

$$

$D$是虚拟变量，当$R_m > R_f$时，$D=1$；当$R_m < R_f$时，$D=0$。

---
### C-L模型
> Chang和Lewellen在1984年提出

$$

Rp_t - Rf_t = \alpha +
    \beta_1 \cdot \min(0, (Rm_t - Rf_t)) +
    \beta_2 \cdot \max(0, (Rm_t - Rf_t)) +
    \epsilon_t

$$


---
### B-P模型


