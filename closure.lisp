(let ((count 0)) #'(lambda () (setf count (1+ count))))

(defparameter *fn* (let ((count 0)) #'(lambda () (setf count (1+ count)))))

(let ((count 0))
    (list
    #'(lambda () (incf count))
    #'(lambda () (decf count))
    #'(lambda () count)))

