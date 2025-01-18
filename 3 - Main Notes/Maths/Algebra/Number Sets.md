- [i] Status: #finished 
- [i] Back links: 
___

> [!tip]
\# hoeveel getallen in een verzameling
verzameling met 1 element is een singleton
## Types of Sets

![[Verzamelingen als Venndiagram]]
### {}: Empty set


### $\mathbb{N}$: Natural numbers
All numbers that are positive with no decimal numbers
### $\mathbb{Z}$: Integers
Everything of $\mathbb{N}$ with also negative numbers.
### $\mathbb{Q}$: Rational numbers
Everything of $\mathbb{Z}$ but with decimal numbers but only the rational numbers. So decimals with an ending.
Ex: $1/4; \; 1/6; \; 50/200$
### $\mathbb{R}$: Real numbers
Everything of $\mathbb{Q}$ but also with irrational numbers, so every number that can be placed on an graph. So decimals with no ending also included.
Ex: 1, -1, 2.5, $\pi$

2.5 is a rational number (NL: reële).
$\pi, \; \sqrt{2}$ being an irrational numbers because they can't be expressed as a fracture of two integers.

### $\mathbb{C}$: Complex numbers
Everything of all previous number sets but including LETTERS. 
Ex: 1, -1, 2.5, $\pi$, ($5 + 6x$)


## Berekeningen
A = {1,2,3} ; B = {2,3,4,5}

Intersectie/ doorsnede
    A ∩ B = {x ∈ A | x ∈ B}
    = {2,3}
Unie
    A ∪ B = {x | (x ∈ A) ∨ (x ∈ B)}  
    = {1,2,3,4,5}
Verschil
    A \\ B = {x | (x ∈ A) ∧ (x $\notin$ B)
    ={1}
    B \\ A = {x | (x ∈ B) ∧ (x $\notin$ A)
    = {4,5}

## Verzameling van verzamelingen

>[!example]-
Stel I = {3, 4, 5, 6, 7} en Ai = {1, 2, 3, . . . , i}. Dan is A3 = {1, 2, 3},  
A4 = {1, 2, 3, 4} enz.
$\bigcap A=\bigcap_{i\in I}A_{i}={x\mid\forall i\in I:x\in A_{i}}$
Dan is dit = {1,2,3}
$\bigcup A=\bigcup_{i\in I}A_{i}={x\mid\exists,i\in I:x\in A_{i}}.$
En dit = {1,2,3,4,5,6,7}

$$
\bigcup_{i\in I} {A_{i}}
$$
Met i als iterator en A de verzamelingen.

## References
- Brain power baby