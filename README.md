# Ito-process-for-stock-price
This is a simple demo to try to re-create what I've from yesterday's Derivatives Pricing lecture.
## Theory
First, we assume stock price follows Markov process, which implies future movement follows some certain distribution and does not depend on how we get to current status (historical data).

E.g., Suppose the price of Stock A is $40 and standard deviation is 10, its movement follows a Normal Distribution, then 1 year later its price shall follow N(40, 100)

Then we introduces another thing called Wiener process. A variable Z follows a Wiener process if 

1. During Δt, ΔZ = ε* (Δt)^0.5 = Φ(0, Δt), where ε~N(0,1)
2. Z follows a Markow process (any 2 time intervals are independent)

This will give us:

1. Mean of [Z(T)-Z(0)]=0
2. 

