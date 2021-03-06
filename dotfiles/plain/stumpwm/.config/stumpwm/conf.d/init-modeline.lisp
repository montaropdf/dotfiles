(in-package stumpwm)

;; Mode line definition
(setf *mode-line-foreground-color* "gainsboro")
(setf *mode-line-background-color* "DeepSkyBlue")
(setf *mode-line-pad-y* 0)
(setf *mode-line-pad-x* 0)
(setf *mode-line-border-color* "Black")
(setf *time-modeline-string* "%a %Y-%m-%e %k:%M")

(defvar separator-colors (concat "^(:fg Gray41)^(:bg " *mode-line-background-color* ")"))

(defvar group-item-format "^(:fg MediumSpringGreen)^(:bg black)[%n]")
(defvar focused-window-item-format "^(:fg gainsboro)^(:bg Gray41)%w")
(defvar group-window-separator-format "^(:fg Black)^(:bg Gray41)")
(defvar left-block-end-separator-format (concat separator-colors ""))
(setf separator-colors (concat "^(:fg Black)^(:bg " *mode-line-background-color* ")"))
(defvar right-block-begin-separator-format (concat separator-colors ""))
(defvar systray-block-begin-separator-format left-block-end-separator-format)
(defvar item-separator-format "^(:fg gainsboro)^(:bg black)|")
(defvar systray-block-format "^(:fg gainsboro)^(:bg black)%T")
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
            "^n"))

(if (and (boundp systray-enabled) systray-enabled)
    (setf stumpwm:*screen-mode-line-format*
	  (append stumpwm:*screen-mode-line-format*
		  '(systray-block-begin-separator-format
		    "^n"
		    systray-block-format))))


;; (setf stumpwm:*screen-mode-line-format*
;;       (list group-item-format
;;             "^n"
;;             group-window-separator-format
;;             "^n"
;;             focused-window-item-format
;;             "^n"
;;             left-block-end-separator-format
;;             "^n"
;;             "^>"
;;             right-block-begin-separator-format
;;             "^n"
;;             date-time-item-format
;;             "^n"
;; ;;            systray-block-begin-separator-format
;; ;;            "^n"
;; ;;            systray-block-format
;; ))
