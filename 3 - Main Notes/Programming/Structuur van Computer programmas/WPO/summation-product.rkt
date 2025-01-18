(#%require racket/trace)

;Summation
(define (sum term i next t)
  (if (> i t)
      0
      (+ (term i) (sum term (next i) next t))))

(define (term i) (/ i 2))
(define (next i) (+ i 1))
(sum  term 0 next 5)


;Product
(define (product factor i next t)
  (if (> i t)
      1
      (* (factor i) (product factor (next i) next t))))

(product (lambda (i) (/ i 2)) 1 (lambda (i) (+ i 1)) 50)


(define (iter-product factor i next t)

  (define (iter ctr t result)
    (if (> ctr t)
        1
        (iter (next ctr) (* (factor i) result))))
  (iter i 50 1)
  )
(product (lambda (i) (/ i 2)) 1 (lambda (i) (+ i 1)) 50)

(define (factorial n)
  (* (product (lambda (i) i) 1 (lambda (i) (+ i 1)) n))
  )

(factorial 5)



(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner result (term a)))))
  (iter a null-value))


(define (product factor a next b)
  (accumulate * 1 factor a next b))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (add a b)
  (accumulate + a (lambda (i) 1) 1 (lambda (i) (+ i 1)) b))

(define (multiply a b)
  (accumulate + 0 (lambda (i) a) 1 (lambda (i) (+ i 1)) b))

(multiply 3 4)