(use-package projectile
  :ensure t
  :bind-keymap ("C-c p" . projectile-command-map)
  :config (progn
	    (setq projectile-known-projects-file (f-expand "projectile-bookmarks.eld" emacs-user-data-dir))
	    (setq projectile-completion-system 'ivy)
	    (projectile-mode +1)))

(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(push (f-expand "yasnippets/" emacs-user-data-dir) yas-snippet-dirs)

(use-package skeletor
  :ensure t)

