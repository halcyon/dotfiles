;;; geiser-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "geiser" "../../../../../.emacs.d/elpa/geiser-0.10/geiser.el"
;;;;;;  "af6a4a56de3ff0b0472f7e5b2780806e")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser.el

(defconst geiser-elisp-dir (file-name-directory load-file-name) "\
Directory containing Geiser's Elisp files.")

(defconst geiser-scheme-dir (let ((d (expand-file-name "./scheme/" geiser-elisp-dir))) (if (file-directory-p d) d (expand-file-name "../scheme/" geiser-elisp-dir))) "\
Directory containing Geiser's Scheme files.")

(when (not (member geiser-elisp-dir load-path)) (add-to-list 'load-path geiser-elisp-dir))

(autoload 'geiser-version "geiser-version" "\
Echo Geiser's version." t)

(autoload 'geiser-unload "geiser-reload" "\
Unload all Geiser code." t)

(autoload 'geiser-reload "geiser-reload" "\
Reload Geiser code." t)

(autoload 'geiser "geiser-repl" "\
Start a Geiser REPL, or switch to a running one." t)

(autoload 'run-geiser "geiser-repl" "\
Start a Geiser REPL." t)

(autoload 'geiser-connect "geiser-repl" "\
Start a Geiser REPL connected to a remote server." t)

(autoload 'geiser-connect-local "geiser-repl" "\
Start a Geiser REPL connected to a remote server over a Unix-domain socket." t)

(autoload 'switch-to-geiser "geiser-repl" "\
Switch to a running one Geiser REPL." t)

(autoload 'run-chez "geiser-chez" "\
Start a Geiser Chez REPL." t)

(autoload 'switch-to-chez "geiser-chez" "\
Start a Geiser Chez REPL, or switch to a running one." t)

(autoload 'run-guile "geiser-guile" "\
Start a Geiser Guile REPL." t)

(autoload 'switch-to-guile "geiser-guile" "\
Start a Geiser Guile REPL, or switch to a running one." t)

(autoload 'connect-to-guile "geiser-guile" "\
Connect to a remote Geiser Guile REPL." t)

(autoload 'run-racket "geiser-racket" "\
Start a Geiser Racket REPL." t)

(autoload 'run-gracket "geiser-racket" "\
Start a Geiser GRacket REPL." t)

(autoload 'switch-to-racket "geiser-racket" "\
Start a Geiser Racket REPL, or switch to a running one." t)

(autoload 'connect-to-racket "geiser-racket" "\
Connect to a remote Geiser Racket REPL." t)

(autoload 'run-chicken "geiser-chicken" "\
Start a Geiser Chicken REPL." t)

(autoload 'switch-to-chicken "geiser-chicken" "\
Start a Geiser Chicken REPL, or switch to a running one." t)

(autoload 'connect-to-chicken "geiser-chicken" "\
Connect to a remote Geiser Chicken REPL." t)

(autoload 'run-mit "geiser-mit" "\
Start a Geiser MIT/GNU Scheme REPL." t)

(autoload 'switch-to-mit "geiser-mit" "\
Start a Geiser MIT/GNU Scheme REPL, or switch to a running one." t)

(autoload 'run-chibi "geiser-chibi" "\
Start a Geiser Chibi Scheme REPL." t)

(autoload 'switch-to-chibi "geiser-chibi" "\
Start a Geiser Chibi Scheme REPL, or switch to a running one." t)

(autoload 'geiser-mode "geiser-mode" "\
Minor mode adding Geiser REPL interaction to Scheme buffers." t)

(autoload 'turn-on-geiser-mode "geiser-mode" "\
Enable Geiser's mode (useful in Scheme buffers)." t)

(autoload 'turn-off-geiser-mode "geiser-mode" "\
Disable Geiser's mode (useful in Scheme buffers)." t)

(autoload 'geiser-mode--maybe-activate "geiser-mode")

(mapc (lambda (group) (custom-add-load group (symbol-name group)) (custom-add-load 'geiser (symbol-name group))) '(geiser geiser-repl geiser-autodoc geiser-doc geiser-debug geiser-faces geiser-mode geiser-guile geiser-image geiser-racket geiser-chicken geiser-chez geiser-chibi geiser-mit geiser-implementation geiser-xref))

(add-hook 'scheme-mode-hook 'geiser-mode--maybe-activate)

(add-to-list 'auto-mode-alist '("\\.rkt\\'" . scheme-mode))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-autodoc"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-autodoc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-autodoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-autodoc" '("geiser-autodoc-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-base"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-base.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-base.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-base" '("geiser--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-chez"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-chez.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-chez.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-chez" '("chez" "geiser-chez-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-chibi"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-chibi.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-chibi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-chibi" '("chibi" "geiser-chibi-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-chicken"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-chicken.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-chicken.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-chicken" '("connect-to-chicken" "chicken" "geiser-chicken-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-company"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-company.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-company" '("geiser-company--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-compile"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-compile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-compile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-compile" '("geiser-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-completion"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-completion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-completion" '("geiser-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-connection"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-connection.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-connection.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-connection" '("geiser-con")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-custom"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-custom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-custom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-custom" '("geiser-custom-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-debug"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-debug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-debug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-debug" '("geiser-debug-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-doc" "../../../../../.emacs.d/elpa/geiser-0.10/geiser-doc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-doc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-doc" '("geiser-doc-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-edit"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-edit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-edit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-edit" '("geiser-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-eval"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-eval.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-eval.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-eval" '("geiser-eval--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-guile"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-guile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-guile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-guile" '("geiser-guile-" "guile" "connect-to-guile")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-image"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-image.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-image.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-image" '("geiser-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-impl"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-impl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-impl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-impl" '("geiser-" "with--geiser-implementation" "define-geiser-implementation")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-log" "../../../../../.emacs.d/elpa/geiser-0.10/geiser-log.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-log.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-log" '("geiser-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-menu"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-menu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-menu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-menu" '("geiser-menu--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-mit" "../../../../../.emacs.d/elpa/geiser-0.10/geiser-mit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-mit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-mit" '("mit" "geiser-mit-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-mode"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-mode" '("geiser-" "turn-o")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-popup"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-popup.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-popup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-popup" '("geiser-popup-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-racket"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-racket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-racket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-racket" '("racket" "run-gracket" "geiser-racket-" "connect-to-racket")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-reload"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-reload.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-reload.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-reload" '("geiser-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-repl"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-repl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-repl" '("geiser" "switch-to-geiser" "run-geiser")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-syntax"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-syntax.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-syntax.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-syntax" '("geiser-syntax--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-table"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-table.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-table.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-table" '("geiser-table-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-version"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-version.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-version.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-version" '("geiser-version")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "geiser-xref"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-xref.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/geiser-0.10/geiser-xref.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geiser-xref" '("geiser-xref-")))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/geiser-0.10/geiser-autodoc.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-base.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-chez.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-chibi.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-chicken.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-company.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-compile.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-completion.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-connection.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-custom.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-debug.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-doc.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-edit.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-eval.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-guile.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-image.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-impl.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-log.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-menu.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-mit.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-popup.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-racket.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-reload.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-repl.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-syntax.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-table.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-version.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser-xref.el"
;;;;;;  "../../../../../.emacs.d/elpa/geiser-0.10/geiser.el") (0
;;;;;;  0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; geiser-autoloads.el ends here
