## SMDD indicator

---
## SMDD(Smoothed Multivariate Discrete Distributions)
- 平滑多变量离散分布模型

- 离散均匀分布随机变量R


- 收益率Rpi
- 置信区间：$\theta$=0.05


$$

\sigma = \sqrt{\Omega}

\newline

\Omega = \phi^2 \cdot D[Rp_i]


\newline

\phi = \sqrt{(1 + \theta)} - 1

$$
- 方差
$$

\newline

D[R_j] = \frac{1}{j} \sum\limits_{i = 1}^{j}{(Rp_i - \overline{R}p) ^ 2}

\newline

$$

- SMDD

$$
\newline

f(x;\mu,\sigma) = \frac{1}{\sqrt{2\pi}\sigma} e^{[-\frac{1}{2}(\frac{x - \mu}{\sigma})^2]}

\newline

f(x) = \frac{1}{n} \sum\limits_{j = 1}^{n}{f(x;Rp_j,\sigma)}


\newline


$$

---
## LPM
- $LPM_m(\tau)$是m阶下偏矩(Lower Partial Moments)
- τ是期望收益率

$$

\newline

LPM_m(\tau)=\int_{1}^{2}{(\tau - x)^m f(x) dx}

\newline

LPM_1(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n}
{[\sigma^2 f(\tau;Rp_j,\mu) + (\tau - Rp_j)f(\tau;Rp_j,\mu)]}

\newline

LPM_2(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n} {\left[
(\tau - Rp_j)\sigma^2 f(\tau;Rp_j,\mu) + [(\tau - Rp_j)^2 + \sigma^2] f(\tau;Rp_j,\mu)
\right]}

$$


### 下行偏差
$$

DD(\tau) = \sqrt{LPM_2(\tau)}

$$

---
##
### 欧米伽比率
> $Omega$
$$
Omega = \dfrac{Ra - Rf}{LPM_1 \times 12} + 1

$$

### 卡帕比率
> $Kappa$
$$
Kappa = \dfrac{Ra - Rf}{\sqrt[3]{LPM_3 \times 12}}

$$



