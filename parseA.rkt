#lang racket
(require "match.rkt")

;S' → S$
;S → AB
;A → aaA | λ
;B → bbB | λ

(define (parseA toks)
  (cond ((not (list? toks)) false)
        ((empty? toks) toks)             ; $ predicts A -> λ
        ((equal? (first toks) "a") (parseA(match (match toks "a") "a"))) ; a predicts A -> aaA
        ((equal? (first toks) "b") toks) ; b predicts A -> λ
        (else false)))
