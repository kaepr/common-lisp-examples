(defstruct person
    name
    age
    waist-size
    favorite-color)


(defparameter *bob* (make-person 
                        :name "Bob"
                        :age 25
                        :waist-size 32
                        :favorite-color "blue"))

(setf (person-age *bob*) 36)

(length '(a b c))
(length "blub")

(reduce #'+ '(1 2 3 4 5))
(reduce (lambda (best item)
            (if (and (evenp item) (> item best))
                item
                best))
        '(7 4 6 5 2)
    :initial-value 0)

(subseq "america" 2 6)

; (defun add (a b)
;     (cond ((and (numberp a) (numberp b)) (+ a b))
;           ((and (listp a) (listp b)) (append a b))))

(defmethod add ((a number) (b number))
    (+ a b))

(defmethod add ((a list) (b list))
    (append a b))
