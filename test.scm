(define rev (l1) (foldl cons '() l1))
(define sum (l1) (foldl + 0 l1))
(define is3 (l1) (map ((curry =) 3) l1))
(define double (l1) (map ((curry *) 2) l1))

(define revapp (l1 l2)
  (if (null? l1)
    l2
    (revapp (cdr l1) (cons (car l1) l2))))

(val a '(0 1 2 3))
(rev a)
(sum a)
(is3 a)
(double a)
(revapp a '())
(revapp a '(4 5 6))