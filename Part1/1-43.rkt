#lang sicp
(define (square x) (* x x))
(define (repeated f n)
  (if (= n 1)
      (lambda (x) (f x))
      ;再帰ステップを、「n-1回までの手続き」と「fを1回のみ適用させる手続き」の合成と考える
      (compose (repeated f (- n 1)) f)))

((repeated square 2) 5)
;625
