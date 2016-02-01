as yet unclassified
smallPrelude
^'((vau (name-of-define null) env
    (set-car! env (cons
        (cons name-of-define
            (cons (vau (name exp) defn-env
                    (set-car! defn-env (cons
                        (cons name (cons (eval defn-env exp) null))
                        (car defn-env))))
                null))
        (car env))))
    define ())

(define quote (vau (x) _ x))

(define if (vau (b t f) env
    (eval env (bool (eval env b) t f))))

(define list (vau xs env
    (if (null? xs)
       ''()
        (cons
            (eval env (car xs))
            (eval env (cons list (cdr xs)))))))

(define wrap (vau (operative) oper-env
    (vau args args-env
        (operate args-env
            (eval    oper-env operative)
            (operate args-env list args)))))

(define lambda (vau (params body) static-env
    (wrap
        (eval static-env
            (list vau params ''_ body)))))'