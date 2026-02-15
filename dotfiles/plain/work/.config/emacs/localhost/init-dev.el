(use-package projectile
  :straight t
  :bind-keymap ("C-c p" . projectile-command-map)
  :config (progn
	    (setq projectile-known-projects-file (f-expand "projectile-bookmarks.eld" emacs-user-data-dir))
	    (setq projectile-completion-system 'ivy)
	    (projectile-mode +1)))

(use-package yasnippet
  :straight t
  :init
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :straight t
  :after yasnippet)

(push (f-expand "yasnippets/" emacs-user-data-dir) yas-snippet-dirs)

(use-package skeletor
  :straight t)

(use-package jsonrpc
  :straight t)

(use-package editorconfig
  :straight t)

;; (use-package copilot
;;   :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
;;   :ensure t)

;; (add-hook 'prog-mode-hook 'copilot-mode)
;; (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
;; (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)

;; (transient-define-prefix global-transient ()
;;   ["General menu."
;;    ["Copilot"
;;     ("i" "Login" copilot-login)
;;     ("o" "Logout" copilot-logout)
;;     ;; ("s" "Copilot Start" copilot-start)
;;     ;; ("t" "Copilot Stop" copilot-stop)
;;     ;; ("u" "Copilot Update" copilot-update)
;;     ;; ("v" "Copilot Version" copilot-version)
;;     ]])

;; (global-set-key (kbd "C-s-g") 'global-transient)

