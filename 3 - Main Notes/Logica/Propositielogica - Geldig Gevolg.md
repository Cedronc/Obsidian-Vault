- [i] Status: 
- [i] Back links: 
___
## Geldig Gevolg
### Definitie
Een formule 𝜓 heet een geldig gevolg van een verzameling formules Σ als elk model van Σ ook een model is van $𝜓 \in \Sigma$.

**Notatie**: $\Sigma \vDash \psi$ of $\Sigma / \psi$

Als $Σ = 𝜑_1, … 𝜑_𝑛$ schrijven we ook $𝜑_1, … 𝜑_𝑛 ⊨ \psi$
Reminder: [[Propositie Semantiek|Waarderingen & Modellen van formules]]
### Voorbeelden
- $p, p \implies q \vDash q$
- $p, p \implies q, q\implies r \vDash r$ 
- $\lnot q, p \implies q \vDash \lnot p$

![[Pasted image 20241007205920.png]]

$V_1$ is de enige waardering die een model is van ${p,p \implies q}$ en $V_1$ is ook een model van 'q'.

![[Pasted image 20241007211632.png]]
### Tautologie
Als $\Sigma = \emptyset$

- Elke waardering is een model
- $\vDash \psi$ is een tautologie 

### Tegenvoorbeeld
Indien niet: $\Sigma \not \vDash \psi$
Vb. $q,p \implies q \not \vDash p$
    V(q) = 1, V(p) = 0

### Bekende
- $\phi, \neg \phi \models \psi \ \text{voor alle} \ \psi$
- $\text{contrapositie: } \phi \to \psi \models \neg \psi \to \neg \phi$
- $\text{hypothetisch syllogisme: } \phi \to \psi, \psi \to \chi \models \phi \to \chi$
- $\text{disjunctief syllogisme: } \phi \lor \psi, \neg \phi \models \psi$

## Semantische Tableaus

Het idee van *Semantische Tableaus* is dat geldige gevolgtrekkingen nagaan via een [[Voorbeeld Waarheidstabel|Waarheidstabel]] kan maar heel lang gaat duren.

Dus we zoeken naar het tegenvoorbeeld als we geen vinden is het een geldig gevolg.

### Sequent

$$ \phi_1, ... \phi_n \; \circ \; \psi_1, ... \psi_m$$
Met de elementen $\phi\; \text{en}\; \psi$ als formules.

V is een tegenvoorbeeld van een *sequent* als 
- $𝑉(𝜑_1) = … = 𝑉(𝜑_𝑛) = 1$
- &
- $𝑉(\psi_1) = … = 𝑉(\psi_m) = 0$

**Een segment waar 'i' en 'j' zodat $\phi_i = \psi_j$ heeft geen tegenvoorbeeld.** Dus een formule uit de lijst overeenkomt met een andere formule uit de lijst van de andere kant.

### Reductie Regels

![[Pasted image 20241014160615.png]]

Φ is een rijtje van $\phi_1 , \phi_2 , \phi_n$.
Ψ is een rijtje van $\psi_1,\psi_2, \psi_m$.

![[Pasted image 20241014161032.png]]


## Semantisch consistent
Een formuleverzameling Σ is (semantisch) consistent als Σ een model heeft. Een formuleverzameling die niet consistent is heet inconsistent.

# References
- 