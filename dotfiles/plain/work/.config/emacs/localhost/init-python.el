(use-package elpy
  :ensure t
  :defer t
  :when (member "python" emacs-configuration-tags-list)
  :config (defvar virtualenvs-data-dir (f-expand "virtualenvs" (getenv "XDG_DATA_HOME")))
  (when (not (f-exists? virtualenvs-data-dir))
    (f-mkdir virtualenvs-data-dir))
  (setq py-python-command "python3")
  (setq python-shell-interpreter "python3")
  (setq-default indent-tabs-mode nil)
  (elpy-enable))

(setq python-shell-interpreter "python3")

(setq flycheck-flake8-maximum-line-length 100)
