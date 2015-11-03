as yet unclassified
testDefine
	self assert: true equals: (self eval: '((vau (name-of-define null) env
    (set-car! env (cons
        (cons name-of-define
            (cons (vau (name exp) defn-env
                    (set-car! defn-env (cons
                        (cons name (cons (eval defn-env exp) null))
                        (car defn-env))))
                null))
        (car env))))
    define ())').
	self assert: true equals: (self eval: '(define quote (vau (x) _ x))').