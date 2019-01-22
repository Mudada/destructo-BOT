#lang racket

(require macro-debugger/stepper)
(require racket/match)

; ('pingo', <function>)

(define-syntax-rule (case-cmd kw kw.cmd)
  `[(equal? kw ,(car kw.cmd))
   ,(cdr kw.cmd)
   ]
  )

(define (hello) 'hello)
(define kw.cmd (cons 'hello hello))
(expand/step #'(case-cmd 'hello kw.cmd))
