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


(defvar *my-application-menu*
  (let ((m (make-sparse-keymap)))
    (define-key m (kbd "m") "toggle-mode-line current-screen current-head")
    (define-key m (kbd "e") "exec emacs")
    (define-key m (kbd "f") "exec firefox -P")
    (define-key m (kbd "n") "nyxt")
    (define-key m (kbd "C-s") "colon1 exec alacritty -t ssh -e ssh ")
    (define-key m (kbd "t") "exec alacritty")
    (define-key m (kbd "p") '*my-pass-menu*)
    (define-key m (kbd "s-q") "end-session")
    m ; NOTE: this is important. the value of 'm' will be assigned to '*my-application-menu*'
    ))
