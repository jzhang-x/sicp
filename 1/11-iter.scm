;;; 11-iter.scm
(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 2 n)))

(define (f-iter a b c i n)
  (if (= i n)
      a
      (f-iter (+ a (* 2 b) (* 3 c))
	      a
	      b
	      (+ i 1)
	      n)))
