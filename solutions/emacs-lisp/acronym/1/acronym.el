;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; Generate an acronym from a phrase.
;; Multiple implementations for practice.

;;; Code:

;; Iterative simple version
(defun acronym-basic-iterative (phrase)
  "Return the acronym of PHRASE, using push/nreverse iteration."
  (let ((res)
        (parts (split-string phrase "[-_ ]" t)))
    (dolist (word parts)
      (push  (aref word 0) res))
    (upcase (concat (nreverse res)))))

;; mapconcat version, no explicit looping
(defun acronym-mapconcat (phrase)
  "Return the acronym of PHRASE, using mapconcat."
  (upcase
   (mapconcat (lambda (word) (substring word 0 1))
              (split-string phrase "[-_ ]" t) "" )))

;; Select one to test
;;(defalias 'acronym #'acronym-basic-iterative)
(defalias 'acronym #'acronym-mapconcat)

(provide 'acronym)
;;; acronym.el ends here