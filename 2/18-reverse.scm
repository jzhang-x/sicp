;; 18-reverse.scm
(define (reverse lst)
  (if (null? lst)
      lst
      (cons (reverse (cdr lst)) (car lst))))

(reverse (list 1 2 3))
