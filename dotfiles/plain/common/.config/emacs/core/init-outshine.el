(use-package outshine
  :straight t)

;; Only useful for tanko
(use-package outorg
  :straight t
  :after (outshine org))
;; ########################

(use-package outline-magic
  :straight t)

(use-package outline-toc
  :straight t)

;; (add-hook 'outline-mode-hook
;;           (lambda ()
;;             (require 'outline-cycle)))

(add-hook 'outline-minor-mode-hook
          (lambda ()
            (require 'outline-magic)
            (define-key outline-minor-mode-map [(f10)] 'outline-cycle)))

;; Required for outshine
(add-hook 'outline-minor-mode-hook 'outshine-mode)

;; Enables outline-minor-mode for *ALL* programming buffers
(add-hook 'prog-mode-hook 'outline-minor-mode)
;; (add-hook 'emacs-lisp-mode-hook 'outlined-elisp-find-file-hook)
(add-hook 'emacs-lisp-mode-hook 'outshine-mode)
