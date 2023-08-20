
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
    - 多元线性回归
    - 最小二乘法：残差平方和越小，回归模型拟合效果越好

$$
r_p = \sum\limits_{i = 1}^{N}{(w^p_i \times r_i)} + \epsilon_p

$$
- $w^p_i$:投资组合p对风格资产i在收益率r上的敏感系数
- $max(w^p_i)$对应的风格资产i就是投资组合p的投资风格
- 有约束的二次规划
    - 量化优化技术包括线性或非线性规划，二次规划或混合整数规划

$$

w^p_i \geq 0, i=1,2,\cdots,N

\\

w^p_1 + w^p_2 + \cdots + w^p_N = 1

$$



---
- $r_p - r_b$:超额收益Alpha
- $r_p - r_i$:选股Alpha
- $r_i - r_b$:风格Alpha

$$
r_p - r_b = (r_p - r_i) + (r_i - r_b)

$$

---
## 拟合度
> $R^2$:R-square




- $y_i$:真实值
- $\bar{y_i}$:平均值
- $\hat{y_i}$:拟合值

- $SST$:总离平方和
    - Total Sum of Squares
$$
SST = \sum\limits_{i = 1}^{N}{(y_i - \bar{y})^2}
$$

- $SSE$:残差平方和
    - Sum of Squares due to Error
$$
SSE = \sum\limits_{i = 1}^{N}{(y_i - \hat{y})^2}
$$

- $SSR$:回归平方和
    - Sum of Squares of the Regression
$$
SSR = \sum\limits_{i = 1}^{N}{(\hat{y_i} - \bar{y})^2}
$$

$$
SST = SSE + SSR
$$

- $MSE$:均方差
    - Mean Squared Error
$$
MSE = \dfrac{SSE}{N}
$$

- $RMSE$:均方根
    - Root Mean Squared Error
$$
RMSE = \sqrt{MSE}
$$

- $R^2$是指观测变量与预测变量之间的相关系数的平方值
- $R^2$能够评估模拟回归线与实际数据点之间的吻合程度
- $R^2 \in [0, 1]$
- $R^2$越接近1，模型拟合程度越好



$$
R^2 = 1- \dfrac{SSE}{SST}

$$


---
## 风险价值
- $VaR$：在一定置信区间下的最大损失
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

