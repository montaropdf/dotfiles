(in-package :nyxt-user) ; While implicit, this allows SLY to know which package we are in.

(if (probe-file "~/.config/nyxt/proxy.lisp")
 (load "~/.config/nyxt/proxy.lisp")
 )

(define-configuration (buffer web-buffer)
    ((default-modes (append '(proxy-mode
			      reduce-tracking-mode
			      ;; blocker-mode
			      force-https-mode
			      )
			    %slot-default))))

(load-after-system :slynk (nyxt-init-file "slynk.lisp"))

