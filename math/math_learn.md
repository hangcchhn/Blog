

---
## OLS(Ordinary Least Square)最小二乘法


$$


y = \alpha + \sum\limits_{t = 1}^{T}{\beta_{t} * x_t} + \epsilon

\\

\min\left(
\sum\limits_{t = 1}^{T}{
    \bigg\lgroup
        y - \sum\limits_{t = 1}^{T}{\beta_{t} * x_t}
    \bigg\rgroup^2}\right)
$$

---
## SDS(Standard Deviation Score)标准差比值法


$$
SDS = \sqrt{
    \dfrac{
        \sum\limits_{i = 1}^{N}{(x_i - \bar{x})^2}
    }{N - unbiased}
}
\\

unbiased = 0|1


$$