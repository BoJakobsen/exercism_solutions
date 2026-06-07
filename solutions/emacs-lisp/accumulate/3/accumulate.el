;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; Very compact solution using the primitive mapcar

;;; Code:

;; this is cheating, but very compact
(defun accumulate-map (lst op)
    (mapcar op lst))

;; iterative version
(defun accumulate-iterative (lst op)
  "Apply OP to each element of LST and return the results as a new list."
  (let (res)
    (dolist (x lst)
      (push (funcall op x) res)) ;; very nice equivalent to (setq res (cons x res)))
    (nreverse res)))


;; Recursive version 
(defun accumulate-recursive (lst op)
  (if (null lst)
      nil ;; return empty list if lst is empty
    (cons (funcall op (car lst)) (accumulate-recursive (cdr lst) op))))

;; select one to test
(defalias 'accumulate #'accumulate-recursive)

(provide 'accumulate)
;;; accumulate.el ends here
