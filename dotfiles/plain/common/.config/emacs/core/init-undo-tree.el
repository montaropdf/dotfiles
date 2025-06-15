;; (use-package undo-tree
;;   :straight t)

;; (global-undo-tree-mode)

(use-package vundo
  :commands (vundo)

  :straight (vundo :type git :host github :repo "casouri/vundo")

  ;; :config
  ;; ;; Take less on-screen space.
  ;; (setq vundo-compact-display t)

  ;; Better contrasting highlight.
  ;; (custom-set-faces
  ;;  '(vundo-node ((t (:foreground "#808080"))))
  ;;  '(vundo-stem ((t (:foreground "#808080"))))
  ;;  '(vundo-highlight ((t (:foreground "#FFFF00")))))
  )
