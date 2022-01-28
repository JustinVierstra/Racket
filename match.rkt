#lang racket/base
(require racket/bool)
(require racket/list)
(provide match)

; match : list item -> list or false
; if first item of list equals item return rest of list, else false
; Examples:
;   (match '("a" "b" "c") "a")  -> '("b" "c")
;   (match '("a" "b" "c") "b")  -> false
;   (match '("a") "a")          -> '()
;   (match '() "a")             -> false
;   (match false "a")           -> false
(define (match toks tok)
    (cond ((not (list? toks)) false)       ;<= It's an error to be passed non-list
        ((empty? toks) false)             ;  When list empty return false
        ((string? (first toks))(if(equal?(first toks) tok) (rest toks) false))
        (else false)))                   ;<= It's an error if next token is unexpected                ;<= It's an error if next token is unexpected
