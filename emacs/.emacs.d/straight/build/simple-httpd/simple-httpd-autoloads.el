;;; simple-httpd-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "simple-httpd" "../../../../../../.emacs.d/straight/build/simple-httpd/simple-httpd.el"
;;;;;;  "4ae08dcadb8ccf3b3195d46e136fe857")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/simple-httpd/simple-httpd.el

(autoload 'httpd-start "simple-httpd" "\
Start the web server process. If the server is already
running, this will restart the server. There is only one server
instance per Emacs instance.

\(fn)" t nil)

(autoload 'httpd-stop "simple-httpd" "\
Stop the web server if it is currently running, otherwise do nothing.

\(fn)" t nil)

(autoload 'httpd-running-p "simple-httpd" "\
Return non-nil if the simple-httpd server is running.

\(fn)" nil nil)

(autoload 'httpd-serve-directory "simple-httpd" "\
Start the web server with given `directory' as `httpd-root'.

\(fn DIRECTORY)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "simple-httpd"
;;;;;;  "../../../../../../.emacs.d/straight/build/simple-httpd/simple-httpd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/simple-httpd/simple-httpd.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "simple-httpd" '("httpd" "defservlet" "with-httpd-buffer")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/simple-httpd/simple-httpd.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'simple-httpd-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; simple-httpd-autoloads.el ends here
