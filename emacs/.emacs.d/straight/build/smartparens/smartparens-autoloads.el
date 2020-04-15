;;; smartparens-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "smartparens" "../../../../../../.emacs.d/straight/build/smartparens/smartparens.el"
;;;;;;  "8bd89a7dc7ade3599899f4023b38cf31")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens.el

(autoload 'sp-cheat-sheet "smartparens" "\
Generate a cheat sheet of all the smartparens interactive functions.

Without a prefix argument, print only the short documentation and examples.

With non-nil prefix argument ARG, show the full documentation for each function.

You can follow the links to the function or variable help page.
To get back to the full list, use \\[help-go-back].

You can use `beginning-of-defun' and `end-of-defun' to jump to
the previous/next entry.

Examples are fontified using the `font-lock-string-face' for
better orientation.

\(fn &optional ARG)" t nil)

(defvar smartparens-mode-map (make-sparse-keymap) "\
Keymap used for `smartparens-mode'.")

(autoload 'sp-use-paredit-bindings "smartparens" "\
Initiate `smartparens-mode-map' with `sp-paredit-bindings'.

\(fn)" t nil)

(autoload 'sp-use-smartparens-bindings "smartparens" "\
Initiate `smartparens-mode-map' with `sp-smartparens-bindings'.

\(fn)" t nil)

(autoload 'smartparens-mode "smartparens" "\
Toggle smartparens mode.

You can enable pre-set bindings by customizing
`sp-base-key-bindings' variable.  The current content of
`smartparens-mode-map' is:

 \\{smartparens-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'smartparens-strict-mode "smartparens" "\
Toggle the strict smartparens mode.

When strict mode is active, `delete-char', `kill-word' and their
backward variants will skip over the pair delimiters in order to
keep the structure always valid (the same way as `paredit-mode'
does).  This is accomplished by remapping them to
`sp-delete-char' and `sp-kill-word'.  There is also function
`sp-kill-symbol' that deletes symbols instead of words, otherwise
working exactly the same (it is not bound to any key by default).

When strict mode is active, this is indicated with \"/s\"
after the smartparens indicator in the mode list.

\(fn &optional ARG)" t nil)

(defvar smartparens-global-strict-mode nil "\
Non-nil if Smartparens-Global-Strict mode is enabled.
See the `smartparens-global-strict-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-strict-mode'.")

(custom-autoload 'smartparens-global-strict-mode "smartparens" nil)

(autoload 'smartparens-global-strict-mode "smartparens" "\
Toggle Smartparens-Strict mode in all buffers.
With prefix ARG, enable Smartparens-Global-Strict mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens-Strict mode is enabled in all buffers where
`turn-on-smartparens-strict-mode' would do it.
See `smartparens-strict-mode' for more information on Smartparens-Strict mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-strict-mode "smartparens" "\
Turn on `smartparens-strict-mode'.

\(fn)" t nil)

(autoload 'turn-off-smartparens-strict-mode "smartparens" "\
Turn off `smartparens-strict-mode'.

\(fn)" t nil)

(defvar smartparens-global-mode nil "\
Non-nil if Smartparens-Global mode is enabled.
See the `smartparens-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-mode'.")

(custom-autoload 'smartparens-global-mode "smartparens" nil)

(autoload 'smartparens-global-mode "smartparens" "\
Toggle Smartparens mode in all buffers.
With prefix ARG, enable Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens mode is enabled in all buffers where
`turn-on-smartparens-mode' would do it.
See `smartparens-mode' for more information on Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-mode "smartparens" "\
Turn on `smartparens-mode'.

This function is used to turn on `smartparens-global-mode'.

By default `smartparens-global-mode' ignores buffers with
`mode-class' set to special, but only if they are also not comint
buffers.

Additionally, buffers on `sp-ignore-modes-list' are ignored.

You can still turn on smartparens in these mode manually (or
in mode's startup-hook etc.) by calling `smartparens-mode'.

\(fn)" t nil)

(autoload 'turn-off-smartparens-mode "smartparens" "\
Turn off `smartparens-mode'.

\(fn)" t nil)

(autoload 'show-smartparens-mode "smartparens" "\
Toggle visualization of matching pairs.  When enabled, any
matching pair is highlighted after `sp-show-pair-delay' seconds
of Emacs idle time if the point is immediately in front or after
a pair.  This mode works similarly to `show-paren-mode', but
support custom pairs.

\(fn &optional ARG)" t nil)

(defvar show-smartparens-global-mode nil "\
Non-nil if Show-Smartparens-Global mode is enabled.
See the `show-smartparens-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `show-smartparens-global-mode'.")

(custom-autoload 'show-smartparens-global-mode "smartparens" nil)

(autoload 'show-smartparens-global-mode "smartparens" "\
Toggle Show-Smartparens mode in all buffers.
With prefix ARG, enable Show-Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Show-Smartparens mode is enabled in all buffers where
`turn-on-show-smartparens-mode' would do it.
See `show-smartparens-mode' for more information on Show-Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-show-smartparens-mode "smartparens" "\
Turn on `show-smartparens-mode'.

\(fn)" t nil)

(autoload 'turn-off-show-smartparens-mode "smartparens" "\
Turn off `show-smartparens-mode'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "smartparens"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens" '("smartparens-" "sp-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-clojure"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-clojure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-clojure.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-clojure" '("sp-clojure-prefix")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-config"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-config.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-config" '("sp-lisp-invalid-hyperlink-p")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-crystal"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-crystal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-crystal.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-crystal" '("sp-crystal-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-elixir"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-elixir.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-elixir" '("sp-elixir-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-ess"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-ess.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-ess.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-ess" '("sp-ess-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-haskell"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-haskell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-haskell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-haskell" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-html"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-html" '("sp-html-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-latex"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-latex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-latex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-latex" '("sp-latex-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-lua"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-lua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-lua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-lua" '("sp-lua-post-keyword-insert")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-markdown"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-markdown.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-markdown.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-markdown" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-org"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-org" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-python"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-python.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-python.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-python" '("sp-python-fix-tripple-quotes")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-ruby"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-ruby.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-ruby.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-ruby" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-rust"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-rust.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-rust.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-rust" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-scala"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-scala.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-scala.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-scala" '("sp-scala-wrap-with-indented-newlines")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-text"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-text.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/smartparens/smartparens-text.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-text" '("sp-text-mode-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/smartparens/smartparens-c.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-clojure.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-config.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-crystal.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-elixir.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-ess.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-haskell.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-html.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-javascript.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-latex.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-lua.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-markdown.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-ml.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-org.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-pkg.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-python.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-racket.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-rst.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-ruby.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-rust.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-scala.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens-text.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/smartparens/smartparens.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'smartparens-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; smartparens-autoloads.el ends here
