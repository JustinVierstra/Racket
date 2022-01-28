#lang racket
(provide keep-short-rec)

(define (helper x xs acc)
  (cond [(empty? xs) acc]
        [(<= x (string-length (first xs))) (helper x (rest xs) acc)]
        [else (helper x (rest xs)  (cons (first xs) acc)  )]))


(define (keep-short-rec x xs)
  (if (empty? xs)
      xs
      (reverse (helper x xs empty))))