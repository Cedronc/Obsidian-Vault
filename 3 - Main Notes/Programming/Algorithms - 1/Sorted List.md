--- 

**TLDR:** Een lijst waarbij elk element altijd gesorteerd zal staan. Bij elke `add!` operatie zal deze dus zoeken naar de juiste plaats om het nieuw element te zetten.

# Properties
**Prop 1.**
    `add!` is dus een $O(n)$ procedure.
    Ook `delete!` omdat er een storage move moet gebeuren.

## Implementatiedetails 
**add!**.
    ![[Sorted List - Add!.png|500]]
    De `vector-iter` let zorgt dat de elementen 1 opgeschoven worden en op de juiste plaats het element geplaatst wordt.
**delete!**.
    Om een element op een bepaalde plaats te verwijderen moeten alle elementen vanaf die index een positie naar links opgeschoven worden. Vandaar de $O(n)$ time complexion.
**find**:
    Naive implementatie met sequentieel zoeken is in $O(n)$, maar kan gemakkelijk geoptimaliseerd worden door bv. Binair zoeken, sentinal search.

### Find: Binary Search
![[Binary Search.png|500]]