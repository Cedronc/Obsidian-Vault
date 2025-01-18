___
# Terminologie

## Primitieve data
Meest basic bouwblokken van een taal.
- bool
- char
- number
- procedure 
- symbool ('a) 

## Samengestelde data
- cons ( (cons 1 2) soms ookwel pair genoemt)
- string (lijst van chars)
    - make-string 5 \#/space 
    - Zal string van 5 spaties maken.
- vectors (gwn ne lijst)

*Stukje scheme*:
## Named Let
```scheme
(let let-naam)
    ((var1 exp1)
     (var2 exp2)
    )
    ;De zogezegde body
    (let-naam exp1 exp2 ...))
```

waar naam procedure naam is en de var en exp, respectievelijk variablen en expressions zijn.
De body is waar men bv recursieve oproep doet van de let-naam. 

## Geneste loops tellen
vuistregel 2: 
$$O(\sum\limits_{i=1}^{r(n)}b(i))$$
Input dat kan veranderen (n of m) zijn variablen dus die kan men niet verwijderen met de franse wiskunde.

# Analyse geheugengebruik
$O(1)$ wordt in place genoemt.

(Fib n) via een boomstructuur is $\Theta (n)$ omdat uw max recursiediepte n is.

# Example
