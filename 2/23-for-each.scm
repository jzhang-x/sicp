; 23-for-each.scm

(define (for-each fun lst)
  (if (not (null? lst))
      (begin
        (fun (car lst))
        (for-each fun (cdr lst)))))

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))
