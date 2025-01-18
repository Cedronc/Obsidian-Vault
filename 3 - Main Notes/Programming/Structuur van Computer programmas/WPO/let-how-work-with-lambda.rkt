(let* ((x 2)
       (y (+ x 8))
       (z (/ y x)))
  (+ x y z))


(
 (lambda (x)
   ((lambda (y)
      ((lambda (z)
         (+ x y z))
       (/ y x)))
    (+ x 8)))
 2)
