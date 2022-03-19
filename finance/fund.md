

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
### Fama分解模型
> Fama在1972年提出
- $r_p$:投资组合收益率
- $r_m$:市场组合收益率
- $r_f$:无风险收益率
- $r_\beta$:SML上相同系统风险的收益率

$$

r_p - r_f = (r_p - r_\beta) + (r_\beta - r_f)

\newline

r_\beta = \beta_p \times (r_m - r_f)

$$
- $r_p - r_f$:超额收益
- $r_p - r_\beta$:选择回报（詹森指数）
- $r_\beta - r_f$:风险回报

$$
r_p - r_\beta = r_D + r_N
$$
- $r_D$:可分散回报(Diversification)
- $r_N$:净选择回报(Net Selectivity)


$$
r_d = (r_m - r_f) \times (
    \dfrac{\sigma_p}{\sigma_m} - \beta_p
)
$$
- $\beta_p$:投资组合目标风险

$$

r_\beta - r_f = r_I + r_M

\newline

r_I = \beta_I \times (r_m - r_f)

\newline

r_M = (\beta_p - \beta_I) \times (r_m - r_f)


$$

- $r_I$:投资者风险回报(Investor)
- $r_M$:经理人风险回报(Manager)

- $\beta_I$:投资者目标风险



---
### Brinson模型

#### 单期Brinson模型

---
### BHB模型
> Brinson，Hood和Beebower在1986年提出


- $w_{b,i}$:资产类别i的比较基准权重
- $w_{p,i}$:资产类别i的投资组合权重
- $r_{b,i}$:资产类别i的比较基准收益率
- $r_{p,i}$:资产类别i的投资组合收益率


- $A = \sum_i(w_{b,i} \times r_{b,i})$:比较基准收益
- $B = \sum_i(w_{p,i} \times r_{b,i})$:积极配置收益
- $C = \sum_i(w_{b,i} \times r_{p,i})$:积极选择收益
- $D = \sum_i(w_{p,i} \times r_{p,i})$:投资组合收益



- 配置收益(Allocation):$AR = B - A$
$$


AR = \sum\limits_{i = 1}^{N}{(w_{p,i} \times r_{b,i} - w_{b,i} \times r_{b,i})}

\newline

AR = \sum\limits_{i = 1}^{N}{[(w_{p,i} - w_{b,i}) \times r_{b,i}]}

$$
- 选择收益(Selection):$SR = C - A$
$$

SR = \sum\limits_{i = 1}^{N}{(w_{p,i} \times r_{b,i} - w_{b,i} \times r_{b,i})}

\newline

SR = \sum\limits_{i = 1}^{N}{[w_{b,i} \times (r_{p,i} - r_{b,i})]}


$$

- 交互收益(Interaction):$IR =  D - C - B + A$
$$

IR = \sum\limits_{i = 1}^{N}{(w_{p,i} \times w_{b,i} - w_{b,i} \times r_{p,i} - w_{p,i} \times r_{b,i} + w_{b,i} \times r_{b,i})}

\newline

IR = \sum\limits_{i = 1}^{N}{[(w_{p,i} - w_{b,i}) \times (r_{p,i} - r_{b,i})]}

$$


- 超额收益():$ER = AR + SR + IR = D - A$
$$

ER =
\newline
\sum\limits_{i = 1}^{N}{(w_{p,i} \times r_{b,i} - w_{b,i} \times r_{b,i}} +
\newline
\sum\limits_{i = 1}^{N}{(w_{p,i} \times r_{b,i} - w_{b,i} \times r_{b,i})} +
\newline
\sum\limits_{i = 1}^{N}{ (w_{p,i} \times w_{b,i} - w_{b,i} \times r_{p,i} - w_{p,i} \times r_{b,i} + w_{b,i} \times r_{b,i})}

\\

ER = \sum\limits_{i = 1}^{N}{[(w_{p,i} \times r_{p,i}) - (w_{b,i} \times r_{b,i})]}

$$


---
### IK模型
> Ibbotson和Kaplan在2000年提出


### BF模型
Brinson和Fachler

#### 多期Brinson模型

$$
$$
