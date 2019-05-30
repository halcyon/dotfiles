;;; go-dlv-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "go-dlv" "go-dlv.el" (0 0 0 0))
;;; Generated autoloads from go-dlv.el

(autoload 'dlv "go-dlv" "\
Run dlv on program FILE in buffer `*gud-FILE*'.
The directory containing FILE becomes the initial working directory
and source-file directory for your debugger.

\(fn COMMAND-LINE)" t nil)

(autoload 'dlv-current-func "go-dlv" "\
Debug the current program or test stopping at the beginning of the current function.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-dlv" '("go-dlv-")))

;;;***

(provide 'go-dlv-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; go-dlv-autoloads.el ends here
