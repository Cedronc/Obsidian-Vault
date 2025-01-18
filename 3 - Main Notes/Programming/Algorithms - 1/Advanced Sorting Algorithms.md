- [i] Backlinks: [[What Makes Sorting Algorithm External]]

# Quicksort 
---
#quicksort #divide_and_conquer
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
#mergesort #divide_and_conquer
**TLDR:** 
    Al het werk gebeurt recursief en tijdens het backtracken. 
    Rits alle opgesplitste arrays aan elkaar zodat ze gesorteerd zijn.
    Dan gemerged maar lijsten zijn niet relatief gesorteerd.

## Properties
**Prop 1.**
    Niet [[In-Place]].

**Prop 2.**
    Goed voor lijsten, vandaar [[Multiway Balanced Merge Sort]].
    Ook andere externe sorting algorithmes.


# Heap Sort
#heapsort 

**TLDR:** 
    Knal een `from-scheme-vector` en haal de elementen eruit.

## Klad yap
Min heap,
Naive manier niet in-place

Maar kan wel in-place


