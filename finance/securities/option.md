# 期权
> option



- 行权(exercise)

---
## 要素

- 标的资产
- 买方
- 卖方
- 执行价格
- 期权费
- 通知日


---
## 分类
- 买方是否可以提前执行期权（与地理位置无关）
    - 欧式期权：只能在期权到期日执行期权，场外交易较多
    - 美式期权：可以提前执行期权，推迟执行期权失效作废，在交易所较多
- 预测标的资产的未来价格会上涨或下跌
    - 看涨期权，又称买入期权
        - call option
    - 看跌期货，又称卖出期权
        - put option
- 执行价格和标的资产的市场价格的关系
    - 实值期权(in-the-money option)：买方具有正的现金流
    - 平价期权(at-the-money option)买方的现金流为零
    - 虚值期权(out-of-the-money option)：买方具有负的现金流


- 期权多头：支付期权费后，只有权利，没有义务
- 期权空头：收取期权费后，只有义务，没有权利

---
## 价值

- 内在价值
- 时间价值






---
- 股票期权
    - 美式期权
    - 一份股票期权包含100股
    - 执行价格和期权费都是以1股股票为单位


- 股指期权
    - 现金结算
- 期货期权
    - 期货合约到期日紧随着对应的期货期权到期日
- 利率期权
    - 场内交易
    - 场外交易
- 信用期权
- 货币期权
- 互换期权
- 50ETF期权

---

## 期权定价模型
- BSM(Black-Scholes-Merton)模型
- 仅适用于欧式期权
- 以股票为标的的看涨期权
    - 价格C
    - 股票价格S

- 股票价格符合伊藤过程
$$
\dfrac{{\rm{d}}S}{{\rm{d}}S} = \mu \rm{d}t + \sigma \rm{d}z
$$

- 根据伊藤引理得到随机微分方程
$$
\rm{d}C = (\dfrac{\partial C}{\partial S} \mu S + \dfrac{\partial C}{\partial t}  + \dfrac{1}{2} \dfrac{\partial^2 C}{\partial S^2} \sigma^2 S^2)\rm{d}t + \dfrac{\partial C}{\partial S} \sigma S \rm{d}z
$$
- BSM微分方程
    - 无风险组合的波动率$\sigma = 0$, 期望收益率$\mu$ = 无风险收益率$r$
$$
r C = (\dfrac{\partial C}{\partial S} r S + \dfrac{\partial C}{\partial t}  + \dfrac{1}{2} \dfrac{\partial^2 C}{\partial S^2} \sigma^2 S^2)\rm{d}t + \dfrac{\partial C}{\partial S} \sigma S \rm{d}z
$$

- 风险中性定价

- BSM定价公式
    - 执行价格K
    - 累积标准正态分布的概率密度$N(d_t)$
$$
C = S_0 N(d_1) - K e^{-rT} N(d2)

$$