
# 线性代数
> linear algebra

| 名称 | 维度 | 英文 |
| :-: | :-: | :-: |
| 标量 | 0维 | scalar |
| 向量 | 1维 | vector |
| 矩阵 | 2维 | matrix |
| 张量 | N维 | tensor |

---
- 标量(scalar):$a$
- 向量(vector):$\pmb{a}$
$$

\pmb{a} =
\begin{bmatrix}
    a_1 \\
    a_2 \\
    a_3 \\
\end{bmatrix}

$$
- 矩阵(matrix):$\pmb{A}$

$$

\pmb{A} =
\begin{bmatrix}
    \pmb{a_1} & \pmb{a_2} & \pmb{a_3} \\
\end{bmatrix}
\\
\pmb{A} =
\begin{bmatrix}
    a_{1,1} & a_{1,2} & a_{1,3} \\
    a_{2,1} & a_{2,2} & a_{2,3} \\
    a_{2,1} & a_{2,2} & a_{2,3} \\
\end{bmatrix}
$$

- 空间维度(dimension):$N$
- 欧式空间(euclidean):$\mathbb{R}^{N \times N}$

---


## 行列式
> n阶方阵
- $|\pmb{A}| = \det(\pmb{A})$

$$
\det(\pmb{A}) = \sum\limits_{i = 1}^{N}\sum\limits_{j = 1}^{N}{a_{ij}A_{ij}}
$$


$$
\pmb{A}_{ij} = (-1)^{i + j} \pmb{M}_{ij}
$$

- $\pmb{A}_{ij}$:元素$a_{ij}$的代数余子式。
- 把N阶行列式 中的元素$a_{ij}$所在第i行和第j列去掉后。
- 剩下的N-1阶行列式，称元素$a_{ij}$的余子式，记$\pmb{M}_{ij}$。

- $\det(\pmb{A}) \neq 0 \iff \pmb{A}$ 是非奇异矩阵
$$
\det(\pmb{A}) = \det(\pmb{A}^T)
\\
\det(\pmb{AB}) = \det(\pmb{A})\det(\pmb{B})
$$
---
- 转置矩阵(transposition):$\pmb{A}^T$
- 对称矩阵(symmetric):$\pmb{A} = \pmb{A}^T$
- 对角矩阵:$\rm{diag}()$
- 单位向量:$\pmb{e_1} = (1, 0, \cdots, 0)^T$
- 单位矩阵(identity)
$$
\pmb{I} = (\pmb{e_1}, \pmb{e_2}, \cdots \pmb{e_N}) = \rm{diag}(1, 1, \cdots, 1)
$$
- 零矩阵:$\pmb{O}$

---
## 逆矩阵(inverse):
- $\pmb{A}^{-1}$
$$
\pmb{A}\pmb{A}^{-1} = I
$$

- 如果$\pmb{A}^{-1}$存在，就称$\pmb{A}$是非奇异矩阵
$$
(\pmb{A}^{-1})^T = (\pmb{A}^T)^{-1}
\\
(\pmb{A}\pmb{B})^{-1} = \pmb{A}^{-1}\pmb{B}^{-1}

$$

- 正交矩阵
$$

\pmb{A}^T = \pmb{A}^{-1}

\\
\pmb{A}\pmb{A}^T = I

$$


## 共轭矩阵
> 埃尔米特(Hermite)矩阵

- $\pmb{A}^H$
- 两个实部相等，虚部互为相反数的复数互为共轭复数（conjugate complex number）


---

## 特征值和特征向量
- 特征值:$\lambda$
- 特征向量:$\pmb{x}$

$$
\pmb{A}\pmb{x} = \lambda\pmb{x}
$$

- 谱:$\sigma(\pmb{A}) = \{\lambda_1, \lambda_2, \cdots, \lambda_N\}$
- 谱半径:$\rho(\pmb{A}) = \max(|\lambda_i|)$

$$

(\lambda\pmb{I} - \pmb{A})\pmb{x} = \pmb{0}
\\
 = \det(\lambda\pmb{I} - \pmb{A}) = 0
$$
- 迹:$\rm{tr}(\pmb{A}) = \sum\limits_{i = 1}^{N}{\lambda_i}$

- 秩:$\rm{rank}(\pmb{A})$


---
## 范数
> norm

- 向量范数
- 矩阵范数
$$

\ell_p(\pmb{x}) = ||\pmb{x}||_p = (\sum\limits_{i = 1}^{N}{|x_i|^p})^{1/p}
\\
||\pmb{x}||_2
\\
||\pmb{A}||_2

$$

---
## 矩阵分解
> Matrix Decomposition

### LU分解


### QR分解



### Cholesky分解
> Cholesky Decomposition

### 特征分解
> Eigen Decomposition

- Eigen Value

- Eigen Vector

### 奇异值分解
> SVD(Singular Value Decomposition)
$$

\pmb{A} = \pmb{U} \Sigma \pmb{V^T}

$$

