(asdf:load-system :uiop)

;; (defun setenv (variable value)
;;   "Fill the environment variable VARIABLE, with VALUE.

;; VARIABLE must be a string."
;;   (setf (getenv variable) value))

;; (defun setenv-if-nil (variable value)
;;   "Fill the environment variable VARIABLE if it is nil, with VALUE.

;; VARIABLE must be a string."
;;   (unless (getenv variable)
;;     (setenv variable value)))

(setf (uiop:getenv "GDK_CORE_DEVICE_EVENTS") "1")


;; (setenv "GDK_CORE_DEVICE_EVENTS" "1")
;; (setenv-if-nil "XDG_CONFIG_HOME" "~/.config")
;; (setenv-if-nil "XDG_RUNTIME_DIR" "/run/user/1000")
;; (setenv-if-nil "XDG_DATA_DIRS" "~/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share")
;; (setenv-if-nil "XDG_CACHE_HOME" "~/.cache")
