as yet unclassified
fact
^'(define (fact-r n acc)
	(if (<= n 1)
		acc
		(fact-r (- n 1) (* acc n))))

(define (fact n)
	(fact-r n 1))'