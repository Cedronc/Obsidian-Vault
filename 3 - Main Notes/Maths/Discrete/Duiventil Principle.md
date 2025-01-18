- [i] Status: 
- [i] Back links: 
___
# [Bewijs uit het Ongerijmde](https://nl.wikipedia.org/wiki/Bewijs_uit_het_ongerijmde)
Stelling *n* *identieke objecten* verdeelt over *d dozen* met *n > d* dan:
    minstens een doos met twee objecten.

Veronderstel van niet: 
    Dan heeft elke *d MAX een n*. Zij *m lege dozen (geen objecten erin)*.
    Dus totaal van d - m dozen met EXACT een object.
    $$n = d - m ≤ d < n$$
    Dat is een **tegenspraak** van n > d waardoor deze stelling bewezen is.

Een andere vorm van het principe:

**$nm + 1$ objecten** **verdeeld** worden in **$m$ verzamelingen** dan is er **EEN verzameling met n + 1 objecten**.

## Gevolgen
In de eerste 20 elementen van de rij 9, 99, 999, ... zit minstens een veelvoud van 20.
Bewijs:
    De rij wordt genoteerd als $a_1, a_2, a_3, ..., a_{20}$. 
    Voor 2 getallen **(a & b)** van de rij kan de quotient q en rest r bepaald worden zodat:
    a = qb + r met $0 ≤ r < b$. 
    -
    Voor elk getal geldt dan: $\forall i \in \{1...20\}$ kan de $q_i \;$ en $\; r_i$ zodat 
    a = $q_i \cdot 20 + r_i$. Als we dan veronderstellen uit het ongerijmde dat er GEEN $r_i$ = 0 dan hebben we het tegendeel bewezen dat er geen element uit de rij deelbaar is door 20. 
    -
    **Duiventil** leert ons dat er minstens twee resten hetzelfde zijn dus:
    $$\exists i \not= j \in \{1...20\} \;\; met \; r_i = r_j  $$
    Een aanname die we kunnen doen is $a_i > a_j$ zonder de vorige algemeenheid te schaden. 
    Het verschil tussen $a_i \; en\;  a_j$: 
    ![[Pasted image 20241023160827.png]]
    Anderzijds is
    $$a_i - a_j = (20\cdot q_i + r_i) - (20\cdot q_j + r_j)  = 20(q_i - q_j) + 0,$$
    Aangezien $r_i$ = $r_j$ is dus $a_{i-j} \cdot 10^j$ een veelvoud van 20 en dus is het bewijs uit het ongerijmde bewezen omdat er wel een $a$ bestaat die een veelvoud is van 20 met $r=0$.

## Veralgemeende Duiventil
100 mensen waar minstens 9 hun verjaardag vieren in dezelfde maand. Stel nu dat er geen 9 hun verjaardag in dezelfde maand hebben hoeveel mensen zijn er dan?
$$8 \;\cdot\; 12 = 96$$
Hoogstens 96 = grootse geheel getal.
![[Pasted image 20241023162439.png]]


# References
- https://canvas.vub.be/courses/39510/files/folder/Slides?preview=2172891