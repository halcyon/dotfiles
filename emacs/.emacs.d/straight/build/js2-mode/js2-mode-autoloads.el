;;; js2-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "js2-imenu-extras" "../../../../../../.emacs.d/straight/build/js2-mode/js2-imenu-extras.el"
;;;;;;  "a7580f86032a9ca1d6f6e543cf770ba7")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "js2-imenu-extras"
;;;;;;  "../../../../../../.emacs.d/straight/build/js2-mode/js2-imenu-extras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/js2-mode/js2-imenu-extras.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-imenu-extras" '("js2-imenu-")))

;;;***

;;;***

;;;### (autoloads nil "js2-mode" "../../../../../../.emacs.d/straight/build/js2-mode/js2-mode.el"
;;;;;;  "40762916ae88730baa1ea8e76883481e")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/js2-mode/js2-mode.el

(autoload 'js2-highlight-unused-variables-mode "js2-mode" "\
Toggle highlight of unused variables.

\(fn &optional ARG)" t nil)

(autoload 'js2-minor-mode "js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `js-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

(autoload 'js2-jsx-mode "js2-mode" "\
Major mode for editing JSX code in Emacs 26 and earlier.

To edit JSX code in Emacs 27, use `js-mode' as your major mode
with `js2-minor-mode' enabled.

To customize the indentation for this mode, set the SGML offset
variables (`sgml-basic-offset' et al) locally, like so:

  (defun set-jsx-indentation ()
    (setq-local sgml-basic-offset js2-basic-offset))
  (add-hook \\='js2-jsx-mode-hook #\\='set-jsx-indentation)

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "js2-mode" "../../../../../../.emacs.d/straight/build/js2-mode/js2-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/js2-mode/js2-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-mode" '("js2-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "js2-old-indent"
;;;;;;  "../../../../../../.emacs.d/straight/build/js2-mode/js2-old-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/js2-mode/js2-old-indent.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-old-indent" '("js2-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/js2-mode/js2-imenu-extras.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/js2-mode/js2-mode.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/js2-mode/js2-old-indent.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'js2-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; js2-mode-autoloads.el ends here
