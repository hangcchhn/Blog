# 理论模型
> theory model




---
## 资本资产定价
> CAPM(Capital Asset Pricing Model)

## 资产收益率与市场收益率是一次线性关系
- $r_f$:无风险收益率
- $r_m$:市场收益率
$$
r_i = \alpha_i + \beta_i \times r_m + \epsilon_i
$$
- $r_i$:资产i的收益率
- $\beta_i$:资产i的系统风险
$$

\dfrac{r_i -r_f}{\beta_i} = \dfrac{r_m - rf}{\beta_m}

$$
- 市场系统风险
    - $\beta_m = 1$
- 风险溢价：收益率超过无风险收益率的差值
    - $r_i - r_f$:

$$
r_i - r_f = \beta_i \times (r_m - r_f)
$$



---
## 套利定价理论
> APT(Arbitrage Pricing Theory)
$$
ER_p = \sum\limits_{i=1}^{N}{(ER_i \cdot w_i)}

\newline

\begin{cases}
0 < w_i < 1 \\
\sum\limits_{i=1}^{N}{w_i} = 1
\end{cases}


\newline



\sigma_p = \sum\limits_{i=1}^{N}{
    \sum\limits_{j=1}^{N}{
        (w_i \cdot w_j \cdot \sigma_{i,j})
    }
}


\newline
min(\sigma_p)


\newline



$$





---
## 期权定价模型
> Black Scholes