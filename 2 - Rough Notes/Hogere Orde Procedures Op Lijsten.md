___
**TLDR:** 3 bekende Hogere orde functies.

# Map
```scheme
(define (map proc lst)
  (if (null? lst)
  '()
  (cons (cube (car lst)
        (proc (cdr lst)))))
  )
```


# Example
