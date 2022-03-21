

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
- $r_m$:市场指数收益率
- $r_f$:无风险收益率
- $r_\beta$:SML上相同系统风险的收益率

$$

r_p - r_f = (r_p - r_\beta) + (r_\beta - r_f)

\\

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

\\

r_I = \beta_I \times (r_m - r_f)

\\

r_M = (\beta_p - \beta_I) \times (r_m - r_f)


$$

- $r_I$:投资者风险回报(Investor)
- $r_M$:经理人风险回报(Manager)

- $\beta_I$:投资者目标风险



---
### Brinson模型

- 对股票投资组合进行相对收益的归因分析

#### 单期Brinson模型

---
### BHB模型
> Brinson，Hood和Beebower在1986年提出

#### 基金业绩分解
- 投资策略（战略资产配置）
- 选股贡献
- 择时贡献
- 选股择时交互影响


- $w^p_{i}$:投资组合资产类别i的权重
- $r^p_{i}$:投资组合中资产类别i的收益率

- $w^b_{i}$:基准指数中资产类别i的权重
- $r^b_{i}$:基准指数中资产类别i的收益率




- $A = \sum(w^b_{i} \times r^b_{i})$:基准指数的收益率
- $B = \sum(w^p_{i} \times r^b_{i})$:
- $C = \sum(w^b_{i} \times r^p_{i})$:
- $D = \sum(w^p_{i} \times r^p_{i})$:投资组合的收益率



- 配置效应(Allocation):$B - A$
$$


\sum{Allocation_i} = \sum{(w^p_{i} \times r^b_{i} - w^b_{i} \times r^b_{i})}

\\
 = \sum{[(w^p_{i} - w^b_{i}) \times r^b_{i}]}

$$
- 选择效应(Selection):$C - A$
$$

\sum{Selection_i} = \sum{(w^p_{i} \times r^b_{i} - w^b_{i} \times r^b_{i})}

\\

 = \sum{[w^b_{i} \times (r^p_{i} - r^b_{i})]}

$$

- 交互效应(Interaction):$D - C - B + A$
$$

\sum{Interaction_i} = \sum{(w^p_{i} \times w^b_{i} - w^b_{i} \times r^p_{i} - w^p_{i} \times r^b_{i} + w^b_{i} \times r^b_{i})}

\\

 = \sum{[(w^p_{i} - w^b_{i}) \times (r^p_{i} - r^b_{i})]}

$$


- 投资组合总收益率(Total):$TR = AR + SR + IR = D - A$
$$

TR =
\\
\sum{(w^p_{i} \times r^b_{i} - w^b_{i} \times r^b_{i}} +
\\
\sum{(w^p_{i} \times r^b_{i} - w^b_{i} \times r^b_{i})} +
\\
\sum{ (w^p_{i} \times w^b_{i} - w^b_{i} \times r^p_{i} - w^p_{i} \times r^b_{i} + w^b_{i} \times r^b_{i})}

\\

TR = \sum{[(w^p_{i} \times r^p_{i}) - (w^b_{i} \times r^b_{i})]}

$$


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

#### 多期Brinson模型



$$
$$





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


