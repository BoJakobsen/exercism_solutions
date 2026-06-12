;;; allergies.el --- Allergies Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; Given a person's allergy score, determine which allergens they are
;; allergic to. The score is a bitfield where each bit corresponds to
;; one allergen.
;; https://exercism.org/tracks/emacs-lisp/exercises/allergies

;; Iteration 1, Working version
;; Iteration 2, A bit cleaner

;;; Code:

;; Define relation between allergies and score
(defconst allergies--alist
  '(("eggs"         . 1)
    ("peanuts"      . 2)
    ("shellfish"    . 4)
    ("strawberries" . 8)
    ("tomatoes"     . 16)
    ("chocolate"    . 32)
    ("pollen"       . 64)
    ("cats"         . 128))
  "Allergen-to-bitscore mapping.")

(defun allergen-list (score)
  "Return a list of allergens encoded in SCORE."
  (mapcan (lambda (entry)
            (let ((name (car entry))
                  (id (cdr entry)))
              (when (/= 0 (logand score id)) (list name))))  
          allergies--alist))


(defun allergic-to-p (score allergen)
  "Return non-nil if SCORE indicates allergy to ALLERGEN."
  (let ((id (alist-get allergen allergies--alist nil nil #'equal))) ; Long version of alist-get due to string keys.
    (/= 0 (logand score id))))  ; implicit return "not equal" returns true or nil 


(provide 'allergies)
;;; allergies.el ends here
