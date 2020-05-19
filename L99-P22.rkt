#lang racket

(define (interval a b)
  (cond ((= a b) (cons a empty))
        ((< a b)
         (cons a (interval (+ a 1) b)))
        ((> a b)
         (cons a (interval (- a 1) b)))))

(provide interval)