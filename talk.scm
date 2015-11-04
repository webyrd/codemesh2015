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
   ;  ()
     ((fresh (x t)
        (== `(lambda (,x) ,t) term)))
     ((fresh (e1 e2)
        (== `(,e1 ,e2) term)))
     )))

(lc-syn `(lambda (z) z))
