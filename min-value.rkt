#lang racket
(provide min-helper)
; do not change any code above this line. Write your code below it.

; returns smallest element between acc and xs
(define (min-helper acc xs)
(cond[(empty? xs) acc]
     [(> acc (first xs)) (min-helper (first xs) (rest xs))]
     [else (min-helper acc (rest xs))]))


(define (min-value xs)
    (min-helper (first xs) (rest xs)))
