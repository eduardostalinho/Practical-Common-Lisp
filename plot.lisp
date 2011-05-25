(defun plot (fn min max step)
    (loop for i from min to max by step do
        (loop repeat (funcall fn i) do (format "*"))
        (format t "~%")))
