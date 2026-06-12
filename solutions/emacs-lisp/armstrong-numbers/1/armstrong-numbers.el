;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; An Armstrong number is a number that is the sum of its own digits
;; each raised to the power of the number of digits.
;; https://exercism.org/tracks/emacs-lisp/exercises/armstrong-numbers

;; This solution feels clunky and not very lisp-y

;;; Code:


(defun armstrong-p (n)
  "Determine if N is an Armstrong number"
  (let* ((digits (string-to-list (number-to-string n )))
         (ndig (length digits))
         (acc 0))
   (dolist (digit digits)
     (setq acc  (+ acc (expt (string-to-number (string  digit)) ndig))))
   (= acc n)))


(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
