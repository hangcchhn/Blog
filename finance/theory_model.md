# 理论模型
> theory model




--
## RBSA
> 基于收益率的风格分析(Return-based Style Analysis)
> 资产类别因子模型(Asset Class Factor Model)
$$
Rp_t = \sum\limits_{i = 1}^{N}{(\beta_i \times Rs_{t,i})} + \epsilon_t

$$

$$

\beta_i \geq 0, i=1,2,\cdots,N

\newline

\beta_1 + \beta_2 + \cdots + \beta_N = 1
$$


- $Rs_t$:风格(Style)指数收益率
- $Rb_t$:基准(Benchmark)指数收益率
$$
Rp_t - Rb_t = (Rp_t - Rs_t) + (Rs_t - Rb_t)
$$

- $Rp_t - Rb_t$:超额收益(alpha)
- $Rp_t - Rs_t$:选股Alpha
- $Rs_t - Rb_t$:风格Alpha


$$

R^2 = 1 - \dfrac{VaR(\epsilon_t)}{VaR(Rp_t)}

$$


- $R^2$:模型解释度
- $VaR$:在一定置信区间下的最大损失


---
## 期权定价模型
> Black Scholes