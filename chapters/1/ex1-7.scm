;; Design a square-root procedure for good enough? such that it watches how guess changes
;; from one iteration to the next and stops when the change is a very small fraction of the guess

;; Guess evaluation procedure
(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x) x)))

;; Computes the quotient of the radicand and the old guess
(define (improve guess x)
  (average guess (/ x guess)))

;; Get average of two numbers
(define (average x y)
  (/ (+ x y) 2))

;; Get the absolute value of a number
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

;; Good enough? procedure
;; How much did the guess change? => (abs (- guess next-guess))
;; Copmare the change in size of the guess => (/ (abs (- guess next-guess)) guess)
;; stop when the guess is tiny => (< ... 0.001)
(define (good-enough? guess next-guess)
  (< (/ (abs (- guess next-guess)) guess)
     0.001))

;; main procedure where the initial guess is 1
(define (sqrt x)
  (sqrt-iter 1.0 x))
