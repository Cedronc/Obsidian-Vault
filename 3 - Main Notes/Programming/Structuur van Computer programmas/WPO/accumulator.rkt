(#%require racket/trace)
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner result (term a)))))
  (iter a null-value))


(define (filtered-accumulate combiner filter? null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (if (filter? (term a))
            (iter (next a)
                  (combiner result (term a)))
            (iter (next a)
                  (combiner result null-value))
                  )))
    (iter a null-value))



(define gcd? (lambda (i n) (= (gcd i n) 1)))
      

(define (product-gcd n)
  (filtered-accumulate
   * (lambda (x) (gcd? x n)) 1
   (lambda (x) x)
   1
   (lambda (x) (+ x 1))
   n
   ))


(product-gcd 3)
