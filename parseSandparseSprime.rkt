#lang racket
(require "match.rkt")
(require "next.rkt")
(provide parseS)

; S' → S$
; S → aSz | bSy | λ

(define (parseS toks)
  (cond ((not (list? toks)) false)       ;<= It's an error to be passed non-list
        ((empty? toks) toks)             ; S -> lambda
        ((equal? (next toks) "z") toks)
        ((equal? (next toks) "y") toks)
        ((equal? (next toks) "a") (match(parseS (match toks "a")) "z"))  ; S -> aSz
        ((equal? (next toks) "b") (match(parseS (match toks "b")) "y"))  ;<= What to do for this acceptable next token
        (else false)))                   ;<= It's an error if next token is unexpected                ;<= It's an error if next token is unexpected
    
; First(S') = {a,b,$}. On any of these three, (parseS toks) and verify result is end-of-input.
(define (parseSprime toks)
  (cond ((not (list? toks)) false)
        ((empty? toks) (equal? (parseS toks) empty))             ; $ predicts S' -> S$
        ((equal? (next toks) "a") (equal? (parseS toks) empty))  ; a predicts S' -> S$
        ((equal? (next toks) "b") (equal? (parseS toks) empty))  ; b predicts S' -> S$
        (else false)))
