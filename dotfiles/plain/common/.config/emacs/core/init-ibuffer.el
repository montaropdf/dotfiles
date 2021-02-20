    (global-set-key (kbd "C-x C-b") 'ibuffer)
    (setq ibuffer-saved-filter-groups
          (quote (("default"
                   ("mu4e" (or
                            (mode . mu4e-compose-mode)
                            (name . "\\*mu4e\\*")
                            ))
                   ("programming" (or
                                   (mode . python-mode)
                                   (mode . emacs-lisp)
                                   ;; (name . "init.emacs.org")
                                   (name . "^.*el")
                                   (name . "^.*lisp")
                                   (name . "config")
                                   (name . "^.*conf")))
                   ("dired" (mode . dired-mode))
                   ("org" (or
                           (name . "^.*org$")
                           (name . "^.*org<.+$")
                           (name . "\\*Org Agenda.*\\*$")))
                   ("IRC" (or (mode . circe-channel-mode) (mode . circe-server-mode)))
                   ;; ("web" (or (mode . web-mode) (mode . js2-mode)))
                   ("shell" (or (mode . eshell-mode) (mode . shell-mode)))
                   ("emacs" (or
                             (name . "^\\*scratch\\*$")
                             (name . "^\\*Messages\\*$")))))))
    (add-hook 'ibuffer-mode-hook
              (lambda ()
                (ibuffer-auto-mode 1)
                (ibuffer-switch-to-saved-filter-groups "default")))

    ;; Don't show filter groups if there are no buffers in that group
    (setq ibuffer-show-empty-filter-groups nil)
