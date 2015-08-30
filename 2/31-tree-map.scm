; 31-tree-map.scm

(define (square x)
  (* x x))

(define (tree-map fun tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (fun tree))
        (else (cons (tree-map fun (car tree)) (tree-map fun (cdr tree))))))

(define (square-tree tree)
  (tree-map square tree))

(square-tree 
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
