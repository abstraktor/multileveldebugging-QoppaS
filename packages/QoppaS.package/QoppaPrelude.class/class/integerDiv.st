as yet unclassified
integerDiv
"(7 // 3) == (7 - (7 \\ 3) / 3)"
^'

(define (// a b)
      (/ (- a (quo a b)) b))

(define small-integer-minimum ', SmallInteger minVal, ')
'