;; 38-e.scm

(define (cont-frac n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (- i 1) (/ (N i) (+ (D i) result)))))
  (iter (- k 1) (/ (N k) (D k))))
      
(define (e k)
  (define (N i)
    1)
  (define (D i)
    (if (= 0 (remainder (+ i 1) 3))
        (* 2 (/ (+ i 1) 3))
        1))
  (+ 2.0 (cont-frac N D k)))

(e 10)
