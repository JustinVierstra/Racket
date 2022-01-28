(define (summax f g xs)
    (if (empty? xs)
        0
        (+ (max (f (first xs)) (g (first xs))) (summax f g (rest xs)))))