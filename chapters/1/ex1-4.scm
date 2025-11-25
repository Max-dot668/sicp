;; Exercise 1.4
;; Describe the behavior of the following combination of compound expressions

(define (a-plus-abs-b a b)
  ((if (> b 0) + -)a b))

;; The if expression chooses an operator. + if b is positive, else -.
;; Since scheme treats operators as first-class procedures,
;; - on a negative b becomes subtraction of a negative number, which results in a + |b|
