(use-package hydra
  :ensure hydra)

(use-package pretty-hydra
  :ensure t)

(global-set-key
 (kbd "C-x t")
 (defhydra toggle (:color blue)
   "toggle"
   ("a" abbrev-mode "abbrev")
   ("s" flyspell-mode "flyspell")
   ("d" toggle-debug-on-error "debug")
   ;; ("c" fci-mode "fCi")
   ("f" auto-fill-mode "fill")
   ("t" toggle-truncate-lines "truncate")
   ("w" whitespace-mode "whitespace")
   ("q" nil "cancel")))
