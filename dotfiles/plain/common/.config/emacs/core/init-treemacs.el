(use-package treemacs
  :straight t
  :config
  (progn
    (setq treemacs-follow-after-init          t
          treemacs-width                      35
          treemacs-indentation                2
          treemacs-git-integration            t
          treemacs-collapse-dirs              3
          treemacs-silent-refresh             nil
          treemacs-change-root-without-asking nil
          treemacs-sorting                    'alphabetic-asc
          treemacs-show-hidden-files          t
          treemacs-never-persist              nil
          treemacs-is-never-other-window      nil
          treemacs-goto-tag-strategy          'refetch-index)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t))
  :bind
  (:map global-map
        ([f9]        . treemacs)
        ;; ("<M-f9>"        . treemacs-projectile)
        ("M-0"       . treemacs-select-window)
        ("C-c 1"     . treemacs-delete-other-windows)))

(use-package treemacs-projectile
  :straight t
  :after (treemacs projectile)
  :config (setq treemacs-header-function #'treemacs-projectile-create-header)
  :bind (:map global-map
              ("<M-f9>"        . treemacs-projectile)))

;; (use-package treemacs-all-the-icons
;;   :straight t
;;   :after (treemacs all-the-icons-dired)
;;   :hook (dired-mode-hook . treemacs-icons-dired-mode))
