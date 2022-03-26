# 资本市场
> Capital Market

- 资本市场假说
    - CMA(Capital Market Assumption)
- 资本市场理论
    - CMT(Capital Market Theory)


---
## 可行集
- 市场上可投资资产形成的所有组合


### 最小方差前沿

- 在收益一定的情况下，投资者都会投资于风险更小的组合

- 全局最小方差组合：风险最小，切点


### 有效前沿
> efficient frontier

- 从全局最小方差组合开始，最小方差前沿的上半部分
- 有效组合：有效前沿上的投资组合
    - 在一定的期望收益率水平下，有效组合的标准差最小
    - 在一定的标准差水平下，有效组合的期望收益率最小


---
## 资产配置线
> CAL(Capital Allocation Line)

- $r_f$:无风险资产的收益率
- $w_f$:无风险资产的权重
- $r_x$:风险资产i的收益率
- $r_x$:风险资产i的权重


$$

E(r_p) = (1 - w_i) \times r_f + w_i \times E(r_i)
\\
E(r_p) = r_f + w_i \times [E(r_i) - rf]


$$


$$
\sigma_p^2 = w_i^2 \times \sigma_i^2 + (1 - w_i)^2 \times \sigma_f^2 +
2 \times w_i \times (1 - w_i) \times \sigma_i \times \sigma_f \times \rho_{i, f}

$$

- $\sigma_f = 0$

$$
\sigma_p^2 = w_i^2 \times \sigma_i^2
\\
\sigma_p = w_i \times \sigma_i

$$

- $w_i = \dfrac{\sigma_p}{\sigma_i}$


$$
E(r_p) = r_f + \dfrac{E(r_i) - r_f}{\sigma_i} \times \sigma_p

$$

- 资产配置线上的点表示无风险资产f与风险资产x的线性组合

- 截距是无风险资产f的收益率
    - $r_f$
- 斜率是风险资产x的夏普比率
    - $\dfrac{E(r_x) - r_f}{\sigma_x}  $

### 资本市场线
> CML(Capital Market Line)

风险资产的有效前沿的切线

$$
E(r_p) = r_f + \dfrac{E(r_m) - r_f}{\sigma_m} \times \sigma_p


$$



