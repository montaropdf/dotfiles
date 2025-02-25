(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;; (use-package emacsql-sqlite
;;   :ensure t)

(use-package forge
  :ensure t
  :after (magit ;; emacsql-sqlite
		))
