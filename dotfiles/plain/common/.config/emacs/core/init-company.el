(use-package company
  :ensure t
  :defer t
  :diminish (company-mode . " ⓐ")
  :config
  (progn
    (setq company-tooltip-align-annotations t
          company-idle-delay 0.2
          ;; min prefix of 2 chars
          company-minimum-prefix-length 2
          company-require-match nil)
    (add-hook 'after-init-hook 'global-company-mode)))
