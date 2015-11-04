;;; interactive miniKanren talk

;;; https://github.com/webyrd/codemesh2015

;;; Please paste code into Veneer:

;;; http://tca.github.io/veneer/editor.html

(fresh (y)
  (conde
   ((== 5 x))
   ((== 6 x)))) 
