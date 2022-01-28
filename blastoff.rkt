#lang racket
(provide blastoff)

(define (blastoffhelper fs x)
  (if (= x 1)
      (string-append fs (number->string x))
      (blastoffhelper (string-append (string-append fs (number->string x)) " ") (sub1 x))))

(define (blastoff x)
  (if (= x 1)
      (number->string x)
      (blastoffhelper (string-append (number->string x) " ") (sub1 x))))