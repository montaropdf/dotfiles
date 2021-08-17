;; -*-lisp-*-
;;
(in-package :stumpwm)

;; * Defining application key bindings
;; ** Define application menu
;; (defcommand firefox () ()
;;             "run firefox"
;;             (run-or-raise "firefox" '(:class "Firefox")))

(defcommand nyxt () ()
            "run nyxt"
            (run-or-raise "nyxt" '(:class "Nyxt")))

(defcommand mattermost () ()
            "run mattermost"
            (run-or-raise
 "~/programmes/mattermost-desktop-latest/mattermost-desktop"
 '(:class "Mattermost")))

(defvar *my-games-menu*
(let ((m (make-sparse-keymap)))
    (define-key m (kbd "S") "exec steam")
    (define-key m (kbd "l") "exec ~/games/df-lnp/LinuxLNP/startlnp")
    (define-key m (kbd "s") "exec ~/.local/bin/ss-launcher.sh")
    (define-key m (kbd "t") "exec ~/.local/bin/stoneshard-launcher.sh")
    (define-key m (kbd "j") "exec ~/games/gog.com/Jupiter-Hell/start.sh")
    (define-key m (kbd "r") "exec ~/games/gog.com/Regalia Of Men And Monarchs/start.sh")
;;    (define-key m (kbd "d") "exec ~/games/gog.com/Deep-Sky-Derelicts/start.sh")
m
))

(defvar *my-application-menu*
  (let ((m (make-sparse-keymap)))
    ;; (define-key m (kbd "S") "exec steam")
    ;; (define-key m (kbd "l") "exec ~/games/df-lnp/LinuxLNP/startlnp")
    ;; (define-key m (kbd "s") "exec ~/.local/bin/ss-launcher.sh")
    (define-key m (kbd "g") '*my-games-menu*)
    (define-key m (kbd "m") "toggle-mode-line current-screen current-head")
    (define-key m (kbd "d") "exec evince")
    (define-key m (kbd "e") "exec emacs")
    (define-key m (kbd "f") "exec firefox -P")
    (define-key m (kbd "n") "nyxt")
    (define-key m (kbd "C-s") "colon1 exec alacritty -t ssh -e ssh ")
    (define-key m (kbd "t") "exec alacritty")
    (define-key m (kbd "p") '*my-pass-menu*)
    (define-key m (kbd "s-q") "end-session")
    m ; NOTE: this is important. the value of 'm' will be assigned to '*my-application-menu*'
    ))
