(in-package :nyxt-user) ; While implicit, this allows SLY to know which package we are in.

(define-configuration web-buffer
    ((default-modes (append '(reduce-tracking-mode
			      ;; blocker-mode
			      force-https-mode
			      )
			    %slot-default))))

(if (probe-file "~/.config/nyxt/proxy.lisp")
 (progn 
(load "~/.config/nyxt/proxy.lisp")
(define-configuration web-buffer
    ((default-modes (append '(proxy-mode)
			    %slot-default))))))

(load-after-system :slynk (nyxt-init-file "slynk.lisp"))

