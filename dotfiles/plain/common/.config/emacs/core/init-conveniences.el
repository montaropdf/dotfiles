(setq inhibit-startup-message t)

(defconst IS-MAC     (eq system-type 'darwin))
(defconst IS-LINUX   (eq system-type 'gnu/linux))
(defconst IS-WINDOWS (memq system-type '(cygwin windows-nt ms-dos)))
(defconst IS-BSD     (or IS-MAC (eq system-type 'berkeley-unix)))
(defconst IS-WSL     (and IS-LINUX
                          (string-match-p "Microsoft"
                                          (shell-command-to-string "uname -a"))))

(defvar home-dir (getenv "HOME"))

(when (not (getenv "XDG_DATA_HOME"))
  (setenv "XDG_DATA_HOME" (f-expand ".local/share" home-dir)))

(defvar emacs-user-data-dir (f-expand "emacs" (getenv "XDG_DATA_HOME")))

(when (not (f-exists? emacs-user-data-dir))
  (f-mkdir emacs-user-data-dir))

(show-paren-mode 1)
(tool-bar-mode -1)
(blink-cursor-mode 0)
(global-visual-line-mode nil)
(pending-delete-mode t)
(abbrev-mode t)

(global-set-key (kbd "<f5>") 'revert-buffer)

(setq calendar-day-name-array ["Dimanche" "Lundi" "Mardi" "Mercredi" "Jeudi" "Vendredi" "Samedi"])
(setq calendar-month-name-array ["Janvier" "Février" "Mars" "Avril" "Mai" "Juin" "Juillet" "Août" "Septembre" "Octobre" "Novembre" "Decembre"])
(setq calendar-time-display-form (quote (24-hours ":" minutes (if time-zone " (") time-zone (if time-zone ")"))))
(setq calendar-week-start-day 1)
(setq case-fold-search t)
(setq column-number-mode t)
(setq current-language-environment "UTF-8")
(setq default-input-method "latin-1-prefix")
(setq directory-abbrev-alist nil)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time-mode t)
(setq fill-column 100)
(global-font-lock-mode t)
(global-hl-line-mode t)
(setq indent-tabs-mode nil)
(setq indicate-buffer-boundaries (quote left))
(setq indicate-empty-lines t)
(setq mark-even-if-inactive t)
(setq pc-selection-mode nil)
(recentf-mode t)
(setq require-final-newline t)
(setq safe-local-variable-values (quote ((ispell-dictionary . "english"))))
(setq save-abbrevs t)
(setq scroll-down-aggressively 0.0)
(setq scroll-up-aggressively 0.0)
(setq show-trailing-whitespace t)
(setq size-indication-mode t)
(setq transient-mark-mode t)
(setq calendar-date-style 'iso)

(which-function-mode t)
(auto-revert-mode t)
(auto-fill-mode t)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;;;;;;;;;;;;;;;; parenthèses, accolades et brackets ;;;;;;
(setq skeleton-pair t)
(global-set-key "[" 'skeleton-pair-insert-maybe)
(global-set-key "{" 'skeleton-pair-insert-maybe)
(global-set-key "(" 'skeleton-pair-insert-maybe)
(global-set-key "\"" 'skeleton-pair-insert-maybe)
(global-set-key "'" 'skeleton-pair-insert-maybe)

(use-package date2name
  :straight t)

;; (use-package unicode-enbox
;;   :straight t)

(use-package s
  :straight t)

(use-package beacon
  :straight t
  :config (beacon-mode 1))

;; (use-package hungry-delete
;;   :straight t
;;   :config (global-hungry-delete-mode))

(use-package aggressive-indent
  :straight t
  :config (global-aggressive-indent-mode 1))

(use-package expand-region
  :straight t
  :bind ("C-=" . er/expand-region))

(use-package iedit
  :straight t)

(use-package rainbow-delimiters
  :straight t
  :hook (prog-mode . rainbow-delimiters-mode))

;; Copied from this location:
;; http://endlessparentheses.com/emacs-narrow-or-widen-dwim.html
(defun narrow-or-widen-dwim (p)
  "Widen if buffer is narrowed, narrow-dwim otherwise.
    Dwim means: region, org-src-block, org-subtree, or
    defun, whichever applies first. Narrowing to
    org-src-block actually calls `org-edit-src-code'.

    With prefix P, don't widen, just narrow even if buffer
    is already narrowed."
  (interactive "P")
  (declare (interactive-only))
  (cond ((and (buffer-narrowed-p) (not p)) (widen))
        ((region-active-p)
         (narrow-to-region (region-beginning)
                           (region-end)))
        ((derived-mode-p 'org-mode)
         ;; `org-edit-src-code' is not a real narrowing
         ;; command. Remove this first conditional if
         ;; you don't want it.
         (cond ((ignore-errors (org-edit-src-code) t)
                (delete-other-windows))
               ((ignore-errors (org-narrow-to-block) t))
               (t (org-narrow-to-subtree))))
        ((derived-mode-p 'latex-mode)
         (LaTeX-narrow-to-environment))
        (t (narrow-to-defun))))

;; (define-key endless/toggle-map "n" #'narrow-or-widen-dwim)
;; This line actually replaces Emacs' entire narrowing
;; keymap, that's how much I like this command. Only
;; copy it if that's what you want.
(define-key ctl-x-map "n" #'narrow-or-widen-dwim)
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (define-key LaTeX-mode-map "\C-xn"
              nil)))

(setq epa-pinentry-mode 'loopback)

(use-package pinentry
  :straight t)

(pinentry-start)

(when IS-WSL
  ;; WSLg breaks copy-paste from Emacs into Windows
  ;; see: https://www.lukas-barth.net/blog/emacs-wsl-copy-clipboard/
  (setq select-active-regions nil
        select-enable-clipboard 't
        select-enable-primary nil
        interprogram-cut-function #'gui-select-text))
