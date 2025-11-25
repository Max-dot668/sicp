;; Exercise 1.5

;; (p) is a procedure that calls itself forever (non-terminating).
(define (p) (p))

;; test returns 0 if x = 0, otherwise returns y.
(define (test x y)
  (if (= x 0) 0 y))

;; In normal-order evaluation, (test 0 (p)) would return 0 because
;; (p) would not be evaluated unless needed.
;;
;; MIT Scheme uses applicative-order evaluation, so it tries to evaluate
;; the argument (p) before calling test. Since (p) never returns, the
;; interpreter hangs here.
(test 0 (p))
