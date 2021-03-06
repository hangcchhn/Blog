# 微积分
> calculus

## 微分
> differentiation


- 导数
> derivative
$$
y = f(x)
\\
\Delta{x}= x_1 - x_0
\\
\Delta{y} = y_1 - y_0
$$


$$
\dfrac{{\rm{d}}y}{{\rm{d}}x} = \lim\limits_{\Delta{x}\rightarrow+\infty}\dfrac{\Delta{y}}{\Delta{x}}
$$

- 极限存在，函数可微。

$$
\dfrac{{\rm{d}}y}{{\rm{d}}x} = y' = f'(x) = \dot y = D_xy = Df(x)
$$
- 表示方式
    - $\dfrac{{\rm{d}}y}{{\rm{d}}x}$:莱布尼茨（Leibinz）的表示方式
    - $y' = f'(x)$:拉格朗日（Lagrange）的表示方式
    - $\dot y$:牛顿（Newton）的表示方式
    - $D_xy = Df(x)$:柯西（）的表示方式

- 复合函数
$$
\dfrac{{\rm{d}}f(g(x))}{{\rm{d}}x} =
\dfrac{{\rm{d}}f}{{\rm{d}}g} \cdot \dfrac{{\rm{d}}g}{{\rm{d}}x}

$$

---
- 指数
$$
\dfrac{{\rm{d}}(a^x)}{{\rm{d}}x} = a^xlna \quad \dfrac{{\rm{d}}(e^x)}{{\rm{d}}x} = e^x
$$
- 对数
$$
\dfrac{{\rm{d}}(log_ax)}{{\rm{d}}x} = \dfrac{1}{xlna} \quad \dfrac{{\rm{d}}(lnx)}{{\rm{d}}x} = \dfrac{1}{x}
$$
- 幂函数
$$
\dfrac{{\rm{d}}(x^a)}{{\rm{d}}x} = ax^{a - 1}
$$

---
- 高阶微分
$$
y'' = f''(x)
\\
y^{(n)} = f^{(n)}(x)
$$

- 偏微分

$$
z = f(x, y)
$$

$$
\dfrac{\partial z}{\partial x} = f_x(x, y)
\quad
\dfrac{\partial z}{\partial y} = f_y(x, y)
$$

$$
f_{xy} =
\\
f_{yx} =
$$

- 全微分

$$
z = f(x, y)
$$


$$
\partial z = \dfrac{\partial z}{\partial x}dx + \dfrac{\partial z}{\partial y}dy
$$

---
- 自动计算梯度
    - 数值微分(Numerical Differentiation)
    - 符号微分(Symbolic Differentiation)
    - 自动微分(Automatic Differentiation)

---
## 积分
> integration
- 定积分
$$
\int{f(x)}\rm{d}x
$$
- 不定积分
$$
\int_{a}^{b}{f(x)}\rm{d}x
$$




- $\iint_{1}^{2}{x}dx$
- $\oint_{1}^{2}{x}dx$