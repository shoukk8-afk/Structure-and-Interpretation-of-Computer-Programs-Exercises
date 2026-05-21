#lang sicp
(define (square x) (* x x))

#再帰版
(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items))
            (square-list (cdr items)))))

#mapを使った実装
(define (square-list items)
  (map square items))
