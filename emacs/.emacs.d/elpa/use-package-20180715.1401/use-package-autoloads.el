;;; use-package-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bind-chord" "../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-chord.el"
;;;;;;  "c0f1960951e465a25f8fb6fe86e5813d")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-chord.el

(autoload 'bind-chord "bind-chord" "\
Bind CHORD to COMMAND in KEYMAP (`global-map' if not passed).

\(fn CHORD COMMAND &optional KEYMAP)" nil t)

(autoload 'bind-chords "bind-chord" "\
Bind multiple chords at once.

Accepts keyword argument:
:map - a keymap into which the keybindings should be added

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

;;;***

;;;### (autoloads nil "bind-key" "../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-key.el"
;;;;;;  "f398855586b08018a4df0acbc4f8d05f")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-key.el

(autoload 'bind-key "bind-key" "\
Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap and not a quoted symbol.
For example:

  (bind-key \"M-h\" #'some-interactive-function my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

\(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t)

(autoload 'unbind-key "bind-key" "\
Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

\(fn KEY-NAME &optional KEYMAP)" nil t)

(autoload 'bind-key* "bind-key" "\
Similar to `bind-key', but overrides any mode-specific bindings.

\(fn KEY-NAME COMMAND &optional PREDICATE)" nil t)

(autoload 'bind-keys "bind-key" "\
Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

(autoload 'bind-keys* "bind-key" "\


\(fn &rest ARGS)" nil t)

(autoload 'describe-personal-keybindings "bind-key" "\
Display all the personal keybindings defined by `bind-key'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "bind-key" "../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-key.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-key.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bind-key" '("compare-keybindings" "get-binding-description" "bind-key" "personal-keybindings" "override-global-m")))

;;;***

;;;***

;;;### (autoloads nil "use-package-bind-key" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-bind-key.el"
;;;;;;  "c90d37deb10a62f6f9a71142c85f0513")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-bind-key.el

(autoload 'use-package-autoload-keymap "use-package-bind-key" "\
Loads PACKAGE and then binds the key sequence used to invoke
this function to KEYMAP-SYMBOL. It then simulates pressing the
same key sequence a again, so that the next key pressed is routed
to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword. It
works by binding the given key sequence to an invocation of this
function for a particular keymap. The keymap is expected to be
defined by the package. In this way, loading the package is
deferred until the prefix key sequence is pressed.

\(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil)

(autoload 'use-package-normalize-binder "use-package-bind-key" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(defalias 'use-package-normalize/:bind 'use-package-normalize-binder)

(defalias 'use-package-normalize/:bind* 'use-package-normalize-binder)

(defalias 'use-package-autoloads/:bind 'use-package-autoloads-mode)

(defalias 'use-package-autoloads/:bind* 'use-package-autoloads-mode)

(autoload 'use-package-handler/:bind "use-package-bind-key" "\


\(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil)

(defalias 'use-package-normalize/:bind-keymap 'use-package-normalize-binder)

(defalias 'use-package-normalize/:bind-keymap* 'use-package-normalize-binder)

(autoload 'use-package-handler/:bind-keymap "use-package-bind-key" "\


\(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil)

(autoload 'use-package-handler/:bind-keymap* "use-package-bind-key" "\


\(fn NAME KEYWORD ARG REST STATE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-bind-key"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-bind-key.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-bind-key.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-bind-key" '("use-package-handler/:bind*")))

;;;***

;;;***

;;;### (autoloads nil "use-package-chords" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-chords.el"
;;;;;;  "74512526090df5b151b05f0cd14d2cc7")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-chords.el

(defalias 'use-package-autoloads/:chords 'use-package-autoloads-mode)

(defalias 'use-package-normalize/:chords 'use-package-normalize-binder)

(autoload 'use-package-handler/:chords "use-package-chords" "\
Handler for `:chords' keyword in `use-package'.

\(fn NAME KEYWORD ARG REST STATE)" nil nil)

;;;***

;;;### (autoloads nil "use-package-core" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-core.el"
;;;;;;  "ce4297b9cdf5fd1e2c5d6c3855969909")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-core.el

(autoload 'use-package "use-package-core" "\
Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:after           Defer loading of a package until after any of the named
                 features are loaded.
:demand          Prevent deferred loading in all cases.

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `customize-set-variable' with each variable definition.
:custom-face     Call `customize-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

\(fn NAME &rest ARGS)" nil t)

(function-put 'use-package 'lisp-indent-function '1)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-core"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-core" '("use-package-")))

;;;***

;;;***

;;;### (autoloads nil "use-package-delight" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-delight.el"
;;;;;;  "746f268bae17ced2d74b26af26a6dff0")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-delight.el

(autoload 'use-package-normalize/:delight "use-package-delight" "\
Normalize arguments to delight.

\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:delight "use-package-delight" "\


\(fn NAME KEYWORD ARGS REST STATE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-delight"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-delight.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-delight.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-delight" '("use-package-normalize-delight")))

;;;***

;;;***

;;;### (autoloads nil "use-package-diminish" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-diminish.el"
;;;;;;  "b69844ce6ed740f161629bb81bdbeca4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-diminish.el

(autoload 'use-package-normalize/:diminish "use-package-diminish" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:diminish "use-package-diminish" "\


\(fn NAME KEYWORD ARG REST STATE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-diminish"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-diminish.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-diminish.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-diminish" '("use-package-normalize-diminish")))

;;;***

;;;***

;;;### (autoloads nil "use-package-ensure" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure.el"
;;;;;;  "df4023c75815a91268b0d47df882bebe")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure.el

(autoload 'use-package-normalize/:ensure "use-package-ensure" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:ensure "use-package-ensure" "\


\(fn NAME KEYWORD ENSURE REST STATE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-ensure"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-ensure" '("use-package-")))

;;;***

;;;***

;;;### (autoloads nil "use-package-ensure-system-package" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure-system-package.el"
;;;;;;  "4dc6b6693ddcd755436e450be97bd0aa")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure-system-package.el

(autoload 'use-package-normalize/:ensure-system-package "use-package-ensure-system-package" "\
Turn `arg' into a list of cons-es of (`package-name' . `install-command').

\(fn NAME-SYMBOL KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:ensure-system-package "use-package-ensure-system-package" "\
Execute the handler for `:ensure-system-package' keyword in `use-package'.

\(fn NAME KEYWORD ARG REST STATE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-ensure-system-package"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure-system-package.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure-system-package.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-ensure-system-package" '("use-package-ensure-system-package-")))

;;;***

;;;***

;;;### (autoloads nil "use-package-jump" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-jump.el"
;;;;;;  "04180cfab94d3c8a0c1706b824291120")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-jump.el

(autoload 'use-package-jump-to-package-form "use-package-jump" "\
Attempt to find and jump to the `use-package' form that loaded
PACKAGE. This will only find the form if that form actually
required PACKAGE. If PACKAGE was previously required then this
function will jump to the file that originally required PACKAGE
instead.

\(fn PACKAGE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-jump"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-jump.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-jump.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-jump" '("use-package-find-require")))

;;;***

;;;***

;;;### (autoloads nil "use-package-lint" "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-lint.el"
;;;;;;  "dd09dee893c571ce90086743c3704b28")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-lint.el

(autoload 'use-package-lint "use-package-lint" "\
Check for errors in use-package declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "use-package-lint"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-lint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-lint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-lint" '("use-package-lint-declaration")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-chord.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/bind-key.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-bind-key.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-chords.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-core.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-delight.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-diminish.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure-system-package.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-ensure.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-jump.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-lint.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/use-package-20180715.1401/use-package.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; use-package-autoloads.el ends here
