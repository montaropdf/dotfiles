;; -*-lisp-*-
;;
(in-package :stumpwm)

;; Prompt the user for an interactive command. The first arg is an
;; optional initial contents.
(defcommand colon1 (&optional (initial "")) (:rest)
            (let ((cmd (read-one-line (current-screen) ": " :initial-input initial)))
              (when cmd
                (eval-command cmd t))))

;; Web jump (works for Google and Imdb)
(defmacro make-web-jump (name prefix)
  `(defcommand ,(intern name) (search) ((:rest ,(concatenate 'string name " search: ")))
               (substitute #\+ #\Space search)
               (run-shell-command (concatenate 'string ,prefix search))))


;; Message window font
(load-module "ttf-fonts")
;; ;; Next line to be used when fonts gets updated
;; (setf xft:*font-dirs* (list (concat (getenv "HOME") "/.guix-profile/share/fonts/")
;; 			    (concat (getenv "HOME") "/.fonts/")))
;; (setf clx-truetype:+font-cache-filename+ (concat (getenv "HOME") "/.fonts/font-cache.sexp"))
;; (xft:cache-fonts)
;; ;; (message xft:*font-dirs*)

;; (set-font (make-instance 'xft:font :family "DejaVu Sans Mono" :subfamily "Book" :size 14))
;; ;; (set-font (make-instance 'xft:font :family "DejaVu Sans Mono Nerd Font" :subfamily "Book" :size 14))
(setq xft:*font-dirs* (append xft:*font-dirs* (list "~/.local/share/fonts/" "/.guix-profile/share/fonts/")))
(setf clx-truetype:+font-cache-filename+ (concat (getenv "HOME") "/.local/share/fonts/font-cache.sexp"))
(xft:cache-fonts)

(set-font (make-instance 'xft:font :family "DejaVuSansMono Nerd Font Mono" :subfamily "Book" :size 14))

;; * Defining groups
(gnew "F2-Comms")
(gnew "F3-Media")
(gnew "F4-Gaming")
;; (gnew "F4-Admin")
;; (gnew "F5-Monitor")

;; * Define windows placement policy
;; Clear rules
(clear-window-placement-rules)

;; Last rule to match takes precedence!
;; TIP: if the argument to :title or :role begins with an ellipsis, a substring
;; match is performed.
;; TIP: if the :create flag is set then a missing group will be created and
;; restored from *data-dir*/create file.
;; TIP: if the :restore flag is set then group dump is restored even for an
;; existing group using *data-dir*/restore file.
;; (define-frame-preference "F1-Main"
;;     ;; frame raise lock (lock AND raise == jumpto)
;;     (0 t nil :class "Konqueror" :role "...konqueror-mainwindow")
;;   (1 t nil :class "urxvt"))

;; (define-frame-preference "F2-Comms"
;;     (0 nil t :create t :class "Mattermost")
;;   (1 t nil :title "...weechat"))

(define-frame-preference "F4-Gaming"
    (0 nil t :create t :class "steam.steam"))

(define-frame-preference "F2-Comms"
    (0 nil t :create t :class "whalebird.whalebird")
(1 nil t :create t :class "element.element"))

;; * StumpWM Menu tests
;; (defvar *reve-test-menu* '((("element 1" "emacs --daemon=cyber-daemon -Q && emacsclient -e '(load-file \"~/.emacs.d/equake.el\")' -s 'cyber-daemon'")
;;                             ("Banish Cyber-daemon" "emacsclient -e '(kill-emacs)' -s 'cyber-daemon'")
;;                             ("Invoke console" invoke-equake))))

(setf stumpwm:*input-window-gravity* :center)
(setf stumpwm:*message-window-gravity* :bottom-right)

(set-bg-color "gray18")

(set-focus-color "MediumSpringGreen")

(setf *normal-border-width* 6)
(setf *window-border-style* :TIGHT)

;; Set the mouse focus policy to :ignore
(setf *mouse-focus-policy* :ignore) ;; otherwise Equake will tend to disappear

