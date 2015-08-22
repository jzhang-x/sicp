;; 17-last-pair.scm

(define (last-pair lst)
  (cond ((null? lst) nil)
        ((null? (cdr lst)) lst)
        (else (last-pair (cdr lst)))))

(last-pair (list 1 2 3))
