; 35-count-leaves.scm

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate +
              0
              (map (lambda (x)
                     (cond ((null? x) 0) 
                           ((pair? x) (count-leaves x))
                           (else 1))) 
                   t)))

(count-leaves (list (list 1 (list 2 3)) (list (list 4 5) (list 6 7))))
