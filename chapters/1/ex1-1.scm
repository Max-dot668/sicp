;; Exercise 1.1
;; Literal expressions
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))

;; Variable defintions
(define a 3)
(define b (+ a 1))

;; Expressions using variables
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)

;; Conditionals
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
