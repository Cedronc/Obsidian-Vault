---

---

___
**TLDR:** 

Ordered according to a **Heap Condition**


Faster implementation for the same purposes of the [[Priority Queues]]. The performance of the heap is worst case $O(\log{n})$. Heaps are not useful in and of it self and is therefore called a [[Auxiliary Datastructure]]. 

# Properties
**Prop 1.**
    A heap has $n$ elements and a $h$ height.
    $$  \sum_{i=0}^{h-1} 2^i + 1 \text{ nodes and maximum } \sum_{i=0}^{h} 2^i \text{ nodes: } \sum_{i=0}^{h-1} 2^i + 1 \leq n \leq \sum_{i=0}^{h} 2^i.$$
    The last row of a heap possibly has only one element explaining the left summation. Also take a random row at a random height except the last $i$ . That row has $2^{i - 1}$ nodes. 
    So giving us the equation for 

**Prop 2.**
    The height of a heap = $\lfloor \log_{2} n \rfloor$. 
    Met elke row ($i$): $\text{max nodes} = 2^{i-1}$ (i starts 1 and root node.)


**Prop 3.**
    Amount of leaf nodes.
    ![[Pasted image 20241130225757.png]]
    Here we can calculate the # of leaf nodes by doing $\lceil \frac{n}{2} \rceil$. Keep in mind that it doesn't need to be on **the last row.**


# Naming

**The Root Node**: is the **first element in the heap** where all other elements are "connected" to. 

**Leaf Nodes**: Are elements that **do not** have any **children**.


## Heap Condition 
Elements in the heap $e_{1} , e_{2}, ..., e_{n}$ are sorted like this:
$$\forall i > 0 :\; e_{i} < e_{2\cdot i} \;\; \& \;\; e_{i} < e_{2 \cdot i + 1}$$
![[Heap Example]]

The heap is "read" from top to bottom and left to right (follow the blue line). 
Where the nodes with numbers represent the elements value that needs to adhere to the heap condition. The left part of the image is called a **complete [[Binary Trees]]**. But do not need to be complete

The list view can be reconstructed by following the blue line.

> [!important] Important
> All the elements in a heap are not sorted BUT. All sorted sequences are valid heaps.
> As seen in the example image, elements can be larger in weird ways as not to be a sorted sequence.

**Tiny details:** 
- heaps start at index 1 otherwise the $e_{2 \cdot i}$ is possible to refer to itself.
- Height of a heap that has 3 elements is ONE because $log_{2}(3)=1$ rounded 
- With smaller than exclusive, you can have be assured that the relative order between elements of same value are kept.

# Sub Heaps
... (draw pls :))
Leafs can also be sub heaps.


# Scheme Application

Heap zal altijd een [[Volledige Boom|volledige boom]] hebben als 'beeld' en zla dit altijd onderhouden.
If complete a binary tree can be stored in a vector and children of a given index are easily found by using the heap condition's ruling. 
Left-Node: ${i \cdot 2}$
Left-Node: ${i \cdot 2 + 1}$
Parent node: $\lfloor{\frac{i}{2}}\rfloor$
## Use cases
- [[Priority Queues]]

## From scheme vector 
Index starts at "size - (quotient of size 2)"
Because then we get the last element that can be a child.

## Insert delete
For inserting an element append it as the last element and sift up until in its correct place
For deleting an element: Yeet the root and put the last element as new root. Then sift down until the heap condition is satisfied.
### Sift Up

### Sift Down
From the index in the heap check if the value from the node is larger (if comparator is <) than its children and then if so replace the index with its smallest child.
Keep in mind heap indeces for heap logic
Check oefening 8 hfd. 4


### Add Operation
...
### Delete operation
...