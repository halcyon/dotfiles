;;; gnus-alias-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gnus-alias" "../../../../../.emacs.d/elpa/gnus-alias-20150315.2042/gnus-alias.el"
;;;;;;  "448254fa8f2fbff071cc726b35dd6d6a")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/gnus-alias-20150315.2042/gnus-alias.el

(autoload 'gnus-alias-init "gnus-alias" "\
Add gnus-alias call to message mode hook.

\(fn)" t nil)

(autoload 'gnus-alias-select-identity "gnus-alias" "\
Prompt user for an identity and use it.

\(fn)" t nil)

(autoload 'gnus-alias-use-identity "gnus-alias" "\
Use an Identity defined in `gnus-alias-identity-alist'.

IDENTITY must be a valid entry in `gnus-alias-identity-alist',
otherwise an error will occur (NOTE: this behavior has changed
significantly from that found in 'gnus-pers').

If called interactively with no identity, user will be prompted for
one.

\(fn &optional IDENTITY)" t nil)

(autoload 'gnus-alias-determine-identity "gnus-alias" "\
Function that chooses a Identity based on message headers.

See `gnus-alias-identity-rules' for more information.  Optional
LOOKUP-ONLY is a boolean that, when non-nil, says to determine the
Identity, but don't actually use it (just return it)

\(fn &optional LOOKUP-ONLY)" nil nil)

(autoload 'gnus-alias-message-x-completion "gnus-alias" "\
Can be used to select identifies in new mail after tab-completion.

WHICH-HEADER should be set to the header that completion was just
performed on.

When tab-completion is performed in the To: header, a new identity
will be selected according to the rules set up in
`gnus-alias-identity-alist' (which see).

This particular function expects an argument, and as such should only
be used with the `message-x-after-completion-functions'hook:

  (add-hook 'message-x-after-completion-functions
            'gnus-alias-message-x-completion)

This should be place in the `message-load-hook' (see gnus-alias file
for details).  If such an argument is not needed in the current
context, `gnus-alias-determine-identity' may be used directly in a hook.

\(fn WHICH-HEADER)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "gnus-alias" "../../../../../.emacs.d/elpa/gnus-alias-20150315.2042/gnus-alias.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/gnus-alias-20150315.2042/gnus-alias.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnus-alias" '("gnus-alias-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/gnus-alias-20150315.2042/gnus-alias-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/gnus-alias-20150315.2042/gnus-alias.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gnus-alias-autoloads.el ends here
