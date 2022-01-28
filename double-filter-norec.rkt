#lang racket
(provide double-filter-norec)

; return xs, keeping only elems making f and g true
(define (double-filter-norec f g xs)
(filter f(filter g xs)))