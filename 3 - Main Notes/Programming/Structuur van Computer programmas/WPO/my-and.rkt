(define (my-and bool1 bool2)
  (if bool1
      bool2
      #f)
  )

(my-and (> 1 2) 1)
(and (> 1 2) (1))
(my-and (< 1 2) 1)

(and (< 1 2) (1))