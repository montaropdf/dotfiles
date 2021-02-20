(setenv "XDG_CONFIG_HOME" (concat (getenv "HOME") "/.config"))

(defvar emacs-root-cfg-dir (concat (getenv "XDG_CONFIG_HOME") "/emacs"))
(defvar emacs-base-cfg-dir (concat emacs-root-cfg-dir "/core"))
(defvar emacs-org-cfg-dir (concat emacs-root-cfg-dir "/organization"))
(defvar emacs-user-cfg-dir (concat emacs-root-cfg-dir "/user"))
(defvar emacs-machine-cfg-dir (concat emacs-root-cfg-dir "/machine"))
(defvar emacs-configuration-tags-list '())
(defvar emacs-configuration-categories-list '())

(defun load-if-exists (f)
  "Load the file, if it exist and is readable."
  (when (file-readable-p f) (load-file (expand-file-name f))))
