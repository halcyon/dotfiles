;;; overseer-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "overseer" "../../../../../.emacs.d/elpa/overseer-20170208.141/overseer.el"
;;;;;;  "1902dac49be5eaf46a4a709256d9ccbd")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/overseer-20170208.141/overseer.el

(autoload 'overseer-version "overseer" "\
Get the Overseer version as string.

If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.

The returned string includes both, the version from package.el
and the library version, if both a present and different.

If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'overseer-mode "overseer" "\
Minor mode for emacs lisp files to test through ert-runner.

Key bindings:
\\{overseer-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'overseer-enable-mode "overseer" "\


\(fn)" nil nil)

(dolist (hook '(emacs-lisp-mode-hook)) (add-hook hook 'overseer-enable-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/overseer-20170208.141/overseer-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/overseer-20170208.141/overseer.el")
;;;;;;  (22790 6973 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; overseer-autoloads.el ends here
