
; Rule 1: check_animal
(deftemplate animal
  (slot type))

(defrule check_animal
  ?a <- (animal (type ?t))
  (test (or (eq ?t duck) (eq ?t turtle)))
  =>
  (printout t "The animal is a " ?t crlf))

; Rule 2: Rectangle Perimeter
(deftemplate rect
  (slot height)
  (slot width))

(defrule perimeter
  ?r <- (rect (height ?h) (width ?w))
  =>
  (bind ?p (* 2 (+ ?h ?w)))
  (printout t "Perimeter of rectangle is: " ?p crlf))
