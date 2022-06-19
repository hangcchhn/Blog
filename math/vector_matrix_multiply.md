
# 向量矩阵
> vector matrix multiply

---
## 点乘
- 向量
$$

\pmb{a} =
\begin{bmatrix}
    a_1 & a_2 & a_3
\end{bmatrix}

\\
\pmb{b} =
\begin{bmatrix}
    b_1 & b_2 & b_3
\end{bmatrix}
$$

$$
\pmb{c} = \pmb{a} \cdot \pmb{b} =
\begin{bmatrix}
    a_1 b_1 & a_2 b_2 & a_3 b_3
\end{bmatrix}

$$

---
- 矩阵
$$

\pmb{A} =
\begin{bmatrix}
    a_{1,1} & a_{1,2} & a_{1,3} \\
    a_{2,1} & a_{2,2} & a_{2,3} \\
\end{bmatrix}

\\
\pmb{B} =
\begin{bmatrix}
    b_{1,1} & b_{1,2} & b_{1,3} \\
    b_{2,1} & b_{2,2} & b_{2,3} \\
\end{bmatrix}
$$

$$
\pmb{C} = \pmb{A} \cdot \pmb{B} =
\begin{bmatrix}
    a_{1,1} b_{1,1} & a_{1,2} b_{1,2} & a_{1,3} b_{1,3} \\
    a_{2,1} b_{2,1} & a_{2,2} b_{2,2} & a_{2,3} b_{2,3} \\
\end{bmatrix}

$$

---
## 叉乘
- 向量
$$

\pmb{a} =
\begin{bmatrix}
    a_1 & a_2 & a_3
\end{bmatrix}

\\
\pmb{b} =
\begin{bmatrix}
    b_1 \\ b_2 \\ b_3
\end{bmatrix}
$$


$$
c = \pmb{a} \times \pmb{b} =
 = \sum{a_i b_i}
$$


---
- 矩阵


$$

\pmb{A} =
\begin{bmatrix}
    a_{1,1} & a_{1,2} & a_{1,3} \\
    a_{2,1} & a_{2,2} & a_{2,3} \\
\end{bmatrix}

\\
\pmb{B} =
\begin{bmatrix}
    b_{1,1} & b_{1,2} \\
    b_{2,1} & b_{2,2} \\
    b_{3,1} & b_{3,2} \\
\end{bmatrix}
$$

$$
\pmb{C} = \pmb{C} = \pmb{A} \cdot \pmb{B} =
\begin{bmatrix}
    \sum{a_{1,j} b_{i,1}} & \sum{a_{1,j} b_{i,2}} \\
    \sum{a_{2,j} b_{i,1}} & \sum{a_{2,j} b_{i,2}}\\
\end{bmatrix}
$$

```py

import numpy as np

# python语言numpy库
# 向量矩阵乘法运算时会自动转置适配
# a
# b
 # 点乘：前后形状相同
c1 = a * b
c2 = np.multiply(a, b)

# 叉乘：前列等于后行
c3 = a @ b
c4 = np.dot(a, b)

```
