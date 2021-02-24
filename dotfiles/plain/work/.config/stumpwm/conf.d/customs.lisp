;; -*-lisp-*-
;;
(in-package :stumpwm)

(run-shell-command "xrandr --size 1920x1200")
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
(setq xft:*font-dirs* (append xft:*font-dirs* (list "~/.local/share/fonts/" "/.guix-profile/share/fonts/")))
(setf clx-truetype:+font-cache-filename+ (concat (getenv "HOME") "/.local/share/fonts/font-cache.sexp"))
(xft:cache-fonts)

(set-font (make-instance 'xft:font :family "SauceCodePro Nerd Font Mono" :subfamily "Regular" :size 10))

;; * Defining groups
(gnew "F2-Monitoring")
(gnew "F3-WebUI")

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

;; Mode line definition
(setf *mode-line-foreground-color* "gainsboro")
(setf *mode-line-background-color* "DeepSkyBlue")
(setf *mode-line-pad-y* 0)
(setf *mode-line-pad-x* 0)
(setf *mode-line-border-color* "Black")
(setf *time-modeline-string* "%a %Y-%m-%e %k:%M")

(defvar group-item-format "^(:fg MediumSpringGreen)^(:bg black)[%n]")
(defvar focused-window-item-format "^(:fg gainsboro)^(:bg black)%w")
(defvar group-window-separator-format "^(:fg OrangeRed)^(:bg black)")
(defvar left-block-end-separator-format (concat "^(:fg black)^(:bg " *mode-line-background-color* ")"))
(defvar right-block-begin-separator-format (concat "^(:fg black)^(:bg " *mode-line-background-color* ")"))
(defvar systray-block-begin-separator-format left-block-end-separator-format)
(defvar item-separator-format "^(:fg gainsboro)^(:bg black)|")
;; (defvar systray-block-format "^(:fg gainsboro)^(:bg black)%T")
(defvar date-time-item-format "^(:fg gainsboro)^(:bg black)%d")

(setf stumpwm:*screen-mode-line-format*
      (list group-item-format
            "^n"
            group-window-separator-format
            "^n"
            focused-window-item-format
            "^n"
            left-block-end-separator-format
            "^n"
            "^>"
            right-block-begin-separator-format
            "^n"
            date-time-item-format
            "^n"
;;            systray-block-begin-separator-format
;;            "^n"
;;            systray-block-format
))


(setf stumpwm:*message-window-gravity* :bottom-right)
(setf stumpwm:*input-window-gravity* :center)

(set-bg-color "Blue")
(set-border-color "White")
(set-msg-border-width 6)

(set-focus-color "MediumSpringGreen")

(setf *normal-border-width* 6)
(setf *window-border-style* :TIGHT)


;; Set the mouse focus policy to :ignore
(setf *mouse-focus-policy* :ignore) ;; otherwise Equake will tend to disappear

