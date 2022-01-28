#lang racket
(provide double-filter)

; return xs, keeping only elems making f and g true
(define (double-filter f g xs)
  (cond [(empty? xs) #f]
        [(f(g (first xs))) (cons(first xs))]
        [else(double-filter f g (rest xs))]))