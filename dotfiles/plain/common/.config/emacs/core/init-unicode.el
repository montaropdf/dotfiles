(use-package unicode-emoticons
  :straight t)

;; (use-package unicode-enbox
;;   :straight t)

(use-package unicode-escape
  :straight t)

(use-package unicode-fonts
  :straight t
  :config (unicode-fonts-setup))

;; (use-package unicode-input
;;   :straight t)

;; (use-package unicode-progress-reporter
;;   :straight t
;;   :config (unicode-progress-reporter-setup))

(use-package unicode-whitespace
  :straight t
  :config (unicode-whitespace-setup 'subdued-faces))

(use-package unidecode
  :straight t)
