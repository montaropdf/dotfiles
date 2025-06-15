(let ((init-file-list '("init-elisp.el"
			"setup-forge.el"
			"init-font.el"
			"init-file-support.el"
			"init-dev.el"
			"init-python.el"
			"setup-support-tools.el"
			"init-web.el"
			"init-ansible.el"
			"init-plantuml.el"
			"init-org.el"
			"init-org-roam.el")))
  (dolist (init-file init-file-list)
    (load-if-exists (f-expand init-file emacs-host-cfg-dir))))
