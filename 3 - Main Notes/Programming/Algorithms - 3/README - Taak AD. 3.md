# Gemaakte keuzes
## Double linked file blocks
Om te beginnen met de taak ben ik gestart met het omgekeerd lezen van de blokken. Dit heb ik mogelijk gemaakt door een aanpassing in mijn `file-system.rkt`. Ik heb specifiek een extra **block-ptr** toegevoegd aan de header van bestanden, genaamd `prev-bptr`. Deze wijst naar het vorige blok, wat de functionaliteit verduidelijkt.

### Waarom?
Volgens mij was dit de enige efficiënte oplossing. Een alternatief zou zijn om telkens door alle blokken te itereren tot je bij het laatste blok komt, maar dat zou een zware impact op de prestaties hebben. Met mijn aanpak verlies ik slechts 1 byte per file content block.
## Reverse inlezen vanuit blocks
In volgende bestanden heb ik aanpassingen gemaakt:  
- `sequential-file.rkt`
- `input-file.rkt`
- `output-file.rkt` 
### Sequential-file
Hier heb ik enkel twee extra indices toegevoegd voor het reverse lezen en het bijhouden van het totaal aantal elementen in mijn file. Deze aanpassingen met de nodige setters en getters.
### Input-file & Output file

In deze bestanden heb ik veel uitbreidingen gemaakt om het omgekeerd lezen mogelijk te maken. Voor de `output-file` heb ik de `claim-bytes!`-procedure aangepast, zodat tag en grootte in één keer worden geclaimd. Dit voorkomt dat elementen over meerdere blokken verspreid raken, wat problemen zou veroorzaken. Het nadeel hiervan is dat er op het einde van een blok enkele bytes verloren gaan, maar dit aantal is in het slechtste geval minimaal.

In de `input-file.rkt` is de `supply-bytes!`-procedure aangepast om deze wijziging van de `output-file.rkt` te weerspiegelen. Daarnaast heb ik extra procedures toegevoegd.

In `output-file.rkt` is de `append-write`-procedure aangepast om na elk element nogmaals de grootte toe te voegen. Dit helpt bij het terugvinden van de originele tag.

#### Waarom
Ik heb gekozen voor het lezen binnen een blok omdat dit de eerste logische oplossing was die in me opkwam. Andere methoden, zoals het volledig inlezen van een blok, pasten niet binnen mijn logica en zouden inefficiënt zijn bij gebruik van een externe quicksort. Zonder deze uitbreiding zou de buffer van de externe quicksort beperkt zijn tot veelvouden van de block-size.

Origineel had ik bij mijn `append-write` ook de originele type-tag toegevoegd naast de grootte. Dit bleek overbodig en zou de benodigde opslag voor kleine elementen bijna verdubbelen. Daarom heb ik dit geschrapt.

Indien ik van tevoren wist dat de elementen dezelfde grootte hadden, had ik het omgekeerd lezen kunnen vereenvoudigen. Ik had dan de grootte van een element kunnen opslaan in het centrale geheugen en de sprongen berekenen in plaats van bij elke `append-write` extra grootte-informatie te schrijven.

De aanpassingen aan `claim-bytes!` en `supply-bytes!` waren nodig om extra edge cases te vermijden waarvoor ik geen tijd had om ze op te lossen.

## Caching vs No Caching

De keuze om geen caching te gebruiken was eenvoudig. Het beschreven algoritme in de meegeleverde paper haalt geen voordeel uit caching, omdat de blokken worden gelezen, verwerkt en pas veel later opnieuw worden gelezen. Dit zou zorgen voor onnodige complexiteit met minimaal voordeel.

Bijvoorbeeld: Als een bestand uit 10 blokken bestaat en data uit blok 1 wordt verwerkt en naar blok 10 geschreven, worden deze blokken lange tijd niet opnieuw gebruikt. Tegen de tijd dat ze nodig zijn, zijn ze waarschijnlijk al uit de cache verdwenen.

## External Quicksort
In mijn algoritme vul ik eerst een tijdelijke vector die dan de buffers van het algoritme zullen vullen. Deze buffers zijn ook vectoren. Deze buffers konden ook een ander ADT zijn maar ik heb gekozen om dit niet te doen om complexiteit te vermijden. Achteraf gezien had ik toch misschien beter gebruik gemaakt van een stack of queue.

<div style="page-break-after: always; visibility: hidden">
\pagebreak
</div>

## ADT's - Aanpassingen

> [!info] ADT output-file
> **(typedef filename string )
> (typedef current-rev number )
> (typedef current number )
> (typedef buff-bptr number )**
>
>** write-bffr!**
>     (output-file -> ∅)
>** open-extended-write!**
>     (disk filename -> output-file)
>** open-write-at!**
>     (disk filename buff-bptr current  -> output-file)
>** open-write-at-rev!**
>     (disk filename buff-bptr current-rev -> output-file)

> [!info] ADT input-file
>**(typedef filename string )**
>
> **open-extended-read!**
>     (disk filename -> input-file )
>  **has-more? **
>      ( input-file -> boolean ) 
> **read-rev **
>     (input-file -> any )

## Gebruikte WPO Oplossingen
- WPO 02-Filesystemen.
# References
- **Motzkin, D., & Hansen, C. L. (1982).** An efficient external sorting with minimal space requirement. *International Journal of Computer & Information Sciences, 11*(6), 381–396. [https://doi.org/10.1007/BF00996816](https://doi.org/10.1007/BF00996816)
