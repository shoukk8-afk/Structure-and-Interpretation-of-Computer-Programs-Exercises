#lang sicp
(define (make-interval a b) (cons a b))
(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))

;sub-intervalの実装
(define (sub-interval x y)
  (abs (- (- (upper-bound x) (lower-bound x))
          (- (upper-bound y) (lower-bound y)))))
