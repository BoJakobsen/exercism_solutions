;;; allergies.el --- Allergies Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; Given a person's allergy score, determine whether or not they're allergic to a given item, and their full list of allergies.
;; An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).
;; https://exercism.org/tracks/emacs-lisp/exercises/allergie

;;; Code:

;; Define relation between allergies and score
(defvar allergies--alist
  '(("eggs" . 1)
    ("peanuts" . 2)
    ("shellfish" . 4)
    ("strawberries" . 8)
    ("tomatoes" . 16)
    ("chocolate" . 32)
    ("pollen" . 64)
    ("cats" . 128))
  "Allergen-to-bitscore mapping.")

(defun allergen-list (score)
  "Given SCORE list all allergies"
  (mapcan (lambda (x)
            (let ((name (car x))
                  (id (cdr x)))
              (if (/= 0 (logand score id)) (list name))))  
          allergies--alist))


(defun allergic-to-p (score allergen)
  "Given SCORE and ALLERGEN determine if person is allergic to the allergen"
  (let ((id (alist-get allergen allergies--alist nil nil #'equal))) ; Long version of alist-get due to string keys.
    (if (/= 0 (logand score id)) t)))


(provide 'allergies)
;;; allergies.el ends here
