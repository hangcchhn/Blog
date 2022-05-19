# 函数
> function



## sigmoid函数
- logistic函数
$$
logistic(x) = \dfrac{1}{1 + \exp{\left( -K(x - x_0) \right)}}

$$

$$

$$

- softmax函数
$$
softmax(x_k) = \dfrac{\exp(x_k)}
    {\sum_{i = 1}^{K}{\exp(x_i)}}

$$

- logistic函数
$$

\sigma(x) = \dfrac{1}{1 + \exp(-x)}

$$
- tanh函数

$$

tanh(x) = \dfrac{\exp(x) - \exp(-x)}{\exp(x) + \exp(-x)}

$$
$$
tanh(x) = 2 \sigma(x) - 1

$$

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
