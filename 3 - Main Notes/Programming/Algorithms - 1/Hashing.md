# Zoeken in hash tables
dient voor sneller zoeken als n.log(n). In hash tables kan men zoeken in O(1).

# Hashing tables
Een hashing table is vergelijkbaar met een [[Dictionary]], die voor zijn keys een hash functie gebruikt om die zo op een plaats te zetten in de dictionary.

Bestaan uit een belangrijke hashing functie (moeilijk om te berekenen).
Zet alle mogelijke datatypes om naar getallen.

Zet output van hash functie naar modulo van de table zijn grootte zonder. Dit eerste (zonder collision offsets) resultaat is het **home address**.

Waarschijnlijk niet te kennen maar om strings naar getallen om te zetten voor hashing gebruikt men:
- Folding (alles naar ascii dan optellen)
- Digit selection

Dus de hash table zomaar vergroten kost veel omdat je alle elementen hun keys opnieuw moet bereken.

## Collision resolution
Load factor (volheid van een vector) 
    Is eigenlijk een percentage hoe vol een hash table zit

$\alpha = \frac{n}{M}$ met n de ingevulde kotten van uw M grootte vector.
Hoe groter deze load factor hoe meer kans op botsingen (collision). Probeer deze alpha onder 75% te houden.

### Funneling
als veel keys op dezelfde plaatsen komen te staan.
komt voor bij slechte hash functies.

Als in de hash functie en in M van uw load factor een zelfde factor hebben zal dit de oorzaak zijn van funneling.
### External Chaining
Het begint bij de elementen op te slagen in linked lists op de plaats van het home address. Deze lijsten noemen buckets.
Met de load factor in het achterhoofd kunnen we er vanuit gaan dat elke lijst $\alpha$ lengte zal hebben en dus toevoegen, verwijderen, etc zal O($\alpha$) 

### Open addressing (goofy ah naam)
Probe: is een probeersel om een plaats te zoeken nadat het home address een collision heeft.
Probe sequence: de lijst van deze probeersels achter elkaar voor een key.
Elke keer dat er een collision is hebben we opties om volgende strategieën toe te passen.

#### Lineaire probing
Optellen van een constante per keer dat er een botsing is. Deze constante moet relatief priem zijn met de $M$ van de hash table.

Hoe verwijderen? Moet een speciale sentinal value krijgen anders verlies je de volgende key-value pairs die gebotst hebben met de gene die verwijderd wilt worden.
Zo kunnen we nog eens hashen en $c$ terug daarbij optellen en zo de volgende in de probe sequence vinden. Zelfde voor `find`.

#### Primary Clustering
Zodra keys ($k_{1}, \; k_{2}$ apart home address) naar dezelfde waarde hashen op een bepaald punt in hun probe sequence dan komen ze samen en zullen ze hierna elke keer samen naar dezelfde waarde rehashen. [[#Lineaire probing]] heeft hier veel last van.

**Oplossing**: andere rehash waardes, dus niet dezelfde $c$ bij elke probe. :LiArrowBigDown:
#### Kwadratische Probing
$$h'(k, i) = \left(h(k) + c_1 \cdot i + c_2 \cdot i^2\right) \bmod M
$$
Bij elke stap van de probe sequence zal deze een 2de constante vermenigvuldigen met het kwadraat van het aantal keer dat er collisions zijn geweest.

#### Secondary Clustering
Als keys hashen naar hetzelfde home address dan zullen ze ook bij verschillende stapgroottes op dezelfde probe sequence komen.
Komt voor bij [[#Kwadratische Probing]]

**Oplossing**: Andere hash functie bij collision. :LiArrowBigDown:
#### Double Rehashing
TLDR: Opnieuw een andere hash functie uitvoeren bij een collision
$$h'(k, i) = \left(h_1(k) + i \cdot h_2(k)\right) \bmod M
$$
Als dan nog botsingen plaatsvinden dan vermenigvuldigen we het resultaat op van de 2de hash functie als constante $c$. 


# WPO Hashing
![[Hashing Oefening|500]]
Hash tables georganiseerd als hash tables geeft:
    M-aire bomen.
    waar m # buckets zijn. ofzo.
hash functies zijn redelijk context afhankelijk, buiten de grootte getallen. want wet van groten getallen.