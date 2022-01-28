#lang racket
(provide all-same)

; Takes a string as a parameter and evaluates to true if every character in the string is the same.

(define (all-same s)
  (cond [(= (string-length s) 0) #t]
        [(= (string-length s) 1) #t]
        [else (if (string=? (substring s 0 1) (substring s 1 2)) 
                  (all-same (substring s 1))
                  #f
             )]))
