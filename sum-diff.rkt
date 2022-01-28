#lang racket
(provide sum-diff)

(define (helper xs ys sum)
  (if (empty? xs)
      sum
      (helper (rest xs) (rest ys) (+ sum (abs (- (first xs) (first ys)))))))


(define (sum-diff xs ys)
  (if (and (empty? xs) (empty? ys))
      0
      (helper xs ys 0)))