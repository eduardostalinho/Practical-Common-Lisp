(ql:quickload "cl-who")
(ql:quickload "hunchentoot")
(ql:quickload "parenscript")

(in-package :cl-user)

(defpackage :xpto
  (:use :cl :cl-who :hunchentoot :parenscript))

(in-package :xpto)

(defclass game ()
  ((name  :initarg :name)
   (votes :initform 0)))

(defmethod vote-for (user-selected-game)
  (incf (votes user-selected-game)))
