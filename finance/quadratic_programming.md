# 二次规划
> quadratic programming







- 线性规划:LP(Linear Program)
- 二次规划:QP(Quadratic Program)
- 二阶锥规划:SOCP(Second-Order Cone Program)
- 半定规划:SDP(Semi-Definite Program)
- 指数锥规划:ECP(Exponential Cone Program)
- 幂锥规划:PCP(Power Cone Program)
- 混合整数线性:MIL(Mixed Integer Linear)
---

- ECOS(Embedded Conic Sover)
- SCS(Splitting Conic Solver
- OSQP(Operator Splitting Quadratic Program)

---


- 最优解Optimization
$$

\begin{align}
\min \quad & f(\pmb{X})
\\
s.t. \quad & g(\pmb{X}) \leq 0
\\
\quad & h(\pmb{X}) = 0
\end{align}

$$

- 拉格朗日Lagrange

$$
L(\pmb{X}, \pmb{\lambda}, \pmb{\mu}) = f(\pmb{X}) + \pmb{\lambda} g(\pmb{X}) + \pmb{\mu} h(\pmb{X})

\\


L(\pmb{X}, \pmb{\lambda}, \pmb{\mu}) = f(\pmb{X}) + \sum\limits_{i = 1}^{M}{\lambda_i} g_i(\pmb{X}) + \sum\limits_{j = 1}^{N}{\mu_i} h_i(\pmb{X})
$$



- 1951年，Kuhn和Tucker发表论文，称K-T(Kuhn-Tucker)条件；后来发现1939年，Karush早就发表论文，然后称KKT(Karush–Kuhn–Tucker)条件

- 用KKT条件中的等式求最优解，代入不等式验证解
- 存在最优解$\pmb{X}^*$, 满足KKT条件
- 最优解的梯度为0

$$
\nabla L(\pmb{X}^*, \pmb{\lambda}, \pmb{\mu}) = 0
$$
-
$$
\begin{cases}
\nabla f(\pmb{X}^*) + \sum\limits_{i = 1}^{M}{\lambda_i} \nabla g_i(\pmb{X}^*) + \sum\limits_{j = 1}^{N}{\mu_i}  \nabla h_j(\pmb{X}^*) = 0
\\
\lambda_i g(\pmb{X}^*) = 0
\\
h(\pmb{X}^*) = 0
\\
\lambda_i \geq 0
\\
g(\pmb{X}^*) \leq 0
\end{cases}

$$


---

- QP问题

$$
\begin{align}
\min \quad & \frac{1}{2} \pmb{x}^T \pmb{H} \pmb{x} + \pmb{g}^T\pmb{x}
\\
s.t. \quad & \pmb{A} \pmb{x} = \pmb{b}
\\
& \sum_{i = 1}^{N}{x_i} = 1
\\
& 0 < x_i < 1
\end{align}

$$

- $\pmb{H}$:Hessian矩阵
- $\pmb{g}$:gradient梯度


---
- 拉格朗日函数Lagrange

$$
L(\pmb{x}, \pmb{\lambda}) = \frac{1}{2} \pmb{x}^T \pmb{H} \pmb{x} + \pmb{g}^T\pmb{x} - \pmb{\lambda}^T (\pmb{A} \pmb{x} - \pmb{b})

$$

- $\pmb{H}$矩阵是正定矩阵，

$$
\begin{cases}
\nabla_{\pmb{x}} L(\pmb{x}, \pmb{\lambda}) = 0
\\
\nabla_{\pmb{\lambda}} L(\pmb{x}, \pmb{\lambda}) = 0
\end{cases}
$$

$$
\begin{cases}
\pmb{H} \pmb{x} + \pmb{g}^T - \pmb{A}^T \pmb{\lambda} = 0
\\
\pmb{A} \pmb{x} - \pmb{b} = 0
\end{cases}

$$

- 拉格朗日矩阵
$$
\begin{bmatrix}
    \pmb{H} & - \pmb{A}^T \\
    - \pmb{A} & \pmb{0}
\end{bmatrix}

\begin{bmatrix}
    \pmb{x} \\
    \pmb{\lambda}
\end{bmatrix}
 =
\begin{bmatrix}
    - \pmb{g} \\
    - \pmb{b}
\end{bmatrix}
$$

- 拉格朗日矩阵可逆

$$

\begin{bmatrix}
    \pmb{H} & - \pmb{A}^T \\
    - \pmb{A} & \pmb{0}
\end{bmatrix}^{-1}
 =
\begin{bmatrix}
    \pmb{Q} & - \pmb{R} \\
    - \pmb{R}^T & \pmb{G}
\end{bmatrix}
$$
- 求解
$$

\begin{bmatrix}
    \pmb{x}^* \\
    \pmb{\lambda}^*
\end{bmatrix}
 =
\begin{bmatrix}
    \pmb{Q} & - \pmb{R} \\
    - \pmb{R}^T & \pmb{G}
\end{bmatrix}
\begin{bmatrix}
    - \pmb{g} \\
    - \pmb{b}
\end{bmatrix}
 =
\begin{bmatrix}
    - \pmb{Q} \pmb{g} + \pmb{R} \pmb{b}\\
    \pmb{R}^T \pmb{g} - \pmb{G} \pmb{b}
\end{bmatrix}

$$
- 求逆
$$

\begin{align}

\pmb{Q} & = \pmb{H}^{-1} - \pmb{H}^{-1} \pmb{A}^T (\pmb{A} \pmb{H}^{-1} \pmb{A}^T)^{-1} \pmb{A} \pmb{H}^{-1}
\\

\pmb{R} & = \pmb{H}^{-1} \pmb{A}^T (\pmb{A} \pmb{H}^{-1} \pmb{A}^T)^{-1}

\\
\pmb{G} & = -(\pmb{A} \pmb{H}^{-1} \pmb{A}^T)^{-1}

\end{align}
$$




---


- OSQP


- ADMM


- 原始(primary)
- 对偶(dual)



