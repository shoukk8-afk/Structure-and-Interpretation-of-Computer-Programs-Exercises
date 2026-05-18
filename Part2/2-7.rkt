#lang sicp
(define (make-interval a b) (cons a b))

;upper-boundとlower-boundの実装
(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))
