;;; markdown-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "markdown-mode" "../../../../../../.emacs.d/straight/build/markdown-mode/markdown-mode.el"
;;;;;;  "9c6b097c9fffcf11ec1617bc84959bf6")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

(autoload 'markdown-view-mode "markdown-mode" "\
Major mode for viewing Markdown content.

\(fn)" t nil)

(autoload 'gfm-view-mode "markdown-mode" "\
Major mode for viewing GitHub Flavored Markdown content.

\(fn)" t nil)

(autoload 'markdown-live-preview-mode "markdown-mode" "\
Toggle native previewing on save for a specific markdown file.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "markdown-mode"
;;;;;;  "../../../../../../.emacs.d/straight/build/markdown-mode/markdown-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/markdown-mode/markdown-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "markdown-mode" '("gfm-" "markdown" "defun-markdown-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/markdown-mode/markdown-mode.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'markdown-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; markdown-mode-autoloads.el ends here
