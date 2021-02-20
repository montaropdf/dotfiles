(use-package outshine
  :ensure t)

;; Only useful for tanko
(use-package outorg
  :ensure t
  :after (outshine org))
;; ########################

(use-package outlined-elisp-mode
  :ensure t
  :after outshine)

;; Required for outshine
(add-hook 'outline-minor-mode-hook 'outshine-mode)

;; Enables outline-minor-mode for *ALL* programming buffers
(add-hook 'prog-mode-hook 'outline-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'outlined-elisp-find-file-hook)
(add-hook 'emacs-lisp-mode-hook 'outshine-mode)
