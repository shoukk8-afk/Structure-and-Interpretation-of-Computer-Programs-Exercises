#lang sicp
(define (cons x y)
  (lambda (m) (m x y)))
(define (car z)
  (z (lambda (p q) p)))

;cdrの実装
(define (cdr z)
  (z (lambda (p q) q)))
