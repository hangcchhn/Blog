# 衍生工具
> derivatives
- 衍生品

---
- 基础资产：股票，债券，货币，商品
- 衍生工具：远期，期货，期权，互换

- 合约标的资产(underlying)

- 合约(contract)

### 交易合约
- 多头=买入(long)：
- 空头=卖出(short)：
- 多空(both)

### 合约标的资产
---
- 到期日(maturity date)
- 交易单位/合约规模(contract size)
- 交割价格(delivery price)
- 结算：到期日或到期日之前结算
    - 实物交割
    - 现金结算

---
- 交易对手风险(counterparty risk)
- 履约保函(performance bond)：第三方开具的违约时保证偿付的保单


### 特性
---
- 跨期性
- 杠杆性
- 联动性
- 不确定性或高风险性



---
# 分类

### 按合约特点分类
- 远期合约(forward contract)
- 期货合约(futures contract)
- 期权合约(options contract)
    - 执行价格(exercise price)：双方约定的买卖价格
- 互换合约(swap contract)：
    - 利率互换条约
    - 货币互换条约
- 结构化金融衍生工具

### 按产品形态分类

- 独立衍生工具
    - 期权合约，期货合约，互换合约
- 嵌入式衍生工具

### 按合约标的资产的种类分类

- 货币衍生工具
    - 远期外汇合约
    - 货币互换合约
- 利率衍生工具
    - 远期利率合约
    - 利率互换合约
- 股权类产品的衍生工具
- 信用衍生工具
    - 信用互换合约
    - 信用联结票据
- 商品衍生工具
- 其他衍生工具


---

## 远期合约

- 实物交割
- 非标准化合约
- 违约风险较高
- 场外交易

DF/NDF(本金交割的远期/本金不可交割的远期)

---
- 远期利率协议FRA(Forward Rate Agreement)
- 远期外汇合约
    - 远期外汇协议FXA：
        - 远期汇率与即期汇率的差额用平价、升水和贴水来表示
    - 远期汇率协议ERA
        - 实物交割
        - 现金结算


- 远期股票合约
---
- 到期日
- 交割地点
- 交割价格
- 交易单位/合约规模(contract size)
- 合约标的资产质量


### 远期合约定价

- $r$：无风险利率
- $T$：远期合约到期日

$$
F_T = F_0 - S_0 \times \exp{\left( r * T \right)}

\\

S_0e^{rT}

$$
- $F_T$：t=T时远期价格
- $F_0$：t=0时交割价格
- $S$：现货价格



## 期货合约
- [期货](future.md)


### 期权合约

- [期权](option.md)

远期合约和期权合约的买卖双方的盈利和亏损的机会均等

期权合约不均等：买方需要事先支付一笔费用(期权费)给卖方


---
## 互换合约



### 利率互换

- 不同利率计算方式支付同种币种的等值本金所产生的的利息
- 净额支付：不交换本金，只支付本金所产生的利息净额

- 两种形式
    - 票息互换：固定利率对浮动利率的互换
    - 基础互换：以不同参照利率互换利息支付



### 货币互换

- 不同币种的等值本金所产生的的利息
- 在期初和期末交换本金

- 利率计算方式不同
    - 固定利率对固定利率
    - 固定利率对浮动利率
    - 浮动利率对浮动利率

- 股权互换：股票收益互换，净额支付，轧差计算
- 信用违约互换CDS(Credit Default Swap)

- 互换市场
    - 做市商制度
---




- 衍生证券定价

- 无套利均衡

- 无套利定价

- 复制资产
    - 使用股票和期权合成无风险资产
- 分解资产

- 复制定价
- 风险中性定价
- 状态价格定价

---
## 利率

- 本金A
- 利率r

- 期限T

- 单利
$$
A(1+r)^T
$$
- 复利

$$
A(1+r)^T
$$

- 连续复利

$$
\lim\limits_{n\rightarrow+\infty}{A(1+\dfrac{r_n}{n})}^{nT} = Ae^{rT}


$$


---


