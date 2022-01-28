#lang racket
(provide sum-alternate)
;  Takes a positive integer x as a parameter.
; The function should return the sum of all the integers x, x-2, x-4, x-6, etc, as long as the numbers are positive.

(define(sum-alternate x)
  (if (< x 2)
      x
      (+ x (sum-alternate(- x 2)))
  ))