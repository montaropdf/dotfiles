(let ((init-file-list '("init-conveniences.el"
			"init-unicode.el"
			"init-theme.el"
			"init-which-key.el"
			"init-outshine.el"
			"init-winnav.el"
			"init-ivy.el"
			"init-undo-tree.el"
			"init-ibuffer.el"
			;; "init-spell-check.el"
			"init-treemacs.el"
			"init-hydra.el"
			"init-try.el"
			"init-pass.el"
			"init-magit.el"
			"init-regex.el"
			"init-pass.el")))
  (dolist (init-file init-file-list)
    (load-if-exists (f-expand init-file emacs-core-cfg-dir))))
