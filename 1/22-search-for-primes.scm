; 22-search-for-primes.scm

(load "prime.scm")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (real-time-clock) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n c)
  (cond ((= c 0) (display "done!"))
	((prime? n)
	 (display n)
	 (newline)
	 (search-for-primes (+ n 1) (- c 1)))
	(else (search-for-primes (+ n 1) c))))

      
