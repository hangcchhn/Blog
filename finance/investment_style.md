
# investment style
> 投资风格


---
## RBSA
> 基于收益率的风格分析(Return-based Style Analysis)
> 资产类别因子模型(Asset Class Factor Model)

- 风格资产=风格指数

- $r_p$:投资组合(Portfolio)的收益率
- $r_b$:基准(Benchmark)的收益率


- $r_i$:某种风格资产i的收益率

- $\epsilon_p$:残差

$$
r_p = \sum\limits_{i = 1}^{N}{(w^p_i \times r_i)} + \epsilon_p

$$
- $w^p_i$:投资组合p对风格资产i在收益率r上的敏感系数
- $max(w^p_i)$对应的风格资产i就是投资组合p的投资风格

$$

w^p_i \geq 0, i=1,2,\cdots,N

\newline

w^p_1 + w^p_2 + \cdots + w^p_N = 1

$$

- $r_p - r_b$:超额收益Alpha
- $r_p - r_i$:选股Alpha
- $r_i - r_b$:风格Alpha

$$
r_p - r_b = (r_p - r_i) + (r_i - r_b)

$$

---
## 拟合度
> $R^2$:R-squared
> 预测模型吻合程度

- $VaR$:风险价值
在一定置信区间下的最大损失
$$

R^2 = 1 - \dfrac{VaR(\epsilon_p)}{VaR(r_p)}

$$


$$

R^2 = \dfrac{
    \Bigg\lbrace
    \bigg\lgroup \sum\limits_{t=1}^{T}{(Rb_t \cdot Rp_t)} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t} \bigg\rgroup
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t} \bigg\rgroup
    \Bigg\rbrace^2
}{
    \Bigg\lbrace
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t^2} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t} \bigg\rgroup^2
    \Bigg\rbrace
    \Bigg\lbrace
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t^2} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t} \bigg\rgroup^2
    \Bigg\rbrace
}
$$


---
## 风格漂移指标
> 标准差比值法
- SDS(Standard Deviation Score):


$$
SDS = \sqrt{\frac{1}{T - 1} \times \sum\limits_{i = 1}^{N}{
    \bigg\lgroup
    \sum\limits_{t = 1}^{T}{(w_{i,t} - \bar{w}_i)^2}
    \bigg\rgroup
    }
}

$$

