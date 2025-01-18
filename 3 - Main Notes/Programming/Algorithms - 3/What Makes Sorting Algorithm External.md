--- 
**TLDR:** An **external algorithm** throws the characteristic that all the **to be sorted data** is in **central memory** (vector) out of the window. Think about *excel tables*. Or the data is just to big. 

**Most used algorithm for external sorting is Multiway Balanced Merge Sort.**

# Properties
**Prop 1.**
    Operates (partially) on disk. 
**Prop 2.** 
    Creates auxiliary disks for putting on the data. (sometimes a virtual equv.) 
**Prop 3.**
    Good [[Caching]] behaviour. Because full block is loaded into memory.



