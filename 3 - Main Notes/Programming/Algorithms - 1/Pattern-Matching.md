___
# Prefix & Suffix
Een proper suffix en prefix: 
    Geen leeg iets en niet de string zelf.



# Algoritmes
t: afkorting text
p: afkorting patroon
i-t: counter text

## Brute-Force
Zoals de naam al verklapt checken we gewoon elke character in de tekst een voor een.

Dit algoritme heeft 4 branches.
1. Is het patroon volledig geconsumed.
2. Het huidige character van het patroon komt overeen.
3. Het huidige character van het patroon komt niet overeen
4. De tekst is volledig geconsumed.

### Performance
Worst case: $O(n_{t}\cdot n_p)$


## QuickSearch
Goofy algoritme werkt wel goed.
bestaat uit pre-processing phase en searching phase.

Worst case is het zelfde als brute force.
### Pre-Processing Phase
Maakt een "shift table" deze is wel wat ingewikkeld.

Maakt een vector van $\text{"max-ascii"} - \text{"min-ascii"} + 1$ lang. Deze ascii waardes zijn van het patroon 

Nu wordt het patroon nog eens geloopt en dan voor elk character in het patroon wordt dit in de tabel gezet op de juiste plaats met als resultaat $n_{p} - \text{index}$ met $n_p$ als lengte van patroon. Dus in een patroon van 10 lang kan er 2 keer een a, 1 op plaats 2 de andere op plaats 3. Alleen de rechter wordt dan in de tabel gezet met als resultaat 7.

Dit resultaat gaat vertellen hoeveel plaatsen mag opgeschoven worden nadat er een mismatch gebeurt op dit character.

### Search Phase
Zelfde als brute force alleen dan met deze shift table in rekening gehouden.
![[QuickSearch drawing]]

## [[Knuth-Morris-Pratt]]
![[Knuth-Morris-Pratt]]

# References
- [[Algorithms and Data Structures in Scheme.pdf|AD1 Cursus]]