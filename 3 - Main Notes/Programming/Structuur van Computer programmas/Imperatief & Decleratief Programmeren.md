- [i] Status: 
- [i] Back links: 
___
# Imperatief
**TLDR:** Sets van instructies, "doe dit" zonder perse iets te evalueren.

Eindelijk werkende variabelen. Special forms die dingen doen met memory krijgen een '!' achteraan. "set!".
Imperatief en functioneel code kunnen omgezet worden naar het anderen met genoeg prutsen.


## Example
```scheme
(define x 10)
x
> 10

(set! x 20)
x
> 20
```


set! is een special form, set-cdr! & set-car! zijn procedures. Let hier voor op.

```scheme
set-car!
>procedure:yap

set!
>bad syntax
```

# Decleratief 
Vb. Taal: SQL.

Je schrijft wat het programma moet doen bv selecteer uit een tabel de top 20.


