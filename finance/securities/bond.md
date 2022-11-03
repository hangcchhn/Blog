# bond
> 债券（bond）、固定收益证券（fixed-income securities）、债权凭证


能够提供固定数额或根据固定公式计算出的现金流

- 债券承销商（bond dealers）：金融中介作用
- 债券发行人（bond issuers）
    中央政府、地方政府、金融机构和企业
- 债券投资人（bond inverstors）


### 分类
---

- 发行主体
    - 政府债券
    - 金融债券
    - 公司债券

- 偿还期限
    - 短期债券
    - 中期债券
    - 长期债券

- 计息方式
    - 固定利率债券（fixed-rate bond）
    - 浮动利率债券（floating-rate bond）
    浮动利率 = 基准利率 + 利差
    国际惯例将利差用基点（basis point）表示，1bps = 0.01%。
    浮动利率上限（顶cap），下限（底floor）
    - 零息债券（zero-coupon bond）

- 付息方式
    - 票息债券
    - 贴现债券

- 潜入条款（provision）
    - 可赎回条款债券（callable bond）
    - 可回售条款债券（puttable bond）
    - 可转换条款债券（convertable bond）
    混合债券（hybrid security ）
    - 通货膨胀联结债券
    - 结构化债券
    资产证券化（asset securitization）
        - 住房抵押贷款支持债券（mortgage-backed securities，MBS）
        - 资产支持债券（asset-backed securities，ABS）

债券风险
- 信用风险（credit risk）（违约风险default risk）
- 利率风险（interst rate risk）
- 通货膨胀风险（inflation risk）
- 流动性风险（liquidity risk）
- 再投资风险（reinvestment risk）
- 提前赎回风险（prepayment risk）（回购风险call risk）



### 债券收益率
- 当期收益率（current yield）

$$
I = \dfrac{C}{P}
$$
- $I$:当期收益率
- $C$:年息票利息
- $P$:债券市场价格

- 到期收益率（yield to maturity,YTM）

$$
P = \sum\limits_{t = 1}^{T}{\dfrac{C}{(y + 1)^t}}
+ M \times \bigg(\dfrac{1}{y + 1}\bigg)^T

$$


- $y$:到期收益率
- $M$:债券市场价格

### 利率期限结构
> term structure of interest rate

- 收益率曲线（yield curve）


#### 信用利差
> credit spread




### 债券的久期和凸性

#### 久期（duration）
> 麦考利（macaulay）
- $P$:债券价格
- $T$:付息周期数
    对于半年付息一次，且无内含选择权的固定利率债券

$$
P = \sum\limits_{t=1}^{T}{
    \dfrac{C}{(1 + y) ^ t}
} + \dfrac{M}{(1 + y) ^ t}
$$


- $D_{mac}$:麦考利久期
$$
D_{mac} = \dfrac{
    \sum\limits_{t = 1}^{T}{
        \dfrac{t \times C}{(y + 1)^t}
    } + \dfrac{T \times M}{(y + 1)^T}
}{P}

$$
- $D_{mod}$:修正久期

$$
D_{mod} = \dfrac{D_{mac}}{y + 1}

$$

#### 凸性（convexity）

在其他特性相同时，投资者应当选择凸性更高的债券进行投资


#### 免疫策略（immunization strategies）

- 所得免疫（income immunization）
- 价格免疫（price immunization）
-

