(use-package pass
  :ensure t
  :config
  (setq password-store-password-length 15))

(use-package ivy-pass
  :ensure t
  :after (ivy pass))

(use-package password-store
  :ensure t
  :after pass)
