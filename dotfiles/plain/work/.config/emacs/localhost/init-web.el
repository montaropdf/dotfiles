(use-package restclient
  :ensure t)

(use-package company-restclient
  :ensure t
  :after restclient
  :config (add-to-list 'company-backends 'company-restclient))

(use-package simple-httpd
  :ensure t)

(use-package impatient-mode
  :ensure t
  :after simple-httpd)

(url-handler-mode 1)
