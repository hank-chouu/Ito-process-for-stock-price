# Ito-process-for-stock-price
This is a simple demo to try to re-create what I've from yesterday's Derivatives Pricing lecture.
## Theory
### Markov Process
First, we assume stock price follows Markov process, which implies future movement follows some certain distribution and does not depend on how we get to current status (historical data).

E.g., suppose the price of Stock A is $40 ( S(0)=40 )and standard deviation is 10, its movement follows a Normal Distribution, then 1 year later its price shall follow N(40, 100)

### Wiener Process

A variable Z follows a Wiener process if 

1. During Δt, ΔZ = ε* (Δt)^0.5 = Φ(0, Δt), where ε~N(0,1)
2. Z follows a Markow process (any 2 time intervals are independent)

This will give us:

1. Mean of [Z(T)-Z(0)]=0 (main trend in change of stock price unchanged)
2. S.D. of [Z(T)-Z(0)]=1* T(s.d. and variation in change of stock price increase as time increase)

### General Wiener Process

As for a General Wiener process, mean rate and variation rate can be set to any constant, i.e., 

Δx=a* Δt + b* ΔZ = a* Δt + b* ε* (Δt)^0.5, a: drift rate, b: volatility, ε~N(0,1)

This shall give us:

1. Mean of Δx=a* Δt
2. S.D. of Δx=b* (Δt)^0.5

E.g., suppose one year later stock A will grow to $48 ( S(1) = 48 ), then [S(1)-S(0)]~N(8, 100). We may assume ds = 8dt+10dz.

### Ito Process

In an Ito process, the drift rate and the variance are **functions** of time: dx=a(x, t)dt + b(x, t)dZ. 

This shall give us the equation for change in stock price, which is known as Geometric Brownian motion:

dS = μ* S* dt + σ* S* dZ, where S is stock price, μ is the expected return rate and σ is the volatility.

In discrete time, this is equivalent to ΔS=μ* S* Δt + σ* S* ε* (Δt)^0.5, ε~N(0,1)

## Visualize

Above explaination give us the tool to simulate changes in stock price. 

By randomly generating ε, we can get the **random walk** of the stock price.

![img](https://github.com/hank-chouu/Ito-process-for-stock-price/blob/main/Rplot01.png?raw=true)

In this example, the initial price = $100, mean rate = 0.3, volatility = 0.15. 

Each simulation end up with different path.
