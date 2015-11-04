;;; interactive miniKanren talk

;;; https://github.com/webyrd/codemesh2015

;;; Please paste code into Veneer:

;;; http://tca.github.io/veneer/editor.html

; x  <- variable
; (lambda (x) y) <- abs
; (f g) <- application

(define lc-syn
  (lambda (term)
    (conde
     ((symbolo term))
     ((fresh (x t)
        (== `(lambda (,x) ,t) term)
        (symbolo x)
        (lc-syn t)))
     ((fresh (e1 e2)
        (== `(,e1 ,e2) term)
        (lc-syn e1)
        (lc-syn e2)))
     )))

(lc-syn `(lambda (z) (z z)))