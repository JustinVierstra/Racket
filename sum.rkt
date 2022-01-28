#lang racket
(provide sum)

; At each call, the answer is accum + (sum of remaining values in xs)
; which means when xs is empty the answer is in accum. Each call should
; make xs smaller and accum larger.
(define (sum-helper accum xs)
  (if(empty? xs)
     accum
     (sum-helper (+ accum (first xs)) (rest xs))))

(define (sum xs)
  (sum-helper 0 xs))
