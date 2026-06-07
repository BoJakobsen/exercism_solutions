;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; Very compact solution using the primitive mapcar

;;; Code:


(defun accumulate (lst op)
    (mapcar op lst))


(provide 'accumulate)
;;; accumulate.el ends here
