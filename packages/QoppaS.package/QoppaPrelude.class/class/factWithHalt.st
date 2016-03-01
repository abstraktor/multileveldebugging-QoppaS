as yet unclassified
factWithHalt
^'(define (fact-r n acc)
	(if (<= n 1)
		(begin (halt) acc)
		(fact-r (- n 1) (* acc n))))

(define (fact n)
	(fact-r n 1))'