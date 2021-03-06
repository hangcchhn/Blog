# 风险
> risk


## 市场风险度量
### 风险价值
> VaR(Value at Risk)

### 敏感度分析
> sensitive analysis
- 历史情景分析
- 假设性情景分析


### 情景分析
> scenario analysis

### 压力测试
> stress test


### 回溯测试
> back test

- 获取收益率：
    - $r_i$:投资标的(investment)
    - $r_b$:基准(benchmark)
    - $r_p$:投资组合(portfolio)
- 获取当期权重
    - $w^b_i$:基准中投资标的i的权重
    - $w^p_i$:投资组合中投资标的i的权重
- 计算回溯收益序列：
    - $R$:
    - $R_b$:
    - $R_p$:

- 计算投资组合中各投资标的的协方差矩阵用来风险分解
- 计算收益序列的风险统计数据



### 自相关系数

- 同一投资组合相邻周期的收益率相关系数是一阶自相关系数
$$

\rho_{r_{t-1}, r_t} = \rho_1

$$
- $r_t$:观察收益率
- $r^{\prime}_t$:真实收益率
$$
r^{\prime}_t = \dfrac{r_t - \rho_1 \times r_{t-1}}{1 - \rho_1}

$$
- 非平稳化的收益率
---
### 风险管理

- 交易
- 分散
- 对冲
- 保险