(setq abbrev-file-name (f-expand "abbrev_defs" emacs-user-data-dir))

(setq-default abbrev-mode t)

(setq bookmark-default-file (f-expand "bookmarks" emacs-user-data-dir))

(use-package ipcalc
  :ensure t
  :defer t)

(use-package direnv
  :ensure t
  :when (executable-find "direnv")
  :config (direnv-mode))

(use-package crux
  :ensure t
  :bind (("<f6> o" . crux-open-with)
	 ("C-a" . crux-move-beginning-of-line)))

(use-package pcre2el
  :ensure t
  :config (pcre-mode))
