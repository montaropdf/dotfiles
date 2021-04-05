(use-package csv
  :ensure t
  :defer t
  :config (add-to-list 'csv-separators ";")
  (add-to-list 'auto-mode-alist '("\\.csv\\'" . csv-mode)))

(use-package yaml-mode
  :ensure t
  :mode ("\\.yml|\\.yaml" . yaml-mode))

(use-package dockerfile-mode
  :ensure t)

(add-to-list 'auto-mode-alist '("[Dd]ockerfile*" . dockerfile-mode))
