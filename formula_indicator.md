
# formula finnace
> 金融公式


---
## 指标




- 区间：年y，季q, 月m，周w，天d

- t期：yyyy，yyyyq, yyyy-mm，yyyyww，yyyy-mm-dd

- 数据（净值和收益率）频率默认按月计算

- 区间单位（月份）数：$ T $

- 常用区间：
    - 近一月，近三月，近六月，
    - 近一年，近两年，近三年，近五年，近十年，
    - 今年以来，成立以来

- 截止日期


---
- NAV(Net Asset Value):单位净值

    - 基金单位净值 = (总资产 - 总负债) / 基金单位总数
    - 已知价又叫历史价，是指上一个交易日的收盘价
    - 未知价又称期货价，是指当日证券市场上各种金融资产的收盘价

 - CNAV:累计(Cumulative)净值

    - 拆分比例：$S_n$
    - 分红金额：$D_n$


    - 现金分红

    $$
    CNAV_t = NAV_t \times \prod\limits_{n=1}^{t}{S_n} + \sum\limits_{n=1}^{t}{D_n}
    $$
    
    - 分红再投
    $$
    CNAV_t = CNAV_{t - 1} \times (1 + Rp_t)
    \newline
    Rp_t = \frac{NAV_t \times S_t + D_t}{NAV_{t - 1}} - 1
    $$







---



- $ Rp_t $:投资组合(Portfolio)的区间收益率
$$
Rp_t = \frac{CNAV_{t} - CNAV_{t - 1}}{CNAV_{t - 1}}
 = \frac{CNAV_{t}}{CNAV_{t - 1}} - 1
$$

- $ Ra_t $:年化(Annual)收益率
    - 年数 = 季数 / 4 = 月数 / 12 = 周数 / 2 = 天数 / 365.25
    $$
    y = \frac{q}{4} = \frac{m}{12} = \frac{w}{52} = \frac{d}{365}
    $$

    - 现金分红
    $$
    Ra_t = \frac{\sum\limits_{t = 1}^{N}{Rp_t}}{y}
    $$

    - 分红再投
    $$

    Ra_t = (1 + Rp_t) ^ {\frac{1}{y}} - 1

    $$




---
- $ Rf_t $:无风险(Risk-free)收益率


- $ Rb_t $:基准(Benchmark)收益率
- $ Rm_t $市场(Market)收益率

- $ \bar{R}_t $:平均收益率

---
- 最大下跌
$$
MaxFall = min(Rp_1,Rp_2,\ldots Rp_n, 0)
$$



- 最大回撤：累计净值(分红再投)

$$
MaxDrawdown = max(max(
    \frac{CNAV_i - CNAV_j}{CNAV_i}
),0)

$$

- 胜率

$$
WinRatio= \frac{count(Rp_t - Rb_t)}{N}
$$

- 盈亏比
$$
GainLossRatio_t = -\frac{
    \sum\limits_{t = 1}^{T}{Rp_t},(Rp_t>0)
}{
    \sum\limits_{t = 1}^{T}{Rp_t},(Rp_t<0)
}
$$

---

- $\sigma$:标准差(Standard Deviation)
$$

\sigma_t = \sqrt{
    \dfrac{
        \sum\limits_{t = 1}^{T}{(Rp_t - \bar{R}p_t)^2
    }}{T - 1}
}

$$

- $\beta$:系统风险

$$
\beta = \frac{
    \bigg\lgroup \sum\limits_{t=1}^{T}{(Rb_t \cdot Rp_t)} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t} \bigg\rgroup
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t} \bigg\rgroup
}
{
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t^2} \bigg\rgroup
     - \dfrac{1}{T} 
    \bigg\lgroup \sum\limits_{t = 1}^{T}{Rp_t} \bigg\rgroup^2
}
$$

- $\alpha$:超额收益

$$
\alpha_t = \bar{R}p_t - \beta_t \cdot \bar{R}b_t
$$

---

- $R^2$:拟合优度(Goodness of Fit)
$$

R^2 = \dfrac{
    \Bigg\lbrace 
    \bigg\lgroup \sum\limits_{t=1}^{T}{(Rb_t \cdot Rp_t)} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t} \bigg\rgroup
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t} \bigg\rgroup
    \Bigg\rbrace^2
}{
    \Bigg\lbrace
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t^2} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rb_t} \bigg\rgroup^2
    \Bigg\rbrace
    \Bigg\lbrace
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t^2} \bigg\rgroup
     - \dfrac{1}{T}
    \bigg\lgroup \sum\limits_{t=1}^{T}{Rp_t} \bigg\rgroup^2
    \Bigg\rbrace
}
$$


- $Skewness$:偏度

$$
Skewness = \dfrac{T}{(T - 1) \cdot (T - 2)}
\Bigg\lbrace
\dfrac{1}{\sigma_t^3}
\sum\limits_{t=1}^{T}{(Rp_t - \bar{R}p_t)^3}
\Bigg\rbrace
$$


- $Kurtosis$:峰度
$$
Kurtosis = \dfrac{
    T \cdot (T + 1) \cdot 
    \Bigg\lbrace
    \dfrac{1}{\sigma_t^4} \cdot
    \sum\limits_{t=1}^{T}{(Rp_t - \bar{R}p_t)^4}
    \Bigg\rbrace
}{
    (T - 1) \cdot (T - 2) \cdot (T - 3)
}
 - \dfrac{
    3 \cdot (T - 1)^2
 }{
    (T - 2) \cdot (T - 3)
 }

$$

- $M^2$:
$$
M^2 = Rf + \dfrac{\bar{R}p - Rf}{\sigma_p} \cdot \sigma_m

$$
---
- $Sharpe$:夏普比率
$$
Sharpe
 = \dfrac{\dfrac{1}{T} \cdot 
    \sum\limits_{t=1}^{T}{(Rp_t - Rf_t)}
}{\sigma_p}
 = \dfrac{ \bar{R}p - \bar{R}f }{\sigma_p}
$$


- $Treynor$:特雷诺比率
$$
Treynor = \dfrac{Ra - Rf}{\beta}

$$



- $Jensen$:詹森指数（阿尔法系数
    - Jensen Alpha

$$
Jensen = \bar{R}p - Rf - \beta \cdot (\bar{R}b - Rf)

$$




- $Calmar$:卡玛比率
$$
Calmar = \dfrac{Ra}{MaxDrawdown}

$$

---



- SMDD(Smoothed Multivariate Discrete Distributions)
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


- 下行偏差
$$

DD(\tau) = \sqrt{LPM_2(\tau)}

$$

---


- $Omega$:欧米伽比率
$$
Omega = \dfrac{Ra - Rf}{LPM_1 \times 12} + 1

$$


- $Kappa$:卡帕比率
$$
Kappa = \dfrac{Ra - Rf}{\sqrt[3]{LPM_3 \times 12}}

$$





- $Kappa$:卡帕比率
$$
Kappa = \dfrac{Ra - Rf}{\sqrt[3]{LPM_3 \times 12}}

$$





# 

- 跟踪误差
$$
\sigma(Rp - Rb)

$$


- $IR$(Information Ratio):信息比率
$$
IR = \dfrac{1}{T} \cdot \dfrac{
    \sum\limits_{t = 1}^{T}{(Rp_t - Rb_t)}
}{\sigma(Rp - Rb)}

$$

- 下行(Downside)风险(标准差)
$$
\sigma_{d,t} = \sqrt{\frac{\sum\limits_{t = 1}^{T}{min(Rp_t - Rf_t, 0) ^ 2}}{T - 1}}

$$




- $Sortino$:索提诺比率
$$
Sortino Ratio = \frac{
    \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}{(Rp_t - Rf_t)}
}{\sigma_{d,t}}

$$


- $Sortino_{MAR}$:索提诺比率(MAR)
- MAR(Minumum Acceptable Return):最小可接受收益率
$$
Sortino_{MAR} = \frac{
    \dfrac{1}{T}
    \sum\limits_{t = 1}^{T}{(Rp_t - min(Rp_1,Rp_2,\ldots,Rp_t))}
}{\sigma_{d,t}}

$$


--- 
## 风格指标
- $UCR$(Up Capture Return):上行捕获收益率
$$
UCR = 
\Bigg\lgroup
\prod\limits_{t = 1}^{K}{1 + Rp_t}
\Bigg\rgroup ^{1 / \sum\limits_{t = 1}^{T}{count(1)}}
 - 1

\newline
Rb_t \geq 0
$$


- $Up Capture Ratio$:上行捕获率
$$
Up Capture Ratio = \dfrac{UCRp}{UCRb}
$$

- $DCR$(Down Capture Return):下行捕获收益率
$$
DCR = 
\Bigg\lgroup 
\prod\limits_{t = 1}^{K}{1 + Rp_t}
\Bigg\rgroup^{1 / \sum\limits_{t = 1}^{T}{count(1)}}
 - 1

\newline
Rb_t < 0
$$

- $Down Capture Ratio$:下行捕获率
$$
Down Capture Ratio = \dfrac{DCRp}{DCRb}

$$


