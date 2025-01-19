- [i] Backlinks: [[What Makes Sorting Algorithm External]]

# Quicksort 
---
#quicksort #sorting #divide_and_conquer
**TLDR:**
    Avg. case performance of $n\cdot (log(n))$.
    First choose pivot then partition.
    *In place ofzoiet kweni*
## Properties
**Prop 1.**
    Divide & Conquer algorithm
**Prop 2.** 
    Recursive process, (no tail-end recursion).
    Therefore not [[In-Place]].

## Variations
In sommige quick sort implemntaties wordt ook gebruikt vn simpele sorting algoritmes zoals insertion als de lijst te klein wordt.
### Randomized Quicksort
Chooses pivot at random, takes care of degenarating algorithm where list is reverse sorted and performance = n^2

### Median of 3
The pivot gets chosen of 3 elements...

# Explained 

![[Quicksort Explained|1000]]


# Merge Sort
---
#mergesort #sorting #divide_and_conquer
**TLDR:** 
    Al het werk gebeurt recursief en tijdens het backtracken. 
    Rits alle opgesplitste arrays aan elkaar zodat ze gesorteerd zijn.
    Dan gemerged maar lijsten zijn niet relatief gesorteerd.

## Properties
**Prop 1.**
    Niet [[In-Place]].
**Prop 2.**
    Niet stabiel bij strict ongelijkheid.
**Prop 3.**
    Goed voor lijsten, vandaar [[Multiway Balanced Merge Sort]].
    Ook andere externe sorting algorithmes.
    
![[2 - Rough Notes/Mergesort Example]]

# Heap Sort
---
#heapsort #sorting 

**TLDR:** 
    Knal een `from-scheme-vector` in geval van vectors in een heap en delete dan tot de heap leeg is.
    [[Heaps]] ![[Heap Example]]
