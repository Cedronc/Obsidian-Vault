- [i] Backlinks: [[Advanced Sorting Algorithms]], [[Simpele Sorteer Algoritmes]], ...
---
# Temporal Locality
How quickly recently accessed data will be used again. The **(LIFO) Stack** has really **good** temporal locality while the **(FIFO) Queue** has really **bad** temporal locality

Important for caching behaviour (quicksort not good eh.) Merge sort is the only really acceptable algorithm for good caching behaviour. **Heaps** also have a **bad temporal** locality because it **jumps around indexes** like nobodies business.

# Spatial Locality
How likely it is that the data close to the stored memory location of previously used data will be used. **Bubble Sort** has EXCELLENT spatial locality because it only adjacent elements. **Quick Sort** also has **good spatial locality** because it access data around the **selected pivots** in partitioning phases. 

Yapp about [[Radix Sort]] i do not know.




