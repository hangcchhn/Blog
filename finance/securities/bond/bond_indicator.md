# 债券指标


## 基本要素


- 发行人issuer
- 发行日issue date
- 到期日maturity date
- 期限Tenor
    - 剩余期限


- 起息日
- 付息日
    - 下一付息日
- 行权日
    - 下一行权日

- 付息频率
    - 年度
    - 半年
    - 季度
    - 月度
    - 周度


- 利息方式
    - 附息

- 计息方式
    - 单利
    - 复利

- 计息基准
    - ACT/ACT
    - ACT/365
    - ACT/360
    - 30/360

- 利率类型
    - 固定利率
    - 浮动利率
    - 累进利率


- 浮动利率 = 基准利率 + 利差
- 基准利率：按金融市场分
    - 国际：上海银行间同业拆借利率Shibor(ShangHai InterBank Offered Rate)
    - 中国：伦敦银行间同业拆借利率Libor(London InterBank Offered Rate)
---

- 票面利率(Coupon Rate)
    - 票息率
- 票面利息


- 本金
- 利息，票息
- 利率(Interest Rate)

- 利差Spread：利率变化的单位是基点(basis point)，1bp=0.01%
- 价差

$$

利息 = 本金 \times 利率 \times 期限

$$






---
- 报价quote
    - 到期收益率
    - 全价
    - 净价

- Bid：买方报价
- Ofr：卖方报价

- 即期
- 到期

---
## 债券价格

- 票面价值，简称面值
    - 每百元面值的

- 发行价格

- 交易数量
- 交易面额 = 交易数量 * 票面价值
- 交易金额

- 结算金额

- 净价(Clean Price)
- 全价(Dirty Price,Gross Price)
    - 结算价格
    - 成交价格

- 交易全价 = 交易净价 + 应计利息

- 应计利息随天数问道增长，呈线性关系

- 净价与面值的关系
    - 溢价：净价 > 面值
    - 平价：净价 = 面值
    - 折价：净价 < 面值

- 现值PV(Present Value)

- 现金流(Cash Flow)
- FV(Future Value)






## 应计利息
> Accrued Interest
- 起息日或上一周期付息日到结算日的利息收入


- 零息债券：债券发行起息日
- 附息债券：本付息期起息日
- 贴现债券：票面利率为0，应计利息为0


---

- 投资人应收到而发行人尚未支付的累计票息收入的计提。

- 实际天数ACT：算头不算尾

### 贴现债券
- 发行价格与票面价值之间的差值


$$
AI = \dfrac{票面价值 - 发行价格}{T} \times t
$$





- $t$：起息日至结算日的实际天数
- $T$：起息日至到期兑付日的实际天数



### 分期付息：票息是定期支付的
- $t$：起息日或上一付息日至结算日的实际天数
- $TS$：当前付息周期的实际天数
$$

AI = \dfrac{C}{f} \times \dfrac{t}{TS}
$$
- $C$：年息票利息 = 面值 * 票面利率
- $f$：年付息频率 = 365 / $TS$

$$

应计利息 = 票面利率 \div 365 \times t \times 面值

$$
---
## 债券收益率




- 当期收益率(current yield)

$$
I = \dfrac{C}{P}
$$
- $I$：当期收益率


### 到期收益率(yield to maturity,YTM)

- 未来现金流的现值 = 当前市价的贴现率

- $P$：价格
- $M$：面值

$$
P = \sum\limits_{t = 1}^{T}{\dfrac{C}{(y + 1)^t}}
+ M \times \bigg(\dfrac{1}{y + 1}\bigg)^T

$$


- $C$：票面年利率
- $y$：到期收益率
- $f$：年付息频率



---
- 当期收益率的变动预示到期收益率的变动是同方向的

- 到期收益率与票面利率



- 债券收益率：到期收益率


---

- 行权收益率：含权债
    - exercise yield


---
## 债券收益率曲线

- 收益率曲线(yield curve)：以期限为横坐标，收益率为纵坐标
    - 上升收益率曲线，正向收益率曲线
    - 反转收益率曲线
    - 水平收益率曲线
    - 拱形收益率曲线


- 到期收益率曲线
- 即期收益率曲线
- 远期收益率曲线


- 利率期限结构(term structure of interest rate)
    - 各个不同期限债券的收益率和到期期限之间的关系

---
## 久期(duration)
> 麦考利(macaulay)在1938年提出
- 久期：收回所有现金流的平均时间，加权期限


- 对于半年付息一次，且无内含选择权的固定利率债券
- $N$：付息周期数

- $P$：价格
- $M$：面值
- $C$：现金流（本金和利息）
- $y$：收益率


$$
P = \sum\limits_{n = 1}^{N}{
    \dfrac{C}{(1 + y) ^ n}
} + \dfrac{M}{(1 + y) ^ n}
$$



- $D_{mac}$：麦考利久期
$$
\dfrac{{\rm{d}}P}{{\rm{d}}y} = - \dfrac{1}{1 + y}
\Bigg[
    \sum\limits_{n = 1}^{N}{
        \dfrac{n  C}{(1 + y)^n}
    } + \dfrac{N  M}{(1 + y)^N}
\Bigg]
$$
$$
D_{mac} = \dfrac{1}{P}
\Bigg[
    \sum\limits_{n = 1}^{N}{
        \dfrac{n  C}{(1 + y)^n}
    } + \dfrac{N  M}{(1 + y)^N}
\Bigg]
$$


$$

$$
- $D_{mod}$：修正久期

$$
\dfrac{{\rm{d}}P}{{\rm{d}}y} \dfrac{1}{P} = - \dfrac{D_{mac}}{y + 1}
$$
$$
D_{mod} = \dfrac{D_{mac}}{y + 1}
$$

- $D$：有效久期
    - $\Delta{y} = 1bp$
$$
D = \dfrac{1}{2 \Delta{y}} \dfrac{P_{-1} - P_{+1}}{P_{0}}
$$

---
- 收益率变动一个基点，债券价格变动的绝对值
- 收益率上升和下降一个基点导致价格的变化是不对称的，收益率变动很小，不对称可以忽略
- 在给定收益率变化下，债券价格的变化与修正久期的变化方向是相反的

## 凸性(convexity)


- 债券价格与是到期收益率的多项式函数
$$
P = f(y)


$$
- 根据泰勒定理可得
$$

f(y + \Delta{y}) = f(y) + f'(y) \Delta{y} + \dfrac{1}{2} f''(y) (\Delta{y})^2
 + o\Big( (\Delta{y})^3 \Big)

$$


$$

\dfrac{\Delta{P}}{P} = \dfrac{f(y + \Delta{y}) - f(y)}{f(y)}
= \dfrac{f'(y)}{f(y)} \Delta{y} + \dfrac{1}{2} \dfrac{f''(y)}{f(y)} (\Delta{y})^2
 + o\Big( (\Delta{y})^3 \Big)

$$
- 凸性$D$：
$$
D = \dfrac{f'(y)}{f(y)}
$$
- 久期$C$：
$$
C = \dfrac{f''(y)}{f(y)}
$$

$$
\dfrac{\Delta{P}}{P} \approx - D \Delta{y} + \dfrac{1}{2} C (\Delta{y})^2
$$


- 在其他特性相同时，投资者应当选择凸性更高的债券进行投资


---
## 基点价值

- PVBP(price value of a basis point)
    - 基点价值：每百元面值的债券，当收益率变动1bp，债券价格变动的绝对值
- DV01(dollar value of an 01)
    - 基点美元值



$$
PVBP = P \Big[ - D \cdot 0.01\% + \dfrac{1}{2} C \cdot (0.01\%)^2 \Big]
$$

---


## 信用利差
> credit spread

- 信用评级不同，其他条件全部相同，收益率的差额

- 风险溢价：预期到期收益率，与相同期限和票面利率的无风险债券的到期收益率之间的差额


### 特点
- 对于非政府部门债券的信用评级固定时，信用利差与期限正相关
- 信用利差与经济（商业）周期负相关
    - 安全资产转移现象(Flight to Quality)

- 信用利差的变化一般发生在经济周期变换之前
    - 信用利差可作为预测经济周期活动的指标


---
- 盈亏(Profit and Loss)
    - 浮动盈亏，又称价格盈亏
    - 实现盈亏
    - 未实现盈亏






