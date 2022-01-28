#lang racket
(provide great-divide)

; if (y == 1)
;    return 1
; else if (y is a factor of x)
;    return y
; else
;    return great-divide(x, y-1)

(define (great-divide x y) 
  (cond [(= y 1) 1]
        [(= (remainder x y) 0) y]
        [else (great-divide x (sub1 y))]
        )

  )