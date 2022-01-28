#lang racket
(require "quizS.rkt")

;S' → S$
;S → AB
;A → aaA | λ
;B → bbB | λ

(define (parseS toks)
  (cond ((not (list? toks)) false)
        ((empty? toks) toks)             ; $ predicts S -> AB
        ((equal? (first toks) "a") (parseB (parseA toks))) ; a predicts S -> AB
        ((equal? (first toks) "b") (parseB toks)) ; b predicts S -> AB
        (else false)))