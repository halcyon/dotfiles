;;; rust-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "rust-mode" "rust-mode.el" (0 0 0 0))
;;; Generated autoloads from rust-mode.el

(autoload 'rust-mode "rust-mode" "\
Major mode for Rust code.

\\{rust-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rust-mode" '("rust" "cargo-compilation-regexps")))

;;;***

(provide 'rust-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rust-mode-autoloads.el ends here
