(let ((init-file-list '("init-proxy-mode.el"
			"setup-hydra-menu.el"
			"init-cl.el"
			"init-guix.el"
			"setup-forge.el")))
  (dolist (init-file init-file-list)
    (load-if-exists (f-expand init-file emacs-host-cfg-dir))))
