# 债券
> bond
- 固定收益证券(fixed-income securities)
- 债权凭证
- 债权债务关系

能够提供固定数额或根据固定公式计算出的现金流

- 债券承销商(bond dealers)：金融中介作用
- 债务人/债券发行人(bond issuers)：中央政府、地方政府、金融机构和企业
- 债权人/债券投资人(bond inverstors)：持有者，购买者



## 基本要素
- 发行人
- 起息日
- 到期日
- 期限
- 票面利息


- 息票品种：利息支付方式、
- 计息基准
- 付息频率
- 利率类型：固定利率，浮动利率


## 交易市场
- 柜台市场
### 交易所市场
- 交易类型
    - 回购交易：竞价撮合
        - 质押式回购：
        - 报价回购
        - 协议回购
        - 买断式回购（基本不存在）
    - 现券交易
    - 远期交易
    - 借贷交易


### 银行间市场
- 中债登
- 上清所

- 交易类型
    - 回购交易
        - 质押式回购
        - 买断式回购
    - 现券交易
    - 远期交易
    - 借贷交易

- 债券一级市场：通过招标进行投标
- 债券二级市场：交易原则是竞价交易和全价结算

-

---

- 面值
- 本金
- 利息
    - 利率
    - 利差

---

信用评级分为主体评级和债券评级
定性与定量分析相结合

贴现
票据

贷款市场报价利率LPR(Loan Prime Rate)
期权调整价差OAS(Option Adjusted Spread)：相对无风险利率的价差



### 分类
---

- 发行主体
    - 政府债券：国债和地方政府债
    - 金融债券
    - 公司债券

- 偿还期限
    - 短期债券
    - 中期债券
    - 长期债券

- 计息方式
    - 固定利率债券(fixed-rate bond)
    - 浮动利率债券(floating-rate bond)
        - 浮动利率 = 基准利率 + 利差
        - 浮动利率上限(顶cap)，下限(底floor)
    - 零息债券(zero-coupon bond)
- 基准利率：按金融市场分
    - 国际：上海银行间同业拆借利率Shibor(ShangHai InterBank Offered Rate)
    - 中国：伦敦银行间同业拆借利率Libor(London InterBank Offered Rate)

- 七天回购利率
    - ROO7：银行间市场参与者以利率债为质押的7天期回购利率，其回购标的为债券。
    - DR007：存款类机构间利率债质押的7天回购利率

- 将利差用基点(basis points)表示，1bp(bps) = 0.01%。

- 基点价值PVBP(price value of a basis point)
- 基点美元值DV01(dollar value of all 01)


- 付息方式
    - 票息债券
    - 贴现债券

- 嵌入条款(provision)
    - 可赎回债券(callable bond)：发行人在债券到期前按赎回价格(call price)从持有者买回债券
    - 可回售债券(puttable bond)：持有者在债券到期前按回售价格(put price)将债券回售给发行人
    - 可转换债券(convertable bond)：混合证券(hybrid security)
    - 通货膨胀联结债券(inflation-linked bond)
    - 结构化债券
    - 资产证券化(asset securitization)：以其他债券或贷款组成的资产池为支持，构成新的债券产品形式
        - 住房抵押贷款支持债券MBS(mortgage-backed securities)
        - 资产支持债券ABS(asset-backed securities)

- 信用级别
    - 有保证债券(secured bond)
        - 第一抵押权债券
        - 有限留置权债券
        - 抵押债券，质押债券，担保债券
    - 无保证债券(unsecured bond)：信用债券(debenture)

---

### 债券风险
- 信用风险(credit risk)(违约风险default risk)：信用评级机构
    - 投资级债券和投机级债券
- 利率风险(interst rate risk)
    - 债券的价值与利率呈反向变动关系
- 通货膨胀风险(inflation risk)
    - 通货膨胀使得物价上涨，债券持有者获得的利息和本金的购买力下降
- 流动性风险(liquidity risk)
    - 债券变现能力
- 再投资风险(reinvestment risk)
    - 市场利率下行，以低于原债券到期收益率的利率水平再投资
- 提前赎回风险(prepayment risk)(回购风险call risk)
    - 会导致再投资风险



### 债券收益率
- 当期收益率(current yield)

$$
I = \dfrac{C}{P}
$$
- $I$:当期收益率
- $C$:年息票利息
- $P$:债券市场价格

- 到期收益率(yield to maturity,YTM)

$$
P = \sum\limits_{t = 1}^{T}{\dfrac{C}{(y + 1)^t}}
+ M \times \bigg(\dfrac{1}{y + 1}\bigg)^T

$$


- $y$:到期收益率
- $M$:债券面值

### 利率期限结构
> term structure of interest rate

- 收益率曲线(yield curve)：以到期期限为横坐标，收益率为纵坐标


#### 信用利差
> credit spread




---
## 久期(duration)
> 麦考利(macaulay)在1938年提出

- 久期：债券本息所有现金流的加权平均到期时间
- 用久期来衡量价格对收益率变动的敏感程度
- 在给定收益率变化下，债券价格的变化与修正久期的变化方向是相反的


- $T$:付息周期数
- 对于半年付息一次，且无内含选择权的固定利率债券

- $P$:债券价格
$$
P = \sum\limits_{t=1}^{T}{
    \dfrac{C}{(1 + y) ^ t}
} + \dfrac{M}{(1 + y) ^ t}
$$

-


- $D_{mac}$:麦考利久期
$$
D_{mac} = \dfrac{
    \sum\limits_{t = 1}^{T}{
        \dfrac{t \times C}{(y + 1)^t}
    } + \dfrac{T \times M}{(y + 1)^T}
}{P}

$$
- $D_{mod}$：修正久期，债券价格对收益率的一阶导数

$$
D_{mod} = \dfrac{D_{mac}}{y + 1}

$$

## 凸性(convexity)

- 在其他特性相同时，投资者应当选择凸性更高的债券进行投资
- 凸性：债券价格对收益率的二阶导数

#### 免疫策略(immunization strategies)

- 所得免疫(income immunization)
- 价格免疫(price immunization)
-



