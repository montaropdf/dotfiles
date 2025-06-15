(setq reve:cl-implementation (executable-find "sbcl"))

(use-package sly
  :straight t
  :defer t
  :config (setq inferior-lisp-program reve:cl-implementation))

;; (use-package sly-quicklisp
;;   :straight t
;;   :after sly
;;   :requires sly
;;   :defer t)

;; (use-package sly-asdf
;;   :straight t
;;   :after sly
;;   :requires sly
;;   :defer t
;;   :config (add-to-list 'sly-contribs 'append))

;; (use-package sly-repl-ansi-color
;;   :straight t
;;   :after sly
;;   :requires sly
;;   :defer t)
