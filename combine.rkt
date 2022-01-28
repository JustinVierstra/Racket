#lang racket
(provide combine)

(define (combine f g)
  (lambda (x) (g (f x))))