#lang racket
(provide remove-char)
; if s is empty
;   return s
; else if (c = first char of s)
;   return remove-char(all but first char of s)
; else
;   return first char of s concatenated with remove-char(all but first char of s)

(define(remove-char s c)
  (cond[(string=? s "") s]
       [(string=? (substring s 0 1) c) (remove-char(substring s 1) c)]
       [else (string-append(substring s 0 1) (remove-char(substring s 1 )c))]
       )
)