;; Exercise 1.3
;; Takes three numbers as arguments and returns the sum of squares of the two larger numbers.

;; Square procedure
(define (square x)
  (* x x))

;; Sum of squares procedure
(define (sum-of-squares x y)
  (+ (square x) (square y)))

;; Largest value procedure
(define (max a b)
  (cond ((> a b) a)
        ((> b a) b)))

;; Smallest value procedure
(define (min a b)
  (cond ((< a b) a)
        ((< b a) b)))

;; Largest of three numbers
(define (largest a b c)
  (max a (max b c)))

;; Smallest of three numbers
(define (smallest a b c)
  (min a (min b c)))

;; Second largest of three numbers
(define (second-largest a b c)
  (- (+ a b c)
     (largest a b c)
     (smallest a b c)))

;; Computation procedure
(define (sum-squares-largest-two a b c)
  (sum-of-squares (largest a b c)
                  (second-largest a b c)))

