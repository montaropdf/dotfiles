(setenv "XDG_CONFIG_HOME" (concat (getenv "HOME") "/.config"))

(defvar emacs-root-cfg-dir (concat (getenv "XDG_CONFIG_HOME") "/emacs/"))
(defvar emacs-core-cfg-dir (concat emacs-root-cfg-dir "/core/"))
(defvar emacs-host-cfg-dir (concat emacs-root-cfg-dir "/" "localhost" "/"))
(defvar emacs-user-cfg-dir (concat emacs-host-cfg-dir "/" (user-login-name) "/"))
(defvar emacs-configuration-tags-list '())
(defvar emacs-configuration-categories-list '())

(defun load-if-exists (f)
  "Load the file F, if it exist and is readable."
  (when (file-readable-p f) (load-file (expand-file-name f))))

;; (defun install-package-if-absent (pkg)
;;   "Install thepackage PKG, if it is not installed yet."
;;   (unless (package-installed-p pkg)
;;     (package-refresh-contents)
;;     (package-install pkg)))

(load-if-exists (concat emacs-host-cfg-dir "/proxy.el"))

;; (require 'package)
(setq package-enable-at-startup nil)
;; (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
;; (add-to-list 'package-archives '("melpa-stable" . "https://melpa.org/packages/"))
;; ;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; (package-initialize)                ;; Initialize & Install Package

;; ; Bootstrap `use-package'
;; (install-package-if-absent 'use-package)

;; (install-package-if-absent 'f)


(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(use-package f
  :straight t
  :ensure t)

(require 'f)

(setq custom-file (concat emacs-root-cfg-dir "/custom.el"))

(load-if-exists (f-expand "profile.el" emacs-core-cfg-dir))
(load-if-exists (f-expand "profile.el" emacs-host-cfg-dir))
(load-if-exists (f-expand "profile.el" emacs-user-cfg-dir))

(load-if-exists custom-file)
