- [i] Status: 
- [i] Back links: 
___
**TLDR:** Is een special form die de ' nadoet en een gegeven 'string' of whatever omzet in een symbool.

```scheme
(define q (quote test))
(define s 'test)

(eq? q s)
> #t
```

Scheme is een homoiconische taal wat betekend dat de "functies" en parameter data op dezelfde manier geschreven is. Voorbeeld:
```scheme 
(define expr '(+ 2 3))

;; 'expr' is een lijst die een expressie voorstelt.
;; Met 'eval' kunnen we die expressie evalueren.
(display (eval expr))
> 5
```

in C# moet men al speciale klassen gaan gebruiken om dit te emuleren.
```c#
// Een expressieboom maken die de optelsom van 2 en 3 representeert.
Expression<Func<int>> expr = () => 2 + 3; // De expressie compilerenen uitvoeren 
int result = expr.Compile()(); 
Console.WriteLine(result); // Output: 5

```

# Example
Met Scheme kan je dus ook een volledig bestand als symbool opslaan. Voorbeeld: 
```scheme
(define program '((define (display-n char n)

  (do
      ((counter n (- counter 1)))
    ((<= counter 0))
    (display char)
    )
  )



(define (parasol n)
  (define (draw-log n)
    (define log-height 3)
    
    (do ((i 0 (+ i 1)))
      ((= i log-height))
      (display-n " " (- n 1))
      (display "*")
      (newline)
      )
    )
  (do
      ((counter-x 1 (+ counter-x 1))
       )
    ((= counter-x (+ n 1)))
    (display-n " " (- n counter-x))
    (display-n "*" (- (* counter-x 2) 1))
    (newline)
    )
  (draw-log n)
  )


(parasol 5)))

program

>((define (display-n char n) (do ((counter n (- counter 1))) ((<= >counter 0)) (display char)))
>(define (parasol n)
>  (define (draw-log n)
>    (define log-height 3)
>    (do ((i 0 (+ i 1))) ((= i log-height)) (display-n " " (- n 1)) (display "*") (newline)))
>(do ((counter-x 1 (+ counter-x 1)))
>    ((= counter-x (+ n 1)))
>  (display-n " " (- n counter-x))
>  (display-n "*" (- (* counter-x 2) 1))
>  (newline))
>(draw-log n))
>(parasol 5))
```

# References
[[Hoofdstuk 5 - Lijsten en Symbolische Data.pdf]]