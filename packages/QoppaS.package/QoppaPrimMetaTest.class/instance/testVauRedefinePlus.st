as yet unclassified
testVauRedefinePlus
	self assert: -1 equals: (self operateFile: '
((vau (name-of-define null) env
    (set-car! env (cons
        (cons name-of-define
            (cons (vau (name exp) defn-env
                    (set-car! defn-env (cons
                        (cons name (cons (eval defn-env exp) null))
                        (car defn-env))))
                null))
        (car env))))
    define ())

	(define + -)

	(+ 1 2)
	')