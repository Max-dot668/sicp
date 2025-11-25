;; Exercise 1.6
;; Demonstrate why using new-if breaks the sqrt procedure.

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

;; Original sqrt procedure
(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)) 0.001))

(define (average a b)
  (/ (+ a b) 2))


;; New-if defintion
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; Using the new-if normal procedure will cause an infinite recursion
;; - Scheme evaluates all its arguments before executing
;; - so even if the predicate is true, the else branch is evaluated
;; - this is a case of infinite recursion
;; - that's why the built-in if special form is preferred 
