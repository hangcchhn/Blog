# valuation
> 估值法




## 一、stock valuation
> 股票估值


### 1.绝对价值法
> 内在价值法
收益贴现模型
按照未来现金流的贴现对公司的内在价值进行评估


#### 1.股利贴现模型
> Discounted Dividend Model,DDM
> 现金股利

---

估值模型
估值分析
股票估值
债券估值

收入资本化法


$$
D = \sum\limits_{t=1}^{T}{
    \dfrac{D_t}{(1 + r) ^ t}
}
$$
- $D$:普通股的内在价值
- $D_t$:普通股第t期支付的股息或红利
- $r$:贴现率（资本化率）



#### 2.自由现金流量贴现模型
> Discounted Cash Flow,DCF




##### 1.权益自由现金流贴现模型
> free cash flow to equity,FCFE
---

FCFE = 净收益 + 折旧 - 资本性支出 - 追加运营资本 - 债务本金偿还 + 新发行债务

$$
EV = \sum\limits_{t=1}^{T}{
    \dfrac{FCFF_t}{(1 + K_e) ^ t}
}
$$

- $FCFE_t$:股权第t期的自由现金流
- $K_e$:股权成本

##### 2.企业自由现金流贴现模型
> free cash flow to firm,FCFF
---
FCFF = EBIT * (1 - 税率) + 折旧 - 资本性支出 - 追加运营资本

- $EBIT$:股息前利润


$$
EV = \sum\limits_{t=1}^{T}{
    \dfrac{FCFF_t}{(1 + WACC) ^ t}
}

$$

- $FCFF_t$:企业第t期的自由现金流
- $WACC$:加权平均资本成本
    - 即债务资本价值与股本价值之和


#### 3.经济附加值模型
> Economic Value Added,EVA

EVA = NOPAT - 资本成本 = (ROIC - WACC) * 实际资本投入


- $NOAPT$:税后经营利润（息前税后利润）
- $ROIC$:资本收益率（投资资本回报率）







### 2.相对价值法

- $P_t$:每股市价


#### 1.市盈率模型(P/E)
---
市盈率(price to earnings ratio) = 收益乘数(earnings multiplier)

$$

市盈率 = \dfrac{每股价格}{每股年化收益} = \dfrac{1}{折现率}

$$

$$

P/E = \dfrac{P_t}{AR_{t + 1}}
$$
- $RA$:每股年化收益


#### 2.市净率模型(P/B)
---

市价/账面价值比率(price/book value,P/B)

$$

市净率 = \dfrac{每股市价}{每股净资产}

$$

$$

P/B = \dfrac{P_t}{BV_{t + 1}}

$$
- $BV_{t + 1}$:每股账面价值的年末估计值



#### 3.市现率模型(P/CF)

---


$$
P/CF = \dfrac{P_t}{CF_{t + 1}}

$$
- $CF_{t + 1}$:公司第t+1期的每股现金流(cash flow)


#### 4.市销率模型(P/S)
---

$$
P/S = \dfrac{P_t}{S_{t + 1}}

$$

- $S_{t + 1}$:公司第t+1期的每股销售额(sale)



#### 5.企业价值倍数
> enterprise multiple,EM

- $EV$:企业价值(enterprise value)
EV = 市值 + (总负债 - 总现金) = 市值 + 净负债

EBITDA = EBIT + 折旧 + 摊销

EBIT = 净销售率 - 营业费用 = 净利润 + 所得税 + 利息

$$
EM = \dfrac{EV}{EBITDA}
$$


## 二、债券估值
> bond valuation

- $V$:内在价值
- $M$:面值
- $r$:年化市场利率

### 1.零息债券估值

$$
V = M \times \dfrac{1}{(r + 1)^t}
$$
- $t$:债券到期时间，单位是年

$$
V = M \times （1 - \dfrac{t}{360} \times r)
$$

- $t$:债券到期时间，单位是天



### 2.固定利率债券估值

$$
V = \sum\limits_{t=1}^{T}{
    \dfrac{C}{(1 + r) ^ t}
} + \dfrac{M}{(1 + r) ^ t}
$$
- $C$:每期要支付的利息



### 3.统一公债估值
$$
V = \lim\limits_{n\rightarrow+\infty}{
    \sum\limits_{t=1}^{T}{
        \dfrac{C}{(1 + r) ^ t}
    }
} = \dfrac{C}{r}
$$
- r > 0
- $-1 < \dfrac{1}{r + 1}| < 1$



---

## 估值方式

- 中证估值：对交易所债券使用中证指数公司提供的价格
- 中债估值：对银行间债券使用中债金融估值中心提供的价格


## 债券估值
- 成本法
    - 买入成本法
    - 摊余成本法
- 市价法
    - 收盘价估值
    - 第三方估值

## 固定收益品种估值

- 公允价值：估值
- 摊余成本：减值