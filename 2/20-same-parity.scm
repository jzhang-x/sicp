; 20-same-parity.scm

(define (same-parity . lst)
  (define (filter tester lst)
    (if (null? lst)
        lst
        (if (tester (car lst))
            (cons (car lst) (filter tester (cdr lst)))
            (filter tester (cdr lst)))))
  (if (odd? (car lst))
      (filter odd? lst)
      (filter even? lst)))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
