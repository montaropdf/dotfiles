(cond ((not (string= (executable-find "guix") (f-expand "guix" "~/.config/guix/current/bin/")))
       (message "Guix package manager executable not found"))
      ((not (string= (executable-find "guile") (f-expand "guile" "~/.guix-profile/bin/")))
       (message "Guile interpreter not found in guix profile"))
      (t
       (use-package guix
	 :ensure t
	 :defer t)

       (use-package pretty-sha-path
	 :ensure t
	 :defer t
	 :after guix)))

;; (if (not (string= (executable-find "guile") (f-expand "guile" "~/.guix-profile/bin/")))
;;     (message "Guile interpreter not found in guix profile"))

;; (use-package guix
;;   :ensure t
;;   :defer t)

;; (use-package pretty-sha-path
;;   :ensure t
;;   :defer t
;;   :after guix)
