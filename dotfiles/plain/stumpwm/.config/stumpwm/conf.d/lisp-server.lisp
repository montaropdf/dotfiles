;;; Management of the lisp implementation server for emacs to operate StumpWM
;; (ql:quickload :slynk)
(handler-case (slynk:create-server :port 4006 :dont-close t)
  (error (c)
    (slynk:restart-server :port 4006 :dont-close t)))
;; (ql:quickload :swank)
;; (swank:create-server :port 4005 :dont-close t)
