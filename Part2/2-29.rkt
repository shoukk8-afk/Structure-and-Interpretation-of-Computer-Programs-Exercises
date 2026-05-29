#lang sicp
;2.29
(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))

(make-branch 5 (make-mobile 10 (make-branch 3 (make-mobile 4 6))))

(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length mobile)
  (car mobile))
(define (branch-structure mobile)
  (car (cdr mobile)))

(define (total-weight structure)
  (if (not (pair? structure))
      structure
      (+ (total-weight (branch-structure (left-branch structure)))
         (total-weight (branch-structure (right-branch structure))))))

(define (mobile-balanced structure)
  (cond ((not (pair? structure)) #t)
        ((and (= (* (branch-length (left-branch structure))
                    (total-weight (left-branch structure)))
              (* (branch-length (right-branch structure))
                 (total-weight (right-branch structure))))
              (mobile-balanced (left-branch structure))
              (mobile-balanced (right-branch structure)))
         #t)
        (else #f)))

; 2.29-d
; right-branchとbranch-structureを変えるだけでOK
(define (right-branch mobile)
  (cdr mobile))
(define (branch-structure mobile)
  (cdr mobile))          
