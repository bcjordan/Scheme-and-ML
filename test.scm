(define rev (l1) (foldl cons '() l1))
(define sum (l1) (foldl + 0 l1))
(define is3 (l1) (map ((curry =) 3) l1))
(define double (l1) (map ((curry *) 2) l1))
(define triple (l1) (map ((curry *) 3) l1))

(define insert (el l1) 
  (if (null? l1)
    (cons el l1)
    (if (< el (car l1))
      (cons el l1)
      (cons (car l1) (insert el (cdr l1))))))

(define sort (l1) (foldl insert '() l1))
  
(insert 3 '(0 1 2 4 5))
(sort '(5 3 2 8 9 12))

(define revapp (l1 l2)
  (if (null? l1)
    l2
    (revapp (cdr l1) (cons (car l1) l2))))

(val a '(0 1 2 3))
(rev a)
(sum a)
(is3 a)
(double a)
(triple a)
(revapp a '())
(revapp a '(4 5 6))
