; 29-simpson.scm

(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* k h))))
  (define (factor k)
    (cond ((or (= k 0)
	       (= k n))
	   1)
	  ((even? k) 2)
	  (else 4)))
  (define (term k)
    (* (factor k) (y k)))
  (define (next k)
    (+ k 1))
  (if (even? n)
      (* (/ h 3) (sum term 0 next n))
      (display "n should be even.")))
