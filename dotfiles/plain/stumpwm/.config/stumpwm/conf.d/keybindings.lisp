;; -*-lisp-*-
;;
(in-package :stumpwm)

;; * Defining key bindings
;; Change the prefix key to something else
(set-prefix-key (kbd "s-z"))

;; * Redefinition of key bindings
(undefine-key *root-map* (kbd "C-w"))
(define-key *root-map* (kbd "C-w") "windowlist")

(defvar *my-pass-menu*
  (let ((m (make-sparse-keymap)))
    (define-key m (kbd "c") "pass-copy")
    (define-key m (kbd "m") "pass-copy-menu")
    (define-key m (kbd "g") "pass-generate")
    m ; NOTE: this is important
    ))

;; * Definition of the Main Menu
(load "~/.config/stumpwm/conf.d/init-root-menu.lisp")

(define-key *top-map* (kbd "s-a") '*my-application-menu*)

;; Lock screen
(define-key *root-map* (kbd "C-l") "exec xlock")

;; (define-key *root-map* (kbd "C-y") "show-clipboard-history")

(define-key *root-map* (kbd "C-f") "show-menu")

;; Quick access to groups
(define-key *top-map* (kbd "s-F1") "gselect 1")
(define-key *top-map* (kbd "s-F2") "gselect 2")
(define-key *top-map* (kbd "s-F3") "gselect 3")
(define-key *top-map* (kbd "s-F4") "gselect 4")
(define-key *top-map* (kbd "s-F5") "gselect 5")

;; Quick frame navigation
(define-key *top-map* (kbd "s-Up") "move-focus up")
(define-key *top-map* (kbd "s-Down") "move-focus down")
(define-key *top-map* (kbd "s-Left") "move-focus left")
(define-key *top-map* (kbd "s-Right") "move-focus right")

;; Quick windows navigation in current frame
(define-key *top-map* (kbd "M-Tab") "pull-hidden-next")
(define-key *top-map* (kbd "M-ISO_Left_Tab") "pull-hidden-previous")

;; * Defining multimedia keys key binding
;; Sound volume management
(define-key *top-map* (kbd "XF86AudioLowerVolume") "amixer-Master-1-")
(define-key *top-map* (kbd "XF86AudioRaiseVolume") "amixer-Master-1+")
(define-key *top-map* (kbd "XF86AudioMute") "amixer-Master-toggle")

(which-key-mode)
;; start the polling timer process
;; (clipboard-history:start-clipboard-manager)
