#lang sicp
;チャーチ数
(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;+の実装
(define (+ a b)
  (lambda (f) (lambda (x) ((a f) ((b f) x)))))
