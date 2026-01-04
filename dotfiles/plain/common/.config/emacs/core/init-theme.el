(use-package doom-themes
  :straight t)

(use-package nerd-icons
  :straight t
  :custom
  (nerd-icons-font-family "GeistMono Nerd Font Mono")
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
  ;; (nerd-icons-font-family "Symbols Nerd Font Mono")
  )

(use-package nerd-icons-dired
  :straight t
  :after (nerd-icons)
  :hook
  (dired-mode . nerd-icons-dired-mode))

(use-package treemacs-nerd-icons
  :straight t
  :after (nerd-icons treemacs)
  :config
  (treemacs-nerd-icons-config))

(use-package nerd-icons-completion
  :straight t
  :after marginalia
  :config
  (nerd-icons-completion-mode)
  (add-hook 'marginalia-mode-hook #'nerd-icons-completion-marginalia-setup))

(use-package nerd-icons-ibuffer
  :straight t
  :after nerd-icons
  :hook (ibuffer-mode . nerd-icons-ibuffer-mode))

(use-package nerd-icons-mode-line
  :straight (:host github :repo "grolongo/nerd-icons-mode-line" :files ("*.el"))
  ;; :vc (:url "https://github.com/grolongo/nerd-icons-mode-line")
  :custom
  (nerd-icons-mode-line-v-adjust 0.1) ; default value
  (nerd-icons-mode-line-size 1.0) ; default value
  :config (nerd-icons-mode-line-global-mode t))

;; (use-package all-the-icons
;;   :straight t)

;; (use-package all-the-icons-dired
;;   :straight t
;;   :after (dired all-the-icons)
;;   ;; :init (add-hook 'dired-mode-hook 'font-lock-mode -1 )
;;   :hook (dired-mode-hook))

;; (use-package all-the-icons-ivy
;;   :straight t
;;   :after (all-the-icons)
;;   :config (all-the-icons-ivy-setup))

(load-theme #'doom-solarized-light t)
