# 数学公式
> math formula

- $N$:总体数量
- $n$:样本数量
- $n < N$

## 均值
> mean

- 总体期望
$$
\mu = \dfrac{1}{N}\sum\limits_{i = 1}^{N}{x_i}
$$
- 样本期望
$$
\bar{x} = \dfrac{1}{n}\sum\limits_{i = 1}^{n}{x_i}
$$


---
## 方差
> variance
- $var(x)$


- 总体方差
$$
\sigma_x^2 = \dfrac{\sum\limits_{i = 1}^{N}
    {(x_i - \mu)^2}}{N}
$$
- 样本方差

$$
s_x^2 = \dfrac{\sum\limits_{i = 1}^{n}
    {(x_i - \bar{x})^2}}{n - 1}
$$



## 标准差
> standard deviation
- $\sigma_x$
- $s_x$
- 无偏性unbiasedness
$$
\sigma_x(x;unbiased) = \sqrt{
    \dfrac{
        \sum\limits_{i = 1}^{N}{(x_i - \bar{x})^2}
    }{N - unbiased}
}
\\

unbiased = 0|1

\\

 =

$$

## 协方差
> covariance

- $cov(x, y)$
$$

cov(x, y) = \dfrac{\sum\limits_{i = 1}^{N}{
    [(x_i - \bar{x}) \times (y_i - \bar{y})]
}}{N}

$$


$$
cov(x, y) = cov(y, x)
$$






## 相关系数
> correlation coefficient

- pearson相关系数
- $\rho_{x, y}$


$$
\rho_{x, y} = \dfrac{cov(x, y)}{\sigma_x \times \sigma_y}

$$


$$

\rho_{x, y} = \rho_{y, x}
$$
