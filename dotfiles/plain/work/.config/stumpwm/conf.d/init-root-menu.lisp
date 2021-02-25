;; -*-lisp-*-
;;
(in-package :stumpwm)

;; * Defining application key bindings
;; ** Define application menu
(defcommand nyxt () ()
            "run nyxt"
            (run-or-raise "nyxt" '(:class "Nyxt")))

(defvar *my-application-menu*
  (let ((m (make-sparse-keymap)))
    (define-key m (kbd "d") "exec evince")
    (define-key m (kbd "e") "colon1 exec emacsclient -c ")
    (define-key m (kbd "f") "nyxt")
    (define-key m (kbd "t") "exec alacritty")
    (define-key m (kbd "p") '*my-pass-menu*)
    (define-key m (kbd "s-q") "end-session")
    m ; NOTE: this is important
    ))
