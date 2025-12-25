(setq org-plantuml-executable-path "/usr/sbin/plantuml")
(setq org-plantuml-exec-mode 'plantuml)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((plantuml . t)
   (emacs-lisp . nil)))
