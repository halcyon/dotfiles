;;; use-package-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "bind-key" "bind-key.el" (22568 4140 146666
;;;;;;  668000))
;;; Generated autoloads from bind-key.el

(autoload 'bind-key "bind-key" "\
Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

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

;;;***

;;;### (autoloads nil "use-package" "use-package.el" (22568 4140
;;;;;;  146666 668000))
;;; Generated autoloads from use-package.el

(autoload 'use-package "use-package" "\
Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init          Code to run before PACKAGE-NAME has been loaded.
:config        Code to run after PACKAGE-NAME has been loaded.  Note that if
               loading is deferred for any reason, this code does not execute
               until the lazy load has occurred.
:preface       Code to be run before everything except `:disabled'; this can
               be used to define functions for use in `:if', or that should be
               seen by the byte-compiler.

:mode          Form to be added to `auto-mode-alist'.
:interpreter   Form to be added to `interpreter-mode-alist'.

:commands      Define autoloads for commands that will be defined by the
               package.  This is useful if the package is being lazily loaded,
               and you wish to conditionally call functions in your `:init'
               block that are defined in the package.

:bind          Bind keys, and define autoloads for the bound commands.
:bind*         Bind keys, and define autoloads for the bound commands,
               *overriding all minor mode bindings*.
:bind-keymap   Bind a key prefix to an auto-loaded keymap defined in the
               package.  This is like `:bind', but for keymaps.
:bind-keymap*  Like `:bind-keymap', but overrides all minor mode bindings

:defer         Defer loading of a package -- this is implied when using
               `:commands', `:bind', `:bind*', `:mode' or `:interpreter'.
               This can be an integer, to force loading after N seconds of
               idle time, if the package has not already been loaded.

:after         Defer loading of a package until after any of the named
               features are loaded.

:demand        Prevent deferred loading in all cases.

:if EXPR       Initialize and load only if EXPR evaluates to a non-nil value.
:disabled      The package is ignored completely if this keyword is present.
:defines       Declare certain variables to silence the byte-compiler.
:functions     Declare certain functions to silence the byte-compiler.
:load-path     Add to the `load-path' before attempting to load the package.
:diminish      Support for diminish.el (if installed).
:ensure        Loads the package using package.el if necessary.
:pin           Pin the package to an archive.

\(fn NAME &rest ARGS)" nil t)

(function-put 'use-package 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil nil ("use-package-pkg.el") (22568 4140 140000
;;;;;;  1000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; use-package-autoloads.el ends here
