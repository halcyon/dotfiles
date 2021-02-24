;;; meghanada-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "company-meghanada" "company-meghanada.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-meghanada.el

(autoload 'meghanada-company-enable "company-meghanada" "\
Enable auto completion with company." nil nil)

(register-definition-prefixes "company-meghanada" '("company-meghanada" "make-icon-hash" "meghanada--" "substring--candidate"))

;;;***

;;;### (autoloads nil "eldoc-meghanada" "eldoc-meghanada.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from eldoc-meghanada.el

(autoload 'eldoc-meghanada-setup "eldoc-meghanada" "\
Set up eldoc function and enable 'eldoc-mode'." t nil)

(autoload 'meghanada-eldoc-enable "eldoc-meghanada" "\
Enable eldoc for meghanada-mode." nil nil)

(register-definition-prefixes "eldoc-meghanada" '("eldoc-meghanada--"))

;;;***

;;;### (autoloads nil "flycheck-meghanada" "flycheck-meghanada.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from flycheck-meghanada.el

(autoload 'meghanada-flycheck-enable "flycheck-meghanada" "\
Enable flycheck for meghanada-mode." nil nil)

(register-definition-prefixes "flycheck-meghanada" '("flycheck-meghanada-"))

;;;***

;;;### (autoloads nil "meghanada" "meghanada.el" (0 0 0 0))
;;; Generated autoloads from meghanada.el

(autoload 'meghanada-install-server "meghanada" "\
Install meghanada-server's jar file from bintray ." t nil)

(autoload 'meghanada-update-server "meghanada" "\
Update meghanada-server's jar file from bintray ." t nil)

(autoload 'meghanada-server-start "meghanada" "\
Start the meghanada server." t nil)

(autoload 'meghanada-server-kill "meghanada" "\
Kill the meghanada server." t nil)

(autoload 'meghanada-client-direct-connect "meghanada" "\
Connect the client to a server that is already running." t nil)

(autoload 'meghanada-client-connect "meghanada" "\
Start the server and connect the client" t nil)

(autoload 'meghanada-client-disconnect "meghanada" "\
Disconnecting the client." t nil)

(autoload 'meghanada-restart "meghanada" "\
Restart meghanada server and client." t nil)

(autoload 'meghanada-mode "meghanada" "\
A better java development mode for Emacs (minor-mode).
\\{meghanada-mode-map}

If called interactively, toggle `Meghanada mode'.  If the prefix
argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "meghanada" '("meghanada-"))

;;;***

(provide 'meghanada-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; meghanada-autoloads.el ends here
