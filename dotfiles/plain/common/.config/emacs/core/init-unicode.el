(use-package unicode-emoticons
  :ensure t)

(use-package unicode-enbox
  :ensure t)

(use-package unicode-escape
  :ensure t)

(use-package unicode-fonts
  :ensure t
  :config (unicode-fonts-setup))

;; (use-package unicode-input
;;   :ensure t)

;; (use-package unicode-progress-reporter
;;   :ensure t
;;   :config (unicode-progress-reporter-setup))

(use-package unicode-whitespace
  :ensure t
  :config (unicode-whitespace-setup 'subdued-faces))

(use-package unidecode
  :ensure t)
