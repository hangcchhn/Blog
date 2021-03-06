# 业绩归因
> attribution

- 业绩归因
- 归因分析


---

### 基金业绩评价
- 财务评价
    - 单位净值
    - 净值收益率

- 单因子评价
    - 特雷诺指数
    - 夏普比率
    - 詹森指数
    - 信息比率
    - M2
    - M3
    - 衰减度
    - RORAC

- 多因子评价
    - Fama三因子模型
    - CarHart四因子模型

- 选股择时评价
    - T-M模型
    - H-M模型
    - C-L模型
    - B-P模型


- 业绩评价
    - Fama分解模型
    - BHB模型和IK模型
    - 修正BHB模型

- 持续性评价
- 基金评级评价

---
## 业绩归因模型

- 归因 = 来源

- 资产配置
- 个股选择
- 交叉效应

- 基准

- 多因子模型


---



---
### Fama分解模型
> Fama在1972年提出

- $r_p$:投资组合收益率
- $r_m$:市场指数收益率
- $r_f$:无风险收益率
- $r_\beta$:SML上相同系统风险的收益率

---
$$

r_p - r_f = (r_p - r_\beta) + (r_\beta - r_f)

\\

r_\beta = \beta_p \times (r_m - r_f)

$$


- $r_p - r_f$:超额收益
- $r_p - r_\beta$:选择回报（詹森指数）
- $r_\beta - r_f$:风险回报
---
$$
r_p - r_\beta = r_D + r_N
$$
- $r_D$:可分散回报(Diversification)
- $r_N$:净选择回报(Net Selectivity)

---
$$
r_d = (r_m - r_f) \times (
    \dfrac{\sigma_p}{\sigma_m} - \beta_p
)
$$
- $\beta_p$:投资组合目标风险

$$

r_\beta - r_f = r_I + r_M

\\

r_I = \beta_I \times (r_m - r_f)

\\

r_M = (\beta_p - \beta_I) \times (r_m - r_f)


$$

- $r_I$:投资者风险回报(Investor)
- $r_M$:经理人风险回报(Manager)

- $\beta_I$:投资者目标风险

---
### BHB模型
> Brinson，Hood和Beebower在1986年提出

#### 基金业绩分解

---

- 投资策略（战略资产配置）
- 选股贡献
- 择时贡献
- 选股择时交互影响

---

- $w^p_i$:投资组合资产类别i的权重
- $r^p_i$:投资组合中资产类别i的收益率
- $w^b_i$:基准指数中资产类别i的权重
- $r^b_i$:基准指数中资产类别i的收益率

---

- $A = \sum(w^b_i \times r^b_i)$:基准指数的收益率
- $B = \sum(w^p_i \times r^b_i)$:
- $C = \sum(w^b_i \times r^p_i)$:
- $D = \sum(w^p_i \times r^p_i)$:投资组合的收益率

---

- 配置效应(Allocation):$B - A$
$$


\sum{Allocation} = \sum{(w^p_i \times r^b_i - w^b_i \times r^b_i)}

\\
 = \sum{[(w^p_i - w^b_i) \times r^b_i]}

$$
- 选择效应(Selection):$C - A$
$$

\sum{Selection} = \sum{(w^p_i \times r^b_i - w^b_i \times r^b_i)}

\\

 = \sum{[w^b_i \times (r^p_i - r^b_i)]}

$$

- 交互效应(Interaction):$D - C - B + A$
$$

\sum{Interaction_i} = \sum{(w^p_i \times w^b_i - w^b_i \times r^p_i - w^p_i \times r^b_i + w^b_i \times r^b_i)}

\\

 = \sum{[(w^p_i - w^b_i) \times (r^p_i - r^b_i)]}

$$
---
- 投资组合总收益率(Total):$TR = AR + SR + IR = D - A$
$$

TR =
\\
\sum{(w^p_i \times r^b_i - w^b_i \times r^b_i)} +
\\
\sum{(w^p_i \times r^b_i - w^b_i \times r^b_i)} +
\\
\sum{ (w^p_i \times w^b_i - w^b_i \times r^p_i - w^p_i \times r^b_i + w^b_i \times r^b_i)}

\\

TR = \sum{[(w^p_i \times r^p_i) - (w^b_i \times r^b_i)]}
$$
- 主动管理效应 = 资产配置效应 + 证券选择效应 + 相互作用效应


---
### 多维绩效归因
- SSA效应
    - SSA
- ID效应
    - 实施偏差
    - Implementation Differential

- $w^{SSA}_i$:SSA的目标权重

$$
\sum{Interaction}  = \sum{SSA} + \sum{ID}
\\
\sum{SSA} = \sum{[(w^{SSA}_i - w^b_i) \times (r^p_i - r^b_i)]}
\\
\sum{ID} = \sum{[(w^p_i - w^{SSA}_i) \times (r^p_i - r^b_i)]}
$$

---
### 全球、多资产、多币种、多基金经理
- 相对收益
    - Relative Return
    - $RR = r_p - r_b$
- 资产配置
    - Asset Allocation
    - $AA = r_{mb} - rb$
- 证券选择
    - Security Selection
    - $SS = r_p - r_{mb}$
- $RR = AA + SS$

- 货币对冲
    - Currency Hedging
    - $CH = r_{mb_{ch}} - r_{mb}$
- $r_{mb}$:基金经理基准的收益率
- $r_{mb_{ch}}$:附有货币对冲策略的基金经理基准的收益率



---
### IK模型
> Ibbotson和Kaplan在2000年提出

$$
TR = (PR + 1) \times (AR + 1) - 1

$$

- $PR$:投资策略收益（战略资产配置）
- $AR$:主动管理收益
    - 选股贡献
    - 择时贡献
    - 选股择时交互影响

### BF模型
> Brinson和Fachler

### 相对收益，又称超额收益，基金收益超出业绩比较基准的部分
> ER(Excess Return)

- 主动收益（active）
- 阿尔法收益（alpha）


$$

ER_a = R_p - R_b



$$


$$
ER_g = \dfrac{R_p + 1}{R_b + 1} - 1

$$

