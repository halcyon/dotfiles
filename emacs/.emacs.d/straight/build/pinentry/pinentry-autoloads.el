;;; pinentry-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "pinentry" "pinentry.el" (0 0 0 0))
;;; Generated autoloads from pinentry.el

(autoload 'pinentry-start "pinentry" "\
Start a Pinentry service.

Once the environment is properly set, subsequent invocations of
the gpg command will interact with Emacs for passphrase input.

If the optional QUIET argument is non-nil, messages at startup
will not be shown.

\(fn &optional QUIET)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pinentry" '("pinentry-")))

;;;***

(provide 'pinentry-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pinentry-autoloads.el ends here
