# Data Values
**Compound Data Elements**
    - Pair, string, vector
    - Primitives combined
    string = list of char's
    vector: '#(...)
    string: "..."o

**Accessors**:
    getters

**Mutators**:
    setters

**Operation**:
    internal functions on the data value.
    ae. `reverse` on lists, `string-append`


# Algorithms

**Generality**
How much of the possible inputs of a certain data type can be used.
Ae. a fac that can only be applied to odd positive numbers is not very general.

**Computability**:
The ability to solve problems using only a finite of instructions. 
So trying to get an oracle to solve this multiplication is not computabel.

**Algorithmic constructors**:
do, let, let*, letrec, lambda, if. Are all algo. constructors meaning they are designed to make compound algorithms.

**Primitive algorithm**:
Scheme's built in procedures for example: `sin`,`+`,`display`
Procedures that cannot be split further making them atomic (in same language).

**Compound algorithm:**
Multiple of the primitive algorithms combined. Made of algorithmic constructors most likely. Not define because it doesn't combine code.



# Abstraction
Devides programmers into 2 groups
1. Users
2. Implementors

The major point of abstraction is simplification, hiding complexion and improving readability.

**Data abstraction**:
Abstraction around data structures. Ae. Heaps Trees, ...

**Procedural abstraction**:
Abstraction around algorithms. Ae. `fib`. The abstraction comes from giving the procedure a clear name that explains what it does. Thus increasing the readability.
Also avoids duplication of code. 


**Signature of procedures**:
(number -> number) is a signature we are meant to understand.
but better imo. is (number -> squared-nr) with a type definition like (typedef squared-nr number). *Not a real convention just in this course 😞*

Says what parameters are asked and given back. 


## ADT (Abstract Data Types)
Data abstraction that covers a group of data elements. 

*Definition: The data type along with procedural types that describe the procedures (getters, setters, operations) that can be applied to the data type.*

![[Pasted image 20241224134028.png| 350]]

This ADT describes a number with a real part and the imaginary part. With its constructor `new` and the accessors `real`, `imag`, `argument`. And the operations `modulus`, etc...

### Procedural Style
(define-library) with (import) and (export) clauses.

Import all except one or more? `(except (scheme base) complex?)`.
Because `complex?` is also implemented in the scheme base library. Giving a name clash.

Name clash occur when 2 libraries are imported with one or more of the same defined names. (complex? in base) (complex? in complex).`(prefix (scheme base) base:)` is also a fix.

Private procedures or getters can be achieved by simply not mentioning them in the export clause. Making them hidden to the users of the ADT.
#### Adding a record
Or simply procedural style added with records.
```scheme
(define-record-type complex
  (new r i)
  complex?
  (r real)
  (i imag))
```
This makes writing setters and getters easier. To add a getter add it behind the setter: 
`(r real real!)` with `real!` being the setter now.



### Object-based Style
This method encapsulates the ADT by using a [[Dispatcher]] procedure. This is disgusting OOP but cleaner abstraction. The abstraction leaks less detail to the user. Also the getters are cleaner being only one letter instead of the [[#Procedural Style]]'s `get-real`. 

### Generic ADT's
Genericity can be achieved like other languages with a generic T, but implemented in a whole other way. 
In the example below the "generic" `T` is the `sma` "smaller than" procedure, which the user would supply to the ADT.

*(example is in the procedural style of ADT's)*
```scheme
(define-library (max-o-mem)
  (export new max-o-mem? read write!)
  (import (scheme base))
  (begin
    (define-record-type max-o-mem
      (new sma val)
      max-o-mem?
      (sma <<)
      (val value value!))
  
    (define (read mom)
      (value mom))
 
    (define (write! mom new-value)
      (define sma (<< mom))
      (define val (value mom))
      (if (sma val new-value)
          (value! mom new-value))
      mom)))
```

Other examples of generic ADT's are Dictionary.

## Performance
Using stopwatch: bad (called experimental approach) because it doesn't give us a deeper understanding of the algorithm

Depends on many factors like the test data, computer specs its running on, background activities of computer, etc...


### [[Analytical Technique]]
**Performance characteristics** gives a funciton: $f_A(n)$
