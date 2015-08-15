; 37-cont-frac.scm

(define (cont-frac n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (- i 1) (/ (N i) (+ (D i) result)))))
  (iter (- k 1) (/ (N k) (D k))))
      

(/ 1 (cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           9))