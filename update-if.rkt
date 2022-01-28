#lang racket
(provide update-if)

(define (update-if f g xs)
  (cond [(empty? xs) xs]
        [(f (first xs)) (cons (g (first xs)) (update-if f g (rest xs)))]
        [else (update-if f g (rest xs))]))