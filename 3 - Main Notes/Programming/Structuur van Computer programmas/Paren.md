- [i] Status: 
- [i] Back links: 
___
# Pair
**TLDR:** 2 items die bij elkaar horen. Cons in 'R5RS' dotted pair.

![[Simple Pair Example]]
Het zwarte paar is de eerste lijn code, groen de tweede.
```scheme
(cons 1 2)
> (1 . 2)

(cons 1 (cons 3 4))
> (1 3 . 4)
```

## Example

## cons
```scheme
(cons 5 . 10)
> (5 . 10)

(define myPair (cons 10 . 20))
myPair
> (10 . 20)

(define myTuplePair (cons "key" . (cons 10 . 30)))
myTuplePair
> ("key" . (10 . 30))
```
## car
```scheme
(car myPair)
> 10 
```
## cdr
```scheme
(cdr myPair)
> 20
```

## Racket vs R5RS
R5RS:
- cons = construct
- car (betekenis van oude computer technieken)
- cdr (ook oude betekenis)

Racket:
- mcons
- mcar
- mcdr

m: staat voor mutable.


## Box and pointer diagram

![[Pasted image 20241010092352.png]]

# Lijsten
**TLDR:** Lijsten in scheme zijn paren die naar elkaar linken in 1 richting zie [[Simple Pair Example|Pair Example]]

Om een **lege lijst** te maken: kan je `'()` wat dan `> ()` terug geeft.
Dit is null of undefined in andere talen.

**cdr pointers naar elkaar voor lijsten.**


=='Zet hier nog code van WPO's in.'==
# References
[[Hoofdstuk 5 - Lijsten en Symbolische Data.pdf]]