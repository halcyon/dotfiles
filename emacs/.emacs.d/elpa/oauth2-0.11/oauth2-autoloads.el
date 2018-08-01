;;; oauth2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "oauth2" "../../../../../.emacs.d/elpa/oauth2-0.11/oauth2.el"
;;;;;;  "ef371fd35a854fb2d7fb34f0194a1050")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/oauth2-0.11/oauth2.el

(autoload 'oauth2-refresh-access "oauth2" "\
Refresh OAuth access TOKEN.
TOKEN should be obtained with `oauth2-request-access'.

\(fn TOKEN)" nil nil)

(autoload 'oauth2-auth "oauth2" "\
Authenticate application via OAuth2.

\(fn AUTH-URL TOKEN-URL CLIENT-ID CLIENT-SECRET &optional SCOPE STATE REDIRECT-URI)" nil nil)

(autoload 'oauth2-auth-and-store "oauth2" "\
Request access to a resource and store it using `plstore'.

\(fn AUTH-URL TOKEN-URL RESOURCE-URL CLIENT-ID CLIENT-SECRET &optional REDIRECT-URI)" nil nil)

(autoload 'oauth2-url-retrieve-synchronously "oauth2" "\
Retrieve an URL synchronously using TOKEN to access it.
TOKEN can be obtained with `oauth2-auth'.

\(fn TOKEN URL &optional REQUEST-METHOD REQUEST-DATA REQUEST-EXTRA-HEADERS)" nil nil)

(autoload 'oauth2-url-retrieve "oauth2" "\
Retrieve an URL asynchronously using TOKEN to access it.
TOKEN can be obtained with `oauth2-auth'.  CALLBACK gets called with CBARGS
when finished.  See `url-retrieve'.

\(fn TOKEN URL CALLBACK &optional CBARGS REQUEST-METHOD REQUEST-DATA REQUEST-EXTRA-HEADERS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "oauth2" "../../../../../.emacs.d/elpa/oauth2-0.11/oauth2.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/oauth2-0.11/oauth2.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "oauth2" '("oauth")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/oauth2-0.11/oauth2-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/oauth2-0.11/oauth2.el") (0
;;;;;;  0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; oauth2-autoloads.el ends here
