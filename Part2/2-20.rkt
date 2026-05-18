#lang sicp
(define (same-parity . items)
  (define (parity list n)
    (cond ((null? list) '())
          ((= n (remainder (car list) 2))
           (cons (car list) (parity (cdr list) n)))
          (else
           (parity (cdr list) n))))
  (parity items (remainder (car items) 2)))
