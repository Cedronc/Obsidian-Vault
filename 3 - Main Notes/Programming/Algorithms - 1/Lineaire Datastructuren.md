- [i] Related Files: [[Ring Datastructuur]]
--- 

# Probleem met "naked" vectors en Scheme Lists
Bij vectoren moet de lengte gekend zijn omdat deze lengte fixed is en niet zomaar aangepast kan worden.
Bij lists is dat het traag is om te zoeken en niet generisch. 
# Abstract Wat zijn Lineaire Datastructuren
Een verzameling van data elementen waarbij elk element geassocieerd is met een positie. Elke positie heeft een unieke volgende en vorige positie buiten het eerste element en laatste element.
# Oplossing 1: Headed Lists
Dit is een normale scheme lijst (of vector) die dan een header heeft die van alles kan zijn, pair, record of vector. Waar dan meta data inzit over deze lijst. 

Voor de headed list zit hier een pointer naar het eerste pair van de lijst en de vergelijker van deze lijst. 

# Oplossing 2: Positional Lists
Onze geïmplementeerd positional list is met vectoren. 

ADT met een generic: <V, P>
Waar V gekozen wordt door de gebruiker en P het positionele datatype
Met deze implementaties:
![[Pasted image 20241228122035.png]]

## Representatie-Onafhankelijke procedures
### **Map**
Zal een procedure toepassen op alle elementen met als doel ze aan te passen naar een nieuwe waarde.
### **For-each**
Zal een procedure toepassen maar om iets te doen met de elementen en ze niet aan te passen.
### **From-scheme-list**
spreekt voor zich maakt een plst van een scheme lijst.
### **Find** 
zoekt een element zonder een positie mee te geven.
### **Performantie**
Deze procedures hebben een specifieke tijd complexiteit afhangend van hun implementatie. Merk op in elke implementatie van de lijsten zal find altijd in O(n) zijn. (Map en for-each ook maar dat is wel logisch.)
![[Pasted image 20241228123334.png|500]]
***
## Onderdelen van de implementaties
### Representatie
Dient om de lijst aan te maken en de meta data te defineren en in te vullen.
### Verificatie
Procedures zoals: length, empty? en full?
### Navigatie
Procedures om door de lijst te navigeren, first, last, has-next?, has-prev?, next en prev.
### Manipulatie
Procedures om lijsten aan te passen of uit lezen. peek, update!, attach-first!, attach-middle!, detach-first!, detach-middle, ....
***
## Vector Implementatie
![[Pasted image 20241228124434.png]]
Het ADT houdt de size bij wat het laatst toegevoegd element is. Ook de comperator van deze lijst.
![[Pasted image 20241228124536.png]]

Deze implementatie heeft de navigatie en verificatie procedures met een time complexion van O(1). 

### Hulp procedures
Storage moving (1 naar links of rechts): O(n)
verzet een interval van de vector naar rechts of links.

### Manipulatie 
Procedures die dingen aanpassen aan het einde v/d vector zijn altijd in O(1) omdat de size pointer al naar dit element wijst en dus het gewoon neerkomt op deze aan te passen en mogelijk iets in de lijst te zetten. Update met een positie is natuurlijk ook O(1).

Voor procedures die bv. in het midden iets detachen of toe moeten voegen moeten heel de lijst verschuiven met de hulp procedures. Dit gebeurt in O(n).
***
## Single Linked List
![[Pasted image 20241228130324.png]]

### Hulp Procedure
`iter-from-head-until` loopt over de lijst tot de gegeven `stop?` predicaat voldaan is. Dit wordt gedaan met chasing pointers. 
2 pointers worden door een recursieve oproep naar de volgende verzet tot de 1ste pointer (next) de stop conditie voldoet.
![[Pasted image 20241228132810.png]]
(Foutje in de tekening er wordt er eentje overgeslagen in stap 1 volgens mij.)

### Verificatie
vol kan deze lijst nooit zijn dus zal `full?` altijd false returnen, en `empty?` is gemakkelijk te checken als head null? is dan is de lijst leeg.
Length zal wel in O(n) gebeuren omdat hij over heel de lijst moet lopen.

### Navigatie
Alle navigatie gebeurt in O(1) omdat we die next pointer bijhouden met onze nodes. De `prev` en `last` zijn daarin tegen in O(n) omdat we eerst door de lijst moeten lopen.

### Manipulatie
Update en peek, zal ook dus in O(1) gebeuren omdat het enkel de car nemen en setten is.
De rest zal ook in O(1) gebeuren omdat er slechts een header verzet moet worden of de next pointer verzetten.

`attach-last!` is wel wat anders omdat er weer eerst naar het einde gelopen moet worden. 
`detach-middle!`en `detach-last!` zijn ook in O(n) omdat we de previous pointer nodig hebben om te detachen. Het zelfde is waar als we `add-after!` zonder position oproepen.
***
## Double linked list
Met de meeste snelle operaties (maar meeste geheugen gebruik).
- Een pointer naar de previous node. Zodat de procedures van de [[#Single Linked List|SLL]] die in O(n) gingen nu ook in O(1).
- Extra meta informatie in de header. Zoals de lengte

![[Pasted image 20241228142308.png]]

Alle procedures lijken zeer hard op die van de [[#Single Linked List|SLL]] met extra logica om de previous pointer terug goed te zetten en de length te verhogen.

In de slides zijn er 2 versies van de double linked list, eentje met extra meta data dus de length en tail waar alle procedures O(1) hebben. Maar nog een andere met geen extra meta data tegenover de SLL waardoor `length` en `attach-last!` in O(n) afronden.
***
## Varianten van Positional Lists
### Ranked Lists
Dit is basically het "probleem" omarmen en zeggen 'its a feature'. De lijst is nu een maal relatief positioneel en is een moment opname voor er nog elementen worden toegevoegd.
### List with Current
Dit soort lijst exposed de positie niet meer door alle procedures zoals first, last te verstoppen. 

(To be honest fuck dit da lijkt me retardedly useless).

## Zoeken in lijsten
Er zijn 3 verbeteringen om sequentieel te zoeken in een lijst. Maar nog altijd O(n).

### Sentinel Searching
Dit principe is basically het predicaat dat checkt of het huidige element `null?` is weg te laten. Dit zorgt dat elke iteratie van het zoeken sneller gebeurt. Maar dan kunnen we krijgen dat we uit de lijst lopen. Dus

We voegen het gezochte element vanachter toe (`add-last!` moet wel O(1) zijn.) en dan kunnen we zoeken tot we het element vinden wat altijd zal gebeuren. Dan moeten we als laatste checken of het gevonden element zijn key hetzelfde is als die van het net toegevoegde element als dit is dan hebben we niets gevonden.

### Sorted List
Dit gebruikt een gesorteerde lijst wat dus een heel ander ADT gebruikt om de lijst te gebruiken. 
![[Sorted List]]

### Binary Search
Heeft een gesorteerde lijst nodig en O(1) indexering. Het enige zoek algoritme dat in O(log(n)) kan vinden. 

Hoeveel keer kan je het element delen door 2? $\log(x)$. Basically we splitsen (elementen bekijken links en rechts van het midden) de lijst in 2.
- Vergelijk het element in het midden van de lijst met het doel.
- Als het doel kleiner is, zoek verder in de linkerhelft; als het groter is, zoek verder in de rechterhelft.
- Herhaal dit proces (telkens de lijst halveren) totdat het element is gevonden of totdat de lijst leeg is.

Maar belangrijk we hebben toegang nodig tot specifieke elementen in O(1) 
***
## Conclusie
![[Pasted image 20241228142942.png]]
Hoe meer data je in centraal geheugen zet hoe sneller, dus er is een trade-off.
# Zoeken
## Sentinal Search

## Binary Search
### Vereisten
1. Toegang tot elementen in O(1)
2. gesorteerd lijst.
![[Binary Search.png|500]]
# Ringen
![[Ring Datastructuur]]

# References
- [VUB - Cursus](https://soft.vub.ac.be/~jnicolay/courses/ad1/html-dynamic/index.html#listslinkedimplementation)