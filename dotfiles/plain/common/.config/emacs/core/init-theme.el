(use-package doom-themes
  :straight t)

(use-package all-the-icons-dired
  :straight t
  :after (dired all-the-icons)
  ;; :init (add-hook 'dired-mode-hook 'font-lock-mode -1 )
  :hook (dired-mode-hook))

(use-package all-the-icons-ivy
  :straight t
  :after (ivy all-the-icons)
  :config (all-the-icons-ivy-setup))

(load-theme #'doom-solarized-light t)
