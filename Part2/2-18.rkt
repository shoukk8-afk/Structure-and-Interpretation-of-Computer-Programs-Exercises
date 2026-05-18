#lang sicp
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

; 解答
(define (reverse items)
  (let ((l (- (length items) 1)))
    (define (reverse-list list n)
      (if (= n (- 1))
          nil
          (cons (list-ref list n) (reverse-list list (- n 1)))))
    (reverse-list items l)))
