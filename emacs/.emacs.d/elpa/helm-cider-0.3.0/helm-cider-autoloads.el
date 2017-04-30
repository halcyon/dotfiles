;;; helm-cider-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-cider" "../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider.el"
;;;;;;  "463b5637a9a00d826ea539f99afc7bdd")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider.el

(autoload 'helm-cider-apropos-symbol "helm-cider" "\
Choose Clojure symbols across namespaces.

Each Helm source is a Clojure namespace (ns), and candidates are
symbols in the namespace.

If both NS and SYMBOL are supplied, puts selection line on
first SYMBOL of NS.

If NS is supplied, puts the selection line on the first
candidate of source with name NS.

If SYMBOL is supplied, puts the selection line on the
first candidate matching SYMBOL.

If neither NS nor SYMBOL is supplied, tries to put the
selection line on candidate matching symbol at point.

If DOC is true, include symbol documentation in candidate.

Set `helm-cider-apropos-follow' to true to turn on
function `helm-follow-mode' for all sources.  This is useful for quickly
browsing documentation.

\(fn &optional NS SYMBOL DOC)" t nil)

(autoload 'helm-cider-apropos-symbol-doc "helm-cider" "\
Choose Clojure SYMBOLs, with docs, across namespaces.

Optional arguments NS and SYMBOL are as in
`helm-cider-apropos-symbol'.

\(fn &optional NS SYMBOL)" t nil)

(autoload 'helm-cider-apropos-ns "helm-cider" "\
Choose Clojure namespace to call Helm CIDER apropos on.

NS-OR-QUALIFIED-NAME is a Clojure
namespace (e.g. \"clojure.core\") or a qualified symbol
name (e.g. \"clojure.core/reduce\").  If supplied, it is used as
the default selection.

\(fn &optional NS-OR-QUALIFIED-NAME)" t nil)

(autoload 'helm-cider-apropos "helm-cider" "\
Helm interface to CIDER apropos.

If ARG is raw prefix argument \\[universal-argument], include
symbol documentation.

If ARG is raw prefix argument \\[universal-argument]
\\[universal-argument], choose namespace before symbol.

\(fn &optional ARG)" t nil)

(defvar helm-cider-mode nil "\
Non-nil if Helm-Cider mode is enabled.
See the `helm-cider-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-cider-mode'.")

(custom-autoload 'helm-cider-mode "helm-cider" nil)

(autoload 'helm-cider-mode "helm-cider" "\
Use Helm for CIDER.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-cider-repl" "../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider-repl.el"
;;;;;;  "28feab1a5bcdb751c037baefa4ed1e1e")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider-repl.el

(autoload 'helm-cider-repl-history-insert "helm-cider-repl" "\
Insert candidate at the last CIDER REPL prompt.

Existing input at the prompt is cleared.

This function is meant to be one of `helm-cider-repl-history-actions'.

\(fn CANDIDATE)" nil nil)

(autoload 'helm-cider-repl-history-delete "helm-cider-repl" "\
Delete marked candidates from `cider-repl-input-history'.

This function is meant to be one of `helm-cider-repl-history-actions'.

\(fn CANDIDATE)" nil nil)

(autoload 'helm-cider-repl-history "helm-cider-repl" "\
Helm interface to CIDER REPL history.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider-repl.el"
;;;;;;  "../../../../../.emacs.d/elpa/helm-cider-0.3.0/helm-cider.el")
;;;;;;  (22790 6951 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-cider-autoloads.el ends here
