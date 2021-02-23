(setq reve:cl-implementation (executable-find "sbcl"))

(use-package sly
  :ensure t
  :defer t
  :config (setq inferior-lisp-program reve:cl-implementation)
  (setq sly-contribs '(sly-fancy)))

(use-package sly-quicklisp
  :ensure t
  :after sly
  :requires sly
  :defer t)

(use-package sly-asdf
  :ensure t
  :after sly
  :requires sly
  :defer t)
