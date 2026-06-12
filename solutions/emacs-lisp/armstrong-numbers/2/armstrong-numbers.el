;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; An Armstrong number is a number that is the sum of its own digits
;; each raised to the power of the number of digits.
;; https://exercism.org/tracks/emacs-lisp/exercises/armstrong-numbers

;; Iteration 2, more clean, string manipulation could be exchanged for
;; arithmetic digit extraction

;;; Code:


(defun armstrong-p (n)
  "Determine if N is an Armstrong number"
  (let* ((digits (string-to-list (number-to-string n )))
         (digits (mapcar (lambda (c) (string-to-number (string c)))  digits))
         (ndig (length digits)))
    (= n (seq-reduce #'+ (mapcar (lambda (x) (expt x ndig)) digits) 0))
    ))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
