--- 

**TLDR:** Een lineaire datastructuur die alle elementen een previous en next pointer toekent. Heeft ook altijd een current tenzij de ring leeg is. 

# Belangrijke Operaties

1. **Navigatie**:
    - `shift-forward!`: Ga naar het volgende element (_O(1)_ in een enkelvoudig gelinkte ring).
    - `shift-backward!`: Ga naar het vorige element (_O(n)_ in een enkelvoudig gelinkte ring).
2. **Lezen/Schrijven**:
    - `peek`: Lees de waarde van het current element.
    - `update!`: Wijzig de waarde van het current element.
3. **Mutaties**:
    - `add-after!`: Voeg een element toe na het current element (_O(1)_).
    - `add-before!`: Voeg een element toe vóór het current element (_O(n)_ vanwege het zoeken naar het vorige element).
    - `delete!`: Verwijder het current element (_O(n)_ vanwege het zoeken naar het vorige element).
4. **Andere**:
    - `length`: Berekent de lengte van de ring (_O(n)_).
***
# Implementatiedetails

1. **Representatie**:
    - Ringen worden gerepresenteerd als een **gelinkte lijst** met een referentie naar het "current" element.
2. **Efficiëntie**:
    - Navigatie en toevoegen achter zijn efficiënt in een enkelvoudig gelinkte implementatie.
    - Terug navigeren (`shift-backward!`) en toevoegen vóór vereisen het zoeken naar het vorige element (_O(n)_).
3. **Verbeteringen**:
    - Gebruik een **dubbel gelinkte lijst** voor betere prestaties:
        - `shift-backward!`, `add-before!` en `delete!` kunnen dan in _O(1)_ worden uitgevoerd.
    - Voeg extra metadata toe (zoals lengte) in de header voor snellere lengteberekeningen.
# Conclusie

De huidige implementatie is functioneel, maar kan sterk worden geoptimaliseerd met een dubbel gelinkte structuur. Voor nu zijn de meeste operaties in _O(1)_ of _O(n)_ afhankelijk van de gekozen aanpak.