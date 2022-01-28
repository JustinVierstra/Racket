#lang racket
(provide next)

; next : list -> string or false
; if list not empty and first item a string, eval to first item, else false
; Examples:
;   (next '("a" "b" "c"))   -> "a"
;   (next '("a" 2 3))       -> "a"
;   (next '(1 "b" "c"))     -> false
;   (next "a")              -> false
;   (next '())              -> false
(define (next toks)
    (cond ((not (list? toks)) false)
        ((empty? toks) false)
        ((string? (first toks)) (first toks))
        (else false)))