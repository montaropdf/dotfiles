(setq abbrev-file-name (f-expand "abbrev_defs" emacs-user-data-dir))

(setq-default abbrev-mode t)

(setq bookmark-default-file (f-expand "bookmarks" emacs-user-data-dir))

(use-package ipcalc
  :straight t
  :defer t)

(use-package direnv
  :straight t
  :when (executable-find "direnv")
  :config (direnv-mode))

(use-package crux
  :straight t
  :bind (("<f6> o" . crux-open-with)
	 ("C-a" . crux-move-beginning-of-line)))

(use-package pcre2el
  :straight t
  :config (pcre-mode))


(use-package vterm
  :straight t)

;; (use-package multi-vterm
;;   :straight t)
