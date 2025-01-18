(define (my-or bool1 bool2)
  (if bool1
      bool1
      bool2))

;gaat kaput als 2de param een procedure is.
(my-or #t #f)

;gaat niet kaput als 2de param een procedure is enkel als 1ste param false is.
(or #f (1))
(or #t (1))

;Komt omdat and een special form is en my-and niet dus worden de 2 params
;direct geevalueert.
;Zelfde voor my and