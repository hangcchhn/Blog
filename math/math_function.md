# 数学函数
> math function
---
## Gaussian函数
$$
Gaussian(x) = \dfrac{1}{\sqrt{2\pi}\sigma}
    \exp{\left( -\dfrac{(x - \mu)^2}{2\sigma^2} \right)}

$$
- 高度:$\dfrac{1}{\sqrt{2\pi}\sigma}$
- 中心:$\mu$
- 幅度:$\sigma$

$$
y = h \cdot \exp{\left( -\dfrac{(x - \mu)^2}{2\sigma^2} \right)}

$$

---
## Logistic函数
$$
Logistic(x) = \dfrac{1}{1 + \exp{\left( -K(x - x_0) \right)}}

$$

$$

$$
---
## Softmax函数
$$
y_i = \dfrac{\exp(x_i)}
    {\sum_{k = 1}^{K}{\exp(x_k)}}

$$

$$
\dfrac{\partial y_j}{\partial x_i} = y_j(I_{ij} - y_i)
$$
- 克罗内克函数:当$i = j$时,$I_{ij} = 1$;当$i \neq j$时,$I_{ij} = 0$.



---
## Sigmoid函数
- $(-\infty, +\infty) \rightarrow [0, 1]$
$$
\\

y = \sigma(x) = \dfrac{1}{1 + \exp(-x)}
\\
y' = y(1 - y)


$$

---
- tanh函数

$$

tanh(x) = \dfrac{\exp(x) - \exp(-x)}{\exp(x) + \exp(-x)}

$$
$$
tanh(x) = 2 \sigma(x) - 1

$$
---
- ReLU(Rectified Linear Unit)
    - 修正线性单元

$$
ReLU(x) = \max(0, x)
$$

- ELU(Exponential Linear Unit)
    - 指数线性单元

$$
ELU(x) = \max(0, x) + (\max(0, \exp(x) - 1))
$$

- softplus函数
$$
softplus(x) = \log(1 + \exp(x))


$$
- swish函数
$$
swish(x) = x \sigma(\beta x)

$$
