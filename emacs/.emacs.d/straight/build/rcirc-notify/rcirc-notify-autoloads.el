;;; rcirc-notify-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "rcirc-notify" "rcirc-notify.el" (0 0 0 0))
;;; Generated autoloads from rcirc-notify.el

(autoload 'rcirc-notify-me "rcirc-notify" "\
Notify the current user when someone sends a message that
matches the current nick.

\(fn PROC SENDER RESPONSE TARGET TEXT)" t nil)

(autoload 'rcirc-notify-privmsg "rcirc-notify" "\
Notify the current user when someone sends a private message
to them.

\(fn PROC SENDER RESPONSE TARGET TEXT)" t nil)

(autoload 'rcirc-notify-add-hooks "rcirc-notify" "\
Initialize rcirc-notify into rcirc with hooks." t nil)

(register-definition-prefixes "rcirc-notify" '("rcirc-notify"))

;;;***

(provide 'rcirc-notify-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rcirc-notify-autoloads.el ends here
