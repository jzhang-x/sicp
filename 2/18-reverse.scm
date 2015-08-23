;; 18-reverse.scm

(define (reverse lst)
  (if (null? lst)
      lst
      (append (reverse (cdr lst)) (list (car lst)))))

(define (reverse2 lst)
  (define (iter lst res)
    (if (null? lst)
	res
	(iter (cdr lst) (cons (car lst) res))))
  (iter lst '()))

;(reverse (list 1 2 3))
(reverse2 (list 1 2 3 4 5))
