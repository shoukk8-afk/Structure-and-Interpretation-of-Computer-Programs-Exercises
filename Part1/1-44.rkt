#lang sicp
(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

; 連続した平滑化
(define (compose f g)
  (lambda (x) (f (g x))))
(define (repeated f n)
  (if (= n 1)
      (lambda (x) (f x))
      (compose (repeated f (- n 1)) f)))
(define (square x) (* x x))

(repeated (smooth square) 3)
