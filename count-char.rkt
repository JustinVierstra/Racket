#lang racket
(provide count-char)

; if s is empty
;   return 0
; else if (c = first char of s)
;   return 1 + count-char(all but first char of s)
; else
;   return count-char(all but first char of s)

(define(count-char s c)
  (cond[(string=? s "") 0]
       [(string=? c (substring s 0 1)) (+ 1 (count-char (substring s 1) c))]
       [else (count-char (substring s 1)c) ]
       ))