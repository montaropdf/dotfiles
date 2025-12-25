(use-package company
  :straight t
  :defer t
  :diminish (company-mode . " ⓐ")
  :bind (:map company-active-map
	      ("<tab>" . company-complete-selection))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0)
  :config
  (progn
    (setq company-tooltip-align-annotations t
          company-idle-delay 0.2
          ;; min prefix of 2 chars
          company-minimum-prefix-length 2
          company-require-match nil)
    (add-hook 'after-init-hook 'global-company-mode)))

(use-package company-box
  :straight t
  :hook (company-mode . company-box-mode))
