(define (my-if test t f)
  (cond
    (test t)
    (else f)))



(define (check-db0-if x y)
  (if (= y 0)
      x
      (/ x y)))

(define (check-db0-my-if x y)
  (my-if (= y 0)
         x
         (/ x y)))

;Zelfde als bij or en my-or special form bullshittery
;2de wordt niet gecheckt bij sf.
(check-db0-if 6 0)
(check-db0-my-if 6 0)