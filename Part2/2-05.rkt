#lang sicp
;(^ a b)がaのb乗を計算するという仮定で
(define (cons a b)
  (* (^ 2 a) (^ 3 b)))

;carとcdrの定義
(define (car z)
  (define (two-div a i)
    (if (even? a)
        (two-div (/ a 2) (+ i 1))
        i))
  (two-div z 0))
(define (cdr z)
  (define (three-div a i)
    (if (= (remainder a 3) 0)
        (three-div (/ a 3) (+ i 1))
        i))
  (three-div z 0))
