___
## Define Procedure

```scheme
(define (<naam> <parameters>) <uitdrukkingen>) ;Glazed
=
(define <naam> (lambda (<parameters>) <uitdrukkingen>)) ;No glaze
```

## Let

```scheme
(let ((<naam1> <uitdrukking1>)
      (<naam2> <uitdrukking2>)
      …
      (<naamn> <uitdrukkingn>)) 
    <uitdrukking'1>
    …
    <uitdrukking’m> )

=

((lambda (<naam1> <naam2> … <naamn>) 
   <uitdrukking'1>
   …
   <uitdrukking’m> )
<uitdrukking1> <uitdrukking2> <uitdrukkingn>)

```

## Let*

```scheme
(let* ((<naam1> <uitdrukking1>)
       (<naam2> <uitdrukking2>)
       …
       (<naamn> <uitdrukkingn>))
   <uitdrukking'1>
   …
   <uitdrukking’m> )

=

((lambda (<naam1>) 
   ((lambda (<naam2>) 
   …
   ((lambda (<naamn>) 
       <uitdrukking'1>
       …
       <uitdrukking’m>)
     <uitdrukkingn)
    …)
 <uitdrukking2>)
<uitdrukking1>)
```

## Letrec

```scheme
(letrec ((<naam1> <uitdrukking1>)
         (<naam2> <uitdrukking2>)
         …
         (<naamn> <uitdrukkingn>))
     <uitdrukking'1>
     …
     <uitdrukking’m> )
=

(let ((<naam1> '()) 
      …
      (<naamn> '())) 
  (set! <naam1> <uitdrukking1>)
  …
  (set! <naamn> <uitdrukkingn>)
  <uitdrukking'1>
  …
  <uitdrukking’m> )
```


## Example
