(use-package transient
  :straight t)

(use-package magit
  :straight t
  :bind ("C-x g" . magit-status))

;; (use-package emacsql-sqlite
;;   :straight t)

(use-package forge
  :straight t
  :after (magit ;; emacsql-sqlite
	  ))
