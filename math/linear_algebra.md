
# 线性代数
> linear algebra



- 标量(scalar):$a$
- 向量(vector):$\pmb{a}$
- 矩阵(matrix):$\pmb{A}$
- 空间维度(dimension):$N$
- 欧式空间(euclidean):$\mathbb{R}^{N \times N}$
---
- 转置矩阵(transposition):$\pmb{A}^T$
- 对称矩阵(symmetric):$\pmb{A} = \pmb{A}^T$
- 对角矩阵:$\rm{diag}()$
- 单位向量:$\pmb{e_1} = (1, 0, \cdots, 0)^T$
- 单位矩阵(identity)
$$
\pmb{I} = (\pmb{e_1}, \pmb{e_2}, \cdots \pmb{e_N}) = \rm{diag}(1, 1, \cdots, 1)
$$






- 逆矩阵(inverse)
    - 非奇异矩阵
$$
\pmb{A}\pmb{A}^{-1} = I
\\
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

- 行列式
    - 代数余子式:$A_{ij}$
    - 余子式:$M_{ij}$
$$
\det(\pmb{A}) = \sum\limits_{j = 1}^{N}{a_{ij}A_{ij}} \quad i = 1, 2, \cdots, N
\\
A_{ij} = (-1)^{i + j}M_{ij}
\\

$$

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


## 奇异值分解

$$

\pmb{A} = \pmb{U} \Sigma \pmb{V^T}

$$

