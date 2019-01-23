#lang racket

(require macro-debugger/stepper)
(require racket/match)

(define (match-cmd kw kw.cmd)
  (if (null? kw.cmd)
      no-cmd
      (if (equal? kw (car (first kw.cmd)))
          (cdr (first kw.cmd))
          (match-cmd kw (rest kw.cmd)))))

(define (hello fn) (print fn))
(define (pouette) 'pouette)
(define (no-cmd) 'error)
(define kw.cmd (list (cons 'hello hello) (cons 'pouette pouette)))

;(case-cmd 'pouette kw.cmd)

;(expand/step #'(case-cmd 'hello kw.cmd))
