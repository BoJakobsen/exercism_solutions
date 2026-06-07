;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; Very compact solution using the primitive mapcar

;;; Code:

;; this is cheating, but very compact
(defun accumulate (lst op)
    (mapcar op lst))

;; iterative version
(defun accumulate (lst op)
  "Apply OP to each element of LST and return the results as a new list."
  (let (res)
    (dolist (x lst)
      (push (funcall op x) res)) ;; very nice equivalent to (setq res (cons x res)))
    (nreverse res)))


(provide 'accumulate)
;;; accumulate.el ends here
