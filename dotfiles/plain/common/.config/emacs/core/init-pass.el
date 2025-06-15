(use-package pass
  :straight t
  :config
  (setq password-store-password-length 15))

(use-package ivy-pass
  :straight t
  :after (ivy pass))

(use-package password-store
  :straight t
  :after pass)
