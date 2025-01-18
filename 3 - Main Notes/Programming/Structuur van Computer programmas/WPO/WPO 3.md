
## Getal van Euler
Via staart recursie
```scheme
(define (calc-e n)
  (define (calc-e-helper fac-counter fac-result result)

    (if (= fac-counter (+ n 1))
        result
        (calc-e-helper (+ fac-counter 1)
                       (* fac-result (+ fac-counter 1))
                       (+ (/ 1 fac-result) result))
        )
    )
  (trace calc-e-helper)
  (calc-e-helper 1 1 1)
  )

(exact->inexact (calc-e 10))
(trace calc-e)

```

Via een do
```scheme
(define (calc-e n)
  (do
      ((counter 1 (+ counter 1))
       (fac-result 1 (* fac-result (+ counter 1)))
       (result 1 (+ (/ 1 fac-result) result)))
    ((= counter (+ n 1)) result)
    )
  )

(exact->inexact (calc-e 10))

```

![[Pasted image 20241007122826.png]]