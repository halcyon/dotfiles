;;; rfc-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "rfc-mode" "rfc-mode.el" (0 0 0 0))
;;; Generated autoloads from rfc-mode.el

(autoload 'rfc-mode-read "rfc-mode" "\
Read the RFC document NUMBER.
Offer the number at point as default.

\(fn NUMBER)" t nil)

(autoload 'rfc-mode-browse "rfc-mode" "\
Browse through all RFC documents referenced in the index." t nil)

(autoload 'rfc-mode "rfc-mode" "\
Major mode to browse and read RFC documents.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/rfc[0-9]+\\.txt\\'" . rfc-mode))

(register-definition-prefixes "rfc-mode" '("rfc-mode-"))

;;;***

(provide 'rfc-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rfc-mode-autoloads.el ends here
