(use-package csv
  :straight t
  :defer t
  :config (add-to-list 'csv-separators ";")
  (add-to-list 'auto-mode-alist '("\\.csv\\'" . csv-mode)))

(use-package yaml-mode
  :straight t
  :mode ("\\.yml|\\.yaml" . yaml-mode))

(use-package dockerfile-mode
  :straight t)

(add-to-list 'auto-mode-alist '("[Dd]ockerfile*" . dockerfile-mode))
