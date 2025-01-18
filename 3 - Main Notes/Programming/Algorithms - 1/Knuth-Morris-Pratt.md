___
## Pre-Phase Analyse of Processing
is de compute-failure-function

### Compute-Failure-Function
Begint op 2 omdat het een echte prefix moet zijn. Laat op 0 staan voorlopig.
'K is'
- Groote van herhaling in voorste stuk tot nu toe
- Index in de vector van k's

Checkt elke keer de laatste letter van patroon met de k-de letter van patroon.
- Als deze letter overeenkomt dan k+1 (k van vorige k in de vector).
- Zo niet dan wordt er in de vector een 0 gezet.

Zodra alles klaar is zet de 0-de index van de vector op -1. Zodat als k = 0 dan $i-p +1 - k = 0$

*Maak sense van 'krimpen van k'.*
In geval van terugval kijk naar de vorige index en die k zal gebruikt worden als index om te kijken in de vector om zo de lengte daarvan. 

p: **abracadabra**
*''Maak tekening thuis.*
= 0 0 0 0 1 0 1 0 1 2 3


is een vector met verschillende 'k' waardes gebonden aan de index.

Deze functie dient om herhalende patronen in het patroon zichzelf niet over te slaan zoals men in een naive KMP implementatie zou doen (kijk cursus voor naive versie).

Het maakt een table die de sigma table noemt. Deze tabel heeft op index $\sigma(0)$, -1 als waarde omdat er daar nooit een 
Deze functie loop over het patroon met $i_p$ en werkt als volgt:

1. Voor elke index > 0, loopt over het patroon en zoekt naar het langste prefix dat overeenkomt met een echte suffix

![[3 - Main Notes/Programming/Algorithms - 1/KMP-Preprocess Example|1000]]
## Mismatch Branch
k: sigma tabel *(compute-failure-function)*
$i-t + (i-p - k)$$

**TLDR:**

# Example
