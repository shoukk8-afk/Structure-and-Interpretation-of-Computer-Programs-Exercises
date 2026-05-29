#lang sicp
; 直接的
(define (tree-map func tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (func tree))
        (else (cons (tree-map (car tree))
                    (tree-map (cdr tree))))))

; mapと再帰を用いたとき
(define (tree-map func tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map func sub-tree)
             (func sub-tree)))
       tree))
