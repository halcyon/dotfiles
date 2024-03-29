;;; hindent-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "hindent" "hindent.el" (0 0 0 0))
;;; Generated autoloads from hindent.el

(autoload 'hindent-mode "hindent" "\
Indent code with the hindent program.

If called interactively, toggle `Hindent mode'.  If the prefix
argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when
it is disabled.

Provide the following keybindings:

\\{hindent-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'hindent-reformat-decl "hindent" "\
Re-format the current declaration.

The declaration is parsed and pretty printed.  Comments are
preserved, although placement may be funky." t nil)

(autoload 'hindent-reformat-buffer "hindent" "\
Reformat the whole buffer." t nil)

(autoload 'hindent-reformat-decl-or-fill "hindent" "\
Re-format current declaration, or fill paragraph.

Fill paragraph if in a comment, otherwise reformat the current
declaration.  When filling, the prefix argument JUSTIFY will
cause the text to be justified, as per `fill-paragraph'.

\(fn JUSTIFY)" t nil)

(autoload 'hindent-reformat-region "hindent" "\
Reformat the region from BEG to END, accounting for indentation.

If DROP-NEWLINE is non-nil, don't require a newline at the end of
the file.

\(fn BEG END &optional DROP-NEWLINE)" t nil)

(define-obsolete-function-alias 'hindent/reformat-decl 'hindent-reformat-decl "hindent 5.2.2")

(register-definition-prefixes "hindent" '("hindent-"))

;;;***

(provide 'hindent-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hindent-autoloads.el ends here
