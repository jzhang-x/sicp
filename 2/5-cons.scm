;; 5-cons.scm

(define (cons x y)
  (* (expt 2 x) (expt 3 y)))

(define (com z n r)
  (if (= 0 (remainder z n))
      (com (/ z n) n (+ r 1))
      r))

(define (car z)
  (com z 2 0))

(define (cdr z)
  (com z 3 0))

(define t (cons 5 6))
(car t)
(cdr t)
