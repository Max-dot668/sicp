;; Compute x cubed (helper function)
(define (cube x) (* x x x))

;; Return #t if relative change between guesses is tiny
(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 1e-11))

;; Iteratively improve guess until convergence
(define (cube-root-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (cube-root-iter (improve guess x) x)))

;; Newton's method update for cube root
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

;; Compute cube root of x
(define (cube-root x)
  (cube-root-iter 1.0 x))
