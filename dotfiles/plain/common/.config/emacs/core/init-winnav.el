(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))

(use-package window-jump
  :ensure t
  :bind (("s-<left>" . window-jump-left)
         ("s-<right>" . window-jump-right)
         ("s-<up>" . window-jump-up)
         ("s-<down>" . window-jump-down))
  :config (require 'window-jump))
