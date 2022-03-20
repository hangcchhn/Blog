
# formula finance
> 金融公式




---
## 资本资产定价
> CAPM(Capital Asset Pricing Model)

- $ER_i$:预期(Expect)收益率
- $ERP_m$:预期超额收益
$$
ER_i = Rf_i + \beta_{i, m} ERP_m

\newline

\beta_{i,m} = \frac{Cov(r_i,r_m)}{\sigma_m^2}

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

