(use-package ansible
  :ensure t
  :requires yaml-mode
  :mode ("\\.yml|\\.yaml" . yaml-mode)
  :config (add-hook 'yaml-mode-hook '(lambda () (ansible 1))))

(use-package ansible-doc
  :requires ansible
  :ensure t)

(use-package jinja2-mode
  :ensure t
  :requires ansible
  :defer t
  :mode ("\\.j2|\\.jinja2" . jinja2-mode))
