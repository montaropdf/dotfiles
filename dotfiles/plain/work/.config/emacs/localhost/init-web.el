(use-package restclient
  :straight t)

;; (use-package company-restclient
;;   :straight t
;;   :after restclient
;;   :config (add-to-list 'company-backends 'company-restclient))

(use-package simple-httpd
  :straight t)

(use-package impatient-mode
  :straight t
  :after simple-httpd)

(url-handler-mode 1)
