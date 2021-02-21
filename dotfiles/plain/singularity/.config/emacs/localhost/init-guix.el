(if (not (string= (executable-find "guix") (f-expand "guix" "~/.config/guix/current/bin/")))
    (error "Guix package manager executable not found"))

(if (not (string= (executable-find "guile") (f-expand "guile" "~/.guix-profile/bin/")))
    (error "Guile interpreter not found in guix profile"))

(use-package guix
  :ensure t
  :defer t)

(use-package pretty-sha-path
  :ensure t
  :defer t
  :after guix)
