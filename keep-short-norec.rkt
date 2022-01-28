#lang racket
(provide keep-short-norec)

(define (keep-short-norec x xs)
  (if (empty? xs)
      xs
      (filter (lambda (str) (if (> x (string-length str))
                    #t
                    #f
                    )) xs)))