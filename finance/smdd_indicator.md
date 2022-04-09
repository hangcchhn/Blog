## SMDD indicator

---
## SMDD
> Smoothed Multivariate Discrete Distributions
- 平滑多变量离散分布模型

- 离散均匀分布随机变量R


- 收益率Rpi
- 置信区间：$\theta$=0.05


$$

\sigma = \sqrt{\Omega}

\\

\Omega = \phi^2 \cdot D[Rp_i]


\\

\phi = \sqrt{(1 + \theta)} - 1

$$
- 方差
$$

\\

D[R_j] = \frac{1}{j} \sum\limits_{i = 1}^{j}{(Rp_i - \overline{R}p) ^ 2}

\\

$$

- SMDD

$$
\\

f(x;\mu,\sigma) = \frac{1}{\sqrt{2\pi}\sigma}
    e^{-\dfrac{(x - \mu)^2}{2\sigma^2}}
\\

f(x) = \frac{1}{n} \sum\limits_{j = 1}^{n}{f(x;Rp_j,\sigma)}


\\


$$

---
## LPM
> Lower Partial Moments
- $LPM_m(\tau)$是m阶下偏矩
- τ是期望收益率

$$

\\

LPM_m(\tau)=\int_{1}^{2}{(\tau - x)^m f(x) dx}

\\

LPM_1(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n}
{[\sigma^2 f(\tau;Rp_j,\mu) + (\tau - Rp_j)f(\tau;Rp_j,\mu)]}

\\

LPM_2(\tau) = \frac{1}{n} \sum\limits_{j = 1}^{n} {\left[
(\tau - Rp_j)\sigma^2 f(\tau;Rp_j,\mu) + [(\tau - Rp_j)^2 + \sigma^2] f(\tau;Rp_j,\mu)
\right]}

$$

---

### 欧米伽比率
> Keating和Shadwick在2002年提出


- 风险调整后收益指标


- 收益率为正的概率除以收益率为负的概率
$$



$$

- $Omega$:
$$
Omega = \dfrac{r_a - r_f}{LPM_1 \times 12} + 1

$$


---
### 卡帕比率
> $Kappa$
$$
Kappa = \dfrac{r_a - r_f}{\sqrt[3]{LPM_3 \times 12}}

$$
---
### 下行偏差
> Downside Deviation
$$

DD(\tau) = \sqrt{LPM_2(\tau)}

$$






