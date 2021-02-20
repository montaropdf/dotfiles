(setq inhibit-startup-message t)

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
  :ensure t)

(use-package unicode-enbox
  :ensure t)
