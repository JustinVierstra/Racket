#lang racket
(provide more)
; do not change any code above this line. Write your code below it.

; return true iff xs has more elements than ys
(define (helper list1 list2)
(cond[(empty? list1) #f]
     [(empty? list2) #t]
     [else(helper (rest list1) (rest list2))])
  )

(define (more xs ys)
  (if (and (empty? xs) (empty? ys))
      #f
      (helper xs ys)
      ))