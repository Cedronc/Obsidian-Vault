- [i] Status: 
- [i] Back links: 
___
## Ordening of Nummering
**\[n] := {1, 2, . . . , n}.** Meer algemeen is \[1..n] = \[n], maar ook \[0..n] = {0, 1, . . . , n} en \[−k..l] = {−k, −k + 1, . . . , l − 1, l}.

## Definitie
Een verzameling A heeft n ∈ N elementen indien er een bijectie bestaat van \[n] naar A. We noteren |A| = n. Zulk een bijectie bepaalt een ordening of nummering van A.

Notatie.
    Als |A| = n en f : \[n] → A een nummering is, dan schrijven we dikwijls $a_i$ i.p.v. f (i).

Stelling
    Voor elke eindigende verzameling X geldt:
    $$|P(X) = 2^{|X|}$$
    Waar P de machtsverzameling is en X een verzameling.
    Vb. X = {a, b}
    P(X) = {$\emptyset$, (a), (b), (a, b)}

# Somprincipe
**Stelling**
    $A_1, A_2, ... A_k$ waar deze verzamelingen disjuncte *(geen zelfde elementen)* eindige verzamelingen zijn. $$|A_1 \cup A_2 \cup ... \cup A_k | = |A_1| + |A_2| + ... + |A_k | $$
    Bewijs: 
    We hebben bijectie $f_i: [n_i] \to A_i$ voor $i \in [k]$ *(Deze lijn betekend dat elke element in de nummering van $[n_i]$ EEN keer gemapped wordt in de verzameling $A_i$).* Nu
    ![[Pasted image 20241023165017.png]]

# Dubbeltelling
**Stelling**
    A & B twee (eindige) verzamelingen. Is $S \subset A × B$. (**'k'** staat voor het aantal paren in S die bij 'a' horen, en **'r**' het aantal paren waar b vast staat).
    Stel $$a \in A: k_a := |\{(a, b) | b \in B \; en \; (a, b) \in S\}|$$
    en voor elke b $\in B$: $r_b := |/{(a,b) | a \in A \; en \; (a, b) \in S/}|$. Dan geldt: $$∑_{a∈A}​k_a​=∣S∣=∑_{b∈B}​r_b​$$
    Waar $k_a$ en $r_b$ beiden kunnen dienen om de lengte van S te kunnen berekenen.

**Bewijs:**
    Stel $K_a := \{(a, b) | b \in B \; en \; (a, b) \in S\}$, deze verzameling $(K_a)_{a\in A}$ zijn disjunct.
    ![[Pasted image 20241023172339.png|300]] 
    Analoog met $R_b$ voor de rijen.

**Met gevolg**:
    Als alle $k_a$ gelijk zijn aan een constante *k* en alle $r_b$ gelijk zijn aan *r*, dan geldt $k|A| = r|B|$.

## Voorbeeld 
![[Pasted image 20241023172932.png]]


# References
- 