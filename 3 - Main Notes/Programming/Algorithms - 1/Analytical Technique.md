___
**TLDR:** Delivers math function $F_{A}(n)$

# Franse slag
We gooien de coëfficiënten weg want deze zijn niet van belang voor ons. 2n = n
In essentie gaat dit niet veel verschil uitmaken want $2n^{2}$ gaat altijd $10000n$ op een bepaald punt voorbijsteken en veel langer duren.

(Grafiek)
...

# Best-case
This will always choose the most optimistic branch for every `cond` and `if`. 

# Average-case
This is a very hard to calculate case and is mostly not worth the effort, unless worst case is very rare so average case can be more representative.

# Worst-case
Reverse of the best case. Always choose the worst option in every `cond` or `if`.

# Big O, Omega, Theta Notation

## Θ - Theta
TLDR: saying a function is roughly the same size as an another, Search for the upper and lower boundaries.
![[Pasted image 20241224160653.png|300]]
$$\Theta(g(n)) = \{f \mid \exists c_1, c_2 > 0, n_0 \geq 0 : \forall n \geq n_0 : 0 \leq c_1 \cdot g(n) \leq f(n) \leq c_2 \cdot g(n)\}$$ This whole yap is basically Theta of (g) is = 2 constants times another functions time complexion. Not always easily proved and sometimes too precise.

So basically its around the same performance of the other algorithm. 
Example: $$\Theta(z(n)) = \log_{2}(n)$$
## O - Big O
TLDR: equals the upper boundary of an algorithm. Typically the worst case scenario
![[Pasted image 20241224160637.png|300]]

Example the worst case of bubble sort is $n^2$ so $O(n^{2})$ is the analyses of big O representing the worst case scenario. Big O can also represent average or worst case scenario's. 

### Difference Worst-case
[[#Worst-case]] says something about the algorithm being the situation where it takes the longest to execute. Take quicksort as an example the worst case scenario for quicksort is when the elements are already sorted. Making the Big O = $O(n^{2})$. Making Big O the thing that calculates the time complexion and Worst-case describing the scenario. 

## Ω - Omega
TLDR: Mostly used for best case scenario's, equals the lower boundary of an algorithm. 
![[Pasted image 20241224160616.png|300]]
Saying bubble sort is an $\Omega(n)$ algorithm would be right because given any input it will always compute to > n. making the lower boundary correct.

# Rules
A big important one is that the base of logarithms do not count being base 2, 10 or whatever. But we mostly do it with 2. 

Constants do not matter: $O(c) = O(1),\;\; O(f(n)) = O(c.f(n))$

If other procedures are called only the slowest is taken into account.
O(f) = O(max(t1, t2)) = O(t1) | t1 > t2



# Example
![[Pasted image 20241224151257.png]]