(defmacro let1 (var val &body body)
    `(let ((,var ,val))
         ,@body))

(let1 foo (+ 2 3)
    (* foo foo))
