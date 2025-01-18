- [i] Status: 
- [i] Back links: [[Eenvoudige Teltechnieken]]
___
H: Herhaling speelt geen rol.
V: Volgorde maakt niet uit.

$$f: A \to B $$
# Injectieve Functies
$V \not H$
Injecties worden gedefinieerd als functies die niet herhalen.

Enkel als $A \le B$
Stelling
    # van geordende keuzes vanuit A zonder herhaling is
    $$\frac{|B|!}{(|B| - |A|)!}$$
    Bewijs; Om zo een woord te vormen moeten we achtereenvolgend m verschillende elementen van Y kiezen. Voor de eerste letter zijn er n keuzes, voor de tweede n − 1 (want we mogen om het even welke letter nemen behalve die die we als eerste kozen). Voor de derde letter n − 2 keuzes enz. tot we de laatste letter kiezen uit de n − m + 1 die overblijven.

# Bijectieve Functies
$\not V \not H$
Bijecties worden gedefineerd als functies die niet mogen herhalen of dezelfde volgorde mogen hebben.

Als |A| = |B| dan zijn het permutaties.

|A| = k, |B| = n
$$\frac{n!}{k!(n-k)!}$$

# [[Herhalingscombinaties]]
![[Herhalingscombinaties|5000]]
![[Pasted image 20241023184452.png]]
![[Pasted image 20241028162559.png]]
![[Pasted image 20241029232657.png]]

# Deelverzamelingen Tellen
Gegeven een verzameling $A$ en $k \in \mathbb{N}$. Een deelverzameling $K_a$ van $A$ is een deelverzameling van $k$ elementen.
Ook gegeven is $|A| =  n$, hoeveel deelverzamelingen heeft A dan?

$$|S| = \frac{n!}{k! \,(n-k)!}$$
Waar n dan |A| is en k de grootte van de deelverzamelingen uit A met volgorde.
Kan gelezen worden als de manier om k elementen te nemen uit n.
Vb.
$$\binom {n \; of\;20}{k\; of \; 2}$$

# Identiteit van Pascal
De verzameling van alle k-deelverzamelingen van A noteren we als $\begin{pmatrix}A\\k\end{pmatrix}$
Zij $n,k \in \mathbb{N}_0$ met $k\le n$ dan geldt: $$\begin{pmatrix}n\\ n \end{pmatrix} = \begin{pmatrix}n-1\\k\end{pmatrix}$$

> [!tip] Bewijs
>  We weten dat $\begin{pmatrix} n \\ k\end{pmatrix}$ = # k-deelverzamelingen in $A$ met n elementen. 
> $$D_\in := \{B \in \begin{pmatrix} A \\ k\end{pmatrix} | a \in B \} \; \; en \; \; D_{\not \in} := \{B \in \begin{pmatrix} A \\ k\end{pmatrix} | a \not \in B\}$$
> - $D_{\in}$ = **Alle** k-deelverzamelingen met een specifiek element $a$.
> - $D_{\not \in}$ = **Alle** k-deelverzamelingen zonder het element $a$.
>  Dus we hebben  $\begin{pmatrix} n \\ k\end{pmatrix}$  = |$\begin{pmatrix} A \\ k\end{pmatrix}$ | = |$D_{\in}$| + |$D_{\not \in}$|

> [!example]- Voorbeeld
> $A = \{1,2,3,4,5\}$ (verzamelingen kunnen geen duplicate elementen hebben)
> $k = 2, \; a=1$
> 
> $D_{\in}$ zou dan = $\{1,2\}, \{1,3\}, \{1,4\}, \{1,5\}$
> $D_{\not \in}$ zou dan = $\{2,3\}, \{3,4\}, \{4,5\}$
> -
> De unie van deze 2 zijn disjunct.

## Driehoek van Pascal

![[Pasted image 20241024190807.png | 400]]
![[Pasted image 20241024190826.png | 400]]


# Principe van Inclusie, Exclusie

Stel $A_1,A_2,A_3,\; ..., A_n$ eindige verzamelingen en $\mathbb{A} = \{A_1,A_2,A_3,\; ..., A_n\}$. Dan:
$$|\bigcup\mathbb A | = |A_1\cup A_2\cup A_3\;\cup \; ...\cup  \; A_n| =  α1 − α2 + α3 − · · · + (−1)^{n−1}α_n$$
$$=$$
$$\alpha_i = \sum_{\mathbb{B}\in \begin{pmatrix}A\\i\end{pmatrix}} |\bigcap \mathbb{B}|$$

> [!important] Bewijs
> Zij $x ∈ \bigcup A$, dan $∃k ∈ N_0$ zodat x behoort tot juist k van de n verzamelingen in A.
> Waar x een element is van 'k' aantal, van de 'n' verzamelingen in A. 
> 
> *x* levert dus een bijdrage in 
> ![[Pasted image 20241024213546.png|300]] 
> *\*met bijdrage bedoel ik naar hoe vaak en op welke manieren x wordt geteld $\binom{k}{k}$ onderste k is de bijdrage.*
> 
> - Waar x in k verzamelingen zit waar bv. $\alpha_1$ de lengte is van de unie v/d verzamelingen.
> - Het aantal keer dat we dubbeltellen mogen we niet vergeten. Stel bevoorbeeld: $\alpha_2$ de som van de doorsnede van 2 verzamelingen. heeft x een bijdrage van  $\binom{k}{2}$ en moet dus deze eruit gehaald worden met $k-1$.
> 
> $$\binom{k}{1} - \binom{k}{2} + \binom{k}{3} - \cdots + (-1)^{k-1}\binom{k}{k}$$

> [!example]- Voorbeeld
> Gegeven 3 verzamelingen: 
> - $A = \{1, 2, 3, 4, 5\}$
> - $B = \{4, 5, 6, 7\}$
> - $C = \{5, 7, 8, 9\}$
>
> Gewilt is de groote van de unie van deze 3 verzamelingen. In formele taal: 
> $$|A \cup B \cup C|$$
> Wat dan als uitwerking van de regels van **inclusieviteit en exclusiviteit**
 $$|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |A \cap C| - |B \cap C| + |A \cap B \cap C|$$  
 > $$= 5 + 4 + 4 - 2 -1 - 2 +1$$
 > $$= 9$$
 
 









# References
- [[SlidesDiscrete2.pdf]]