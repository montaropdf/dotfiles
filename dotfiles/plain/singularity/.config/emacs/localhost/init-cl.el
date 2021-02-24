(setq reve:cl-implementation (executable-find "sbcl"))

(use-package sly
  :ensure t
  :defer t
  :config (setq inferior-lisp-program reve:cl-implementation))

;; (use-package sly-quicklisp
;;   :ensure t
;;   :after sly
;;   :requires sly
;;   :defer t)

;; (use-package sly-asdf
;;   :ensure t
;;   :after sly
;;   :requires sly
;;   :defer t
;;   :config (add-to-list 'sly-contribs 'append))

;; (use-package sly-repl-ansi-color
;;   :ensure t
;;   :after sly
;;   :requires sly
;;   :defer t)
