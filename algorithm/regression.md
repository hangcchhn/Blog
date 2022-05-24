# 回归
> Regression



### 概率函数
> probability function
- $p(x;\theta)$


### 似然函数
> likelihood function

- 对数似然函数
- 对数似然方程
- 最大似然估计(Maximum Likelihood Estimation, MLE)


$$
\ell(\theta) = \prod\limits_{i = 1}^{N}{p(x_i;\theta)}
\\

\ln(\ell(\theta)) = \prod\limits_{i = 1}^{N}{\ln(p(x_i;\theta))}

\\

\dfrac{\partial{\ln(\ell(\theta))}}{\partial{\theta}} = 0

$$

- 最大后验概率估计(Maximum A Posteriori estimation，MAP)


- $X \sim N(\mu, \sigma^2)$
$$

p(x; \mu, \sigma^2) = \dfrac{1}{\sqrt{2\pi}\sigma}
    \exp{\left( -\dfrac{(x - \mu)^2}{2\sigma^2} \right)}



\\

\ell(\mu, \sigma^2) = \prod\limits_{i = 1}^{N}{\dfrac{1}{\sqrt{2\pi}\sigma}
    \exp{\left( -\dfrac{(x_i - \mu)^2}{2\sigma^2} \right)}}
\\
\ln(\ell(\mu, \sigma^2)) = -N\ln(\sqrt{2\pi}\sigma)
-\sum\limits_{i = 1}^{N}{\dfrac{(x_i - \mu)^2}{2\sigma^2}}

\\
\dfrac{\partial{\ln(\ell(\mu, \sigma^2))}}{\partial{\mu}}
= -\dfrac{1}{\sigma^2}\sum\limits_{i = 1}^{N}{(x_i - \mu)}
= 0

\\


\\
\dfrac{\partial{\ln(\ell(\mu, \sigma^2))}}{\partial{\theta}}
= -\dfrac{N}{\sigma} + \dfrac{1}{\sigma^3}\sum\limits_{i = 1}^{N}{(x_i - \mu)^2}
= 0

\\


$$

- $\mu$的最大对数似然估计量:$\hat{\mu} = \bar{x} $
- $\sigma$的最大对数似然估计量:$\hat{\sigma} = \sqrt{\dfrac{1}{N}\sum\limits_{i = 1}^{N}{(x_i - \mu)^2}}$

## 线性回归
> Linear Regression
$$

f(\pmb{x};\pmb{w}) = \pmb{w}^T \pmb{X}
\\
\pmb{X} \pmb{w} = \pmb{y}
\\
 \pmb{w} = \pmb{X}^{T} \pmb{y}
\\
\pmb{w} = (\pmb{X}^{T} \pmb{X})^{-1} \pmb{X}^{T} \pmb{y}

$$

- $\hat{w}$的最大对数似然估计量:$\hat{w} = (\pmb{X}^{T} \pmb{X})^{-1} \pmb{X}^{T} \pmb{y}$


- 穆尔-彭罗斯广义逆矩阵(Moore Penrose):$\pmb{X}^{+}$
    - $\pmb{X}$为非奇异矩阵:$\pmb{X}^{+} = (\pmb{X}^{T} \pmb{X})^{-1} \pmb{X}^{T}$
    - $\pmb{X}$为可逆方阵:$\pmb{X}^{+} = (\pmb{X}^{T} \pmb{X})^{-1} \pmb{X}^{T} = \pmb{X}^{-1} (\pmb{X}^{T})^{-1} \pmb{X}^{T} = \pmb{X}^{-1}$
    - $\pmb{X} = \pmb{U} \Sigma \pmb{V^T}$ SVD分解:$\pmb{X}^{+} = \pmb{U} \Sigma^{-1} \pmb{V^T}$




## Logistic回归
> Logistic Regression

- logistic函数
$$

logistic(x) = \dfrac{1}{1 + \exp(-x)}

$$


## Softmax回归
> Softmax Regression

- softmax函数
$$
softmax(x_k) = \dfrac{\exp(x_k)}
    {\sum_{i = 1}^{K}{\exp(x_i)}}
$$


## ARIMA:差分整合移动平均自回归模型
> Auto Regressive Integrated Moving Average


