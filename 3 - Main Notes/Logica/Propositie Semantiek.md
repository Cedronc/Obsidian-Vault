- [i] Status: 
- [i] Back links: 
___
## Waarheidswaarden

### Values voor atomen
- Waar
- Niet Waar/ Onwaar/ Vals

- 1
- 0

Voor samengestelde formules gebruiken we dan de [[Voorbeeld Waarheidstabel|Waarheidstabellen]]. Hier gegeven de compactere notatie en Volledige notatie van formules. Opgesteld met $2^n$ rijen

## Intuïtie Implicatie
>[!question]
>Gegeven: 
>"Als op de ene kant van een kaart een 'A' staat, dan staat op de andere kant een '2'."
>Wat is het minimum aantal kaarten dat je moet omdraaien?

| A   | 3   | 2   | B   |
| --- | --- | --- | --- |

De oplossing van dit raadsel is 3.

| $\psi$ | $\phi$ | $(\psi \to \phi)$ |
| ------ | ------ | ----------------- |
| 1      | 1      | 1                 |
| 1      | 0      | 0                 |
| 0      | 1      | 1                 |
| 0      | 0      | 1                 |
((h $\lor$ s) -> r)

Naamgeving van implicatie
- (h $\lor$ s) noemt de antecedent
- r noemt de consequent

## Waardering

#### Definitie: "Een functie van alle propositieletters naar waarheidswaarden."
(Enkel de letters die voorkomen in de formule. Met functienaam $V_n$)

$\Sigma = \{(h\to s), (h \lor s)\}$

De waarheidstabel heeft $2^n$ opties, waar n de verschillende propositie letters zijn.

|       | h   | s   | (h $\lor$ s) | ($h \to s$) | ($h \iff s$) |
| ----- | --- | --- | ------------ | ----------- | ------------ |
| $V_1$ | 0   | 0   | 0            | 1           | 1            |
| $V_2$ | 0   | 1   | 1            | 1           | 0            |
| $V_3$ | 1   | 0   | 1            | 0           | 0            |
| $V_4$ | 1   | 1   | 1            | 1           | 1            |
MOD($\Sigma$) = {$V_2, V_4$}
Voor elke V moeten de propositie letters hun toestand duidelijk gemaakt worden.

### Betekenisen
Waar $\Sigma$ de verzameling van alle formules.
MOD$(\Sigma)$ de verzameling van alle modellen is.

De waardering "V" van een bepaalde rij in de waarheidstabel.
"V" heet ook wel het model van een formule indien $V(\phi) = 1$ geldt.

## Tautologie

Een formule is een tautologie indien elke waardering (V) 1 of waar is. 
Vb. ($\phi \lor \lnot \phi$)

## Contradictie

Een formule waar elke waardering (V) 0 of onwaar is.
$$Example. \;(\phi \land \lnot \phi)$$
## Logische Equivalentie
Notatie: $\phi \equiv \psi$
Ze zijn een $\equiv$ als:
- $(\phi \iff \psi)$ een **Tautologie** is.
- Elke waardering $V$ geldt $V((\phi \iff \psi)) = 1$.
- Elke waardering $V$ geldt $V(\phi) = V(\psi)$.

Veel gebruikte equivalenties
![[Pasted image 20241001185240.png | 400]]

**Contrapositie** is waar 2 propositie letters van plaats verwisselen.
Vb. $$(\phi \to \psi) \iff (\psi \to \lnot \phi)$$

### Contrapositie

*Schrijf de functies op *

## Disjunctieve Normaalvorm
Kan enkel voorkomen met ($\land$ en $\lnot$) in de haakjes en ($\lor$) buiten de haakjes.
*Voorbeelden:*
- ( 𝑝𝑝 ∧ ¬𝑞𝑞) ∨ (¬𝑎𝑎 ∧ 𝑏𝑏 )
- ( 𝑎𝑎 ∧ (¬𝑏𝑏 ∧ 𝑐𝑐 ))
- ( 𝑎𝑎 ∨ (¬𝑏𝑏 ∨ 𝑐𝑐 ))
- ($\lnot p$)
Geen disjunctieve normaalvorm: 
- ¬(𝑎𝑎 ∧ 𝑏𝑏)
- 𝑎𝑎 ∨ (𝑏𝑏 ∧ 𝑐𝑐 ∨ 𝑑𝑑 )

# References
- https://canvas.vub.be/courses/35828/files/2207702?module_item_id=471362 