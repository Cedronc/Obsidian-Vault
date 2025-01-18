- [i] Status: 
- [i] Back links: 
___
A x B zijn elementen zijn ***koppels***

> [!example]
> Als (a, b), (c,d) $\in$ A x B dan
> (a, b) = (c,d) $\iff$ (a = c) $\land$ (b = d)

A x A = $A^2$

|A × B| = |A| · |B|

## Relaties
![[Pasted image 20240927164417.png]]


## Functies

> [!info]
Dit is een functie
> $$f : A \mapsto B $$
> Indien (a, b) $\in$ f **DAN**  f(a) = b

Functievoorschrift noteren we als
$$f: A\to B : a \mapsto f(a)$$
Waarbij "f(a)" het functievoorschrift is. A $\to$ B zijn respectievelijk het domein en het co-domein. Zij bepalen de omgeving.

![[Functie Voorbeelden| 400]]

### Injectief

> [!Definitie]
> f: A $\to$ B is injectief indien **alle elementen van B MAX een keer** voorkomen **IN A**
> als 2de element in de koppels in f

>[!example]
>f : R $\to$ R : x $\mapsto x^2$ is niet injectief. Immers $1^2 = (−1)^2$  
maar 1 $\not =$ −1. Anderzijds is g : $R^+$ $\to$ R : x $\mapsto x^2$ wel injectief want  
$a^2 = b^2 \iff a = ±b$, maar aangezien a, b ∈ R+, geldt a = b.

### Surjecties

> [!Definitie]
> Een functie f : A $\to$ B is surjectief indien Im f = B

> [!Example]
> Voorbeeld. g : $R^+ \to$ R : x $\mapsto x^2$ is niet surjectief. De corestrictie $g \,|\,R^+$  
> is dat wel.
> 

### Bijecties

In geval een functie beide surjectief en injectief is deze bijectief.
Een functie is bijectief $\iff$ ∀ b ∈ B : ∃! a ∈ A : f (a) = b.

**Voorbeeld**:  $h : R^+ \to R^+ : x \mapsto x^2$ is bijectief.

Een bijectie van een verzameling naar zichzelf heet een  
permutatie.

De identieke permutatie of de identiteit beeldt elk element af  
op zichzelf. We noteren de identieke permutatie van een  
verzameling X als $1_X$ . Er geldt dus ∀ x ∈ X : $1_X(x)$ = x of  
$$1_X : X \to X : x \mapsto x$$
### Samenstelling van functies

Beschouw twee functies $f : A \to B \; en \; g : B \to C$ , waarbij het  
domein van **g** het codomein van f is. Dan kunnen we op elk beeld  
f (a) de functie g toepassen. Zo defini ̈eren we een nieuwe functie  
van A naar C die we g ◦ f noteren (lees “**g na f** ” omdat we eerst  
f toepassen en dan g ). Dus: $$g ◦ f : A −→ C : a \mapsto g (f (a))$$
Voorbeeld. Stel $f : R \to R : x \mapsto x − 1 \; en \; g : R \to R : x \mapsto x^2$  
Dan zijn: 

 ![[Pasted image 20240927194040.png | 300]]

## Beeld - (**Im f** )

Voor de functie f: A $\to$ B en S $\subset$ A
f (S) := {f (s) | s ∈ S}  
    := {b ∈ B | ∃ s ∈ S, f (s) = b}  
    
De verzameling f (A), het beeld van het hele domein van f, noemen we het beeld van f en noteren we ook als Im f .  
>[!example]- Voorbeeld
Zij f : R $\to$ R : x $\mapsto x^2$. 
Dan is f ([−1, 2]) = [0, 4] en Im f = R+.
>
Uit dit voorbeeld leren we dat Im f dus in het algemeen niet  
gelijk is aan het codomein van f . Verwar dus niet beeld en codomein!

## Invers Beeld - ($f^{-1}(A)$)
![[Pasted image 20240927180352.png]]

## Geïnduceerde functies

Andere keer.


# References
- 