[[Trees]]

# Incomplete Tree vs. Complete Tree

If a heap where to be incomplete it is impossible *(maybe je ne sais pas eh)* to assign indices to the nodes and represent them in **scheme**. 

Complete Binary trees have the advantage of having no gaps and therefore are easier to assign indices.

# Complete Trees
'Tree without holes' with a possibility of no leaf nodes on the most bottom right side.

# Properties

**Prop. 1**
    always $2^{node}$ 


# Binary Search Tree (BST)

condition: left <, right > top element



# Klad

## Search Trees On Disk (Indices)
AVL?? (Is nog altijd BST)

T = Tijd om block te lezen of schrijven
    Ook wel $T = T_{seek} + T_{latency} + T_{transfer}$

Enkel de $B^{+}-Trees$

Record ID (rcid) = blck-ptr & slot nr
key = waarde in kolom?

Enkel in uw leaves zit de $key + rcid$
Alles boven de leaves is voor de wegwijzers. no clue wa ik aan het typen ben)

In de interne knopen zal elke key MAX 1 keer voorkomen.

Als (N = 4) => N+1 Search Tree.

≥ ≤: opgelet bij keys is zeer belangrijk.

Groot verschil bij $B-tree$ and $B^{+}-tree$ is dat bij het toevoegen van keys bij de ene naar boven propageert en niet blijft staan de andere wel fzo. Kweni goe.

