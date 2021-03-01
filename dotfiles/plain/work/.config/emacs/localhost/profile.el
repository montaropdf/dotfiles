(let ((init-file-list '("init-use-proxy.el"
			"init-hydra.el"
			"init-cl.el"
			"init-guix.el")))
  (dolist (init-file init-file-list)
    (load-if-exists (f-expand init-file emacs-host-cfg-dir))))
