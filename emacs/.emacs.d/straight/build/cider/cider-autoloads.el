;;; cider-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "cider" "../../../../../../.emacs.d/straight/build/cider/cider.el"
;;;;;;  "9b1cc5105c93318e932130efdb6620fd")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider.el

(autoload 'cider-version "cider" "\
Display CIDER's version.

\(fn)" t nil)
 (autoload 'cider-start-map "cider" "CIDER jack-in and connect keymap." t 'keymap)

(autoload 'cider-jack-in-clj "cider" "\
Start an nREPL server for the current project and connect to it.
PARAMS is a plist optionally containing :project-dir and :jack-in-cmd.
With the prefix argument, allow editing of the jack in command; with a
double prefix prompt for all these parameters.

\(fn PARAMS)" t nil)

(autoload 'cider-jack-in-cljs "cider" "\
Start an nREPL server for the current project and connect to it.
PARAMS is a plist optionally containing :project-dir, :jack-in-cmd and
:cljs-repl-type (e.g. Node, Figwheel, etc).  With the prefix argument,
allow editing of the jack in command; with a double prefix prompt for all
these parameters.

\(fn PARAMS)" t nil)

(autoload 'cider-jack-in-clj&cljs "cider" "\
Start an nREPL server and connect with clj and cljs REPLs.
PARAMS is a plist optionally containing :project-dir, :jack-in-cmd and
:cljs-repl-type (e.g. Node, Figwheel, etc).  With the prefix argument,
allow for editing of the jack in command; with a double prefix prompt for
all these parameters.  When SOFT-CLJS-START is non-nil, start cljs REPL
only when the ClojureScript dependencies are met.

\(fn &optional PARAMS SOFT-CLJS-START)" t nil)

(autoload 'cider-connect-sibling-clj "cider" "\
Create a Clojure REPL with the same server as OTHER-REPL.
PARAMS is for consistency with other connection commands and is currently
ignored.  OTHER-REPL defaults to `cider-current-repl' and in programs can
also be a server buffer, in which case a new session with a REPL for that
server is created.

\(fn PARAMS &optional OTHER-REPL)" t nil)

(autoload 'cider-connect-sibling-cljs "cider" "\
Create a ClojureScript REPL with the same server as OTHER-REPL.
PARAMS is a plist optionally containing :cljs-repl-type (e.g. Node,
Figwheel, etc).  All other parameters are inferred from the OTHER-REPL.
OTHER-REPL defaults to `cider-current-repl' but in programs can also be a
server buffer, in which case a new session for that server is created.

\(fn PARAMS &optional OTHER-REPL)" t nil)

(autoload 'cider-connect-clj "cider" "\
Initialize a Clojure connection to an nREPL server.
PARAMS is a plist optionally containing :host, :port and :project-dir.  On
prefix argument, prompt for all the parameters.

\(fn &optional PARAMS)" t nil)

(autoload 'cider-connect-cljs "cider" "\
Initialize a ClojureScript connection to an nREPL server.
PARAMS is a plist optionally containing :host, :port, :project-dir and
:cljs-repl-type (e.g. Node, Figwheel, etc).  On prefix, prompt for all the
parameters regardless of their supplied or default values.

\(fn &optional PARAMS)" t nil)

(autoload 'cider-connect-clj&cljs "cider" "\
Initialize a Clojure and ClojureScript connection to an nREPL server.
PARAMS is a plist optionally containing :host, :port, :project-dir and
:cljs-repl-type (e.g. Node, Figwheel, etc).  When SOFT-CLJS-START is
non-nil, don't start if ClojureScript requirements are not met.

\(fn PARAMS &optional SOFT-CLJS-START)" t nil)

(autoload 'cider "cider" "\
Start a connection of any type interactively.

\(fn)" t nil)

(defalias 'cider-jack-in #'cider-jack-in-clj)

(define-obsolete-function-alias 'cider-jack-in-clojure 'cider-jack-in-clj "0.22")

(define-obsolete-function-alias 'cider-jack-in-clojurescript 'cider-jack-in-cljs "0.22")

(defalias 'cider-connect #'cider-connect-clj)

(define-obsolete-function-alias 'cider-connect-clojure 'cider-connect-clj "0.22")

(define-obsolete-function-alias 'cider-connect-clojurescript 'cider-connect-cljs "0.22")

(define-obsolete-function-alias 'cider-connect-sibling-clojure 'cider-connect-sibling-clj "0.22")

(define-obsolete-function-alias 'cider-connect-sibling-clojurescript 'cider-connect-sibling-cljs "0.22")

(with-eval-after-load 'clojure-mode (define-key clojure-mode-map (kbd "C-c M-x") #'cider) (define-key clojure-mode-map (kbd "C-c M-j") #'cider-jack-in-clj) (define-key clojure-mode-map (kbd "C-c M-J") #'cider-jack-in-cljs) (define-key clojure-mode-map (kbd "C-c M-c") #'cider-connect-clj) (define-key clojure-mode-map (kbd "C-c M-C") #'cider-connect-cljs) (define-key clojure-mode-map (kbd "C-c C-x") 'cider-start-map) (define-key clojure-mode-map (kbd "C-c C-s") 'sesman-map) (require 'sesman) (sesman-install-menu clojure-mode-map) (add-hook 'clojure-mode-hook (lambda nil (setq-local sesman-system 'CIDER))))

;;;### (autoloads "actual autoloads are elsewhere" "cider" "../../../../../../.emacs.d/straight/build/cider/cider.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-apropos" "../../../../../../.emacs.d/straight/build/cider/cider-apropos.el"
;;;;;;  "93a34045d4ecdfa5d9352db451fc0219")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-apropos.el

(autoload 'cider-apropos "cider-apropos" "\
Show all symbols whose names match QUERY, a regular expression.
QUERY can also be a list of space-separated words (e.g. take while) which
will be converted to a regular expression (like take.+while) automatically
behind the scenes.  The search may be limited to the namespace NS, and may
optionally search doc strings (based on DOCS-P), include private vars
\(based on PRIVATES-P), and be case-sensitive (based on CASE-SENSITIVE-P).

\(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation "cider-apropos" "\
Shortcut for (cider-apropos <query> nil t).

\(fn)" t nil)

(autoload 'cider-apropos-select "cider-apropos" "\
Similar to `cider-apropos', but presents the results in a completing read.
Show all symbols whose names match QUERY, a regular expression.
QUERY can also be a list of space-separated words (e.g. take while) which
will be converted to a regular expression (like take.+while) automatically
behind the scenes.  The search may be limited to the namespace NS, and may
optionally search doc strings (based on DOCS-P), include private vars
\(based on PRIVATES-P), and be case-sensitive (based on CASE-SENSITIVE-P).

\(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation-select "cider-apropos" "\
Shortcut for (cider-apropos-select <query> nil t).

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-apropos"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-apropos.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-apropos.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-apropos" '("cider-" "apropos-special-form")))

;;;***

;;;***

;;;### (autoloads nil "cider-browse-ns" "../../../../../../.emacs.d/straight/build/cider/cider-browse-ns.el"
;;;;;;  "0e34fd31908839a9eb96e29f7975244a")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-browse-ns.el

(autoload 'cider-browse-ns "cider-browse-ns" "\
List all NAMESPACE's vars in BUFFER.

\(fn NAMESPACE)" t nil)

(autoload 'cider-browse-ns-all "cider-browse-ns" "\
List all loaded namespaces in BUFFER.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-browse-ns"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-browse-ns.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-browse-ns.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-browse-ns" '("cider-browse-ns-")))

;;;***

;;;***

;;;### (autoloads nil "cider-browse-spec" "../../../../../../.emacs.d/straight/build/cider/cider-browse-spec.el"
;;;;;;  "b5971b9566949d9028e9940a9f8e42e1")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-browse-spec.el

(autoload 'cider-browse-spec "cider-browse-spec" "\
Browse SPEC definition.

\(fn SPEC)" t nil)

(autoload 'cider-browse-spec-all "cider-browse-spec" "\
Open list of specs in a popup buffer.

With a prefix argument ARG, prompts for a regexp to filter specs.
No filter applied if the regexp is the empty string.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-browse-spec"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-browse-spec.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-browse-spec.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-browse-spec" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-cheatsheet" "../../../../../../.emacs.d/straight/build/cider/cider-cheatsheet.el"
;;;;;;  "5ef7fad4d07cd52bd20a594ee998c5c5")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-cheatsheet.el

(autoload 'cider-cheatsheet "cider-cheatsheet" "\
Navigate `cider-cheatsheet-hierarchy' with `completing-read'.

When you make it to a Clojure var its doc buffer gets displayed.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-cheatsheet"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-cheatsheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-cheatsheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-cheatsheet" '("cider-cheatsheet-")))

;;;***

;;;***

;;;### (autoloads nil "cider-classpath" "../../../../../../.emacs.d/straight/build/cider/cider-classpath.el"
;;;;;;  "66dc46772e4dc7378f943571d0e2c64c")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-classpath.el

(autoload 'cider-classpath "cider-classpath" "\
List all classpath entries.

\(fn)" t nil)

(autoload 'cider-open-classpath-entry "cider-classpath" "\
Open a classpath entry.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-classpath"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-classpath.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-classpath.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-classpath" '("cider-classpath-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-client"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-client.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-client.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-client" '("cider-")))

;;;***

;;;### (autoloads nil "cider-clojuredocs" "../../../../../../.emacs.d/straight/build/cider/cider-clojuredocs.el"
;;;;;;  "f1ef6211d217e590194637d30c8db980")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-clojuredocs.el

(autoload 'cider-clojuredocs-web "cider-clojuredocs" "\
Open ClojureDocs documentation in the default web browser.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

(autoload 'cider-clojuredocs-refresh-cache "cider-clojuredocs" "\
Refresh the ClojureDocs cache.

\(fn)" t nil)

(autoload 'cider-clojuredocs "cider-clojuredocs" "\
Open ClojureDocs documentation in a popup buffer.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-clojuredocs"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-clojuredocs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-clojuredocs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-clojuredocs" '("cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-common"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-common.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-common.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-common" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-completion"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-completion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-completion" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-connection"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-connection.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-connection.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-connection" '("cider-")))

;;;***

;;;### (autoloads nil "cider-debug" "../../../../../../.emacs.d/straight/build/cider/cider-debug.el"
;;;;;;  "682df4f27efd98ff47e579c8c7dd3f6d")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-debug.el

(autoload 'cider-debug-defun-at-point "cider-debug" "\
Instrument the \"top-level\" expression at point.
If it is a defn, dispatch the instrumented definition.  Otherwise,
immediately evaluate the instrumented expression.

While debugged code is being evaluated, the user is taken through the
source code and displayed the value of various expressions.  At each step,
a number of keys will be prompted to the user.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-debug"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-debug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-debug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-debug" '("cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-doc" "../../../../../../.emacs.d/straight/build/cider/cider-doc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-doc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-doc" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-eldoc"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-eldoc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-eldoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-eldoc" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-eval" "../../../../../../.emacs.d/straight/build/cider/cider-eval.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-eval.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-eval" '("cider-")))

;;;***

;;;### (autoloads nil "cider-find" "../../../../../../.emacs.d/straight/build/cider/cider-find.el"
;;;;;;  "3865033eaccf909cf7744a57c5541ec8")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-find.el

(autoload 'cider-find-var "cider-find" "\
Find definition for VAR at LINE.
Prompt according to prefix ARG and `cider-prompt-for-symbol'.
A single or double prefix argument inverts the meaning of
`cider-prompt-for-symbol'.  A prefix of `-` or a double prefix argument causes
the results to be displayed in a different window.  The default value is
thing at point.

\(fn &optional ARG VAR LINE)" t nil)

(autoload 'cider-find-dwim-at-mouse "cider-find" "\
Find and display variable or resource at mouse EVENT.

\(fn EVENT)" t nil)

(autoload 'cider-find-dwim "cider-find" "\
Find and display the SYMBOL-FILE at point.
SYMBOL-FILE could be a var or a resource.  If thing at point is empty then
show dired on project.  If var is not found, try to jump to resource of the
same name.  When called interactively, a prompt is given according to the
variable `cider-prompt-for-symbol'.  A single or double prefix argument
inverts the meaning.  A prefix of `-' or a double prefix argument causes
the results to be displayed in a different window.  A default value of thing
at point is given when prompted.

\(fn SYMBOL-FILE)" t nil)

(autoload 'cider-find-resource "cider-find" "\
Find the resource at PATH.
Prompt for input as indicated by the variable `cider-prompt-for-symbol'.
A single or double prefix argument inverts the meaning of
`cider-prompt-for-symbol'.  A prefix argument of `-` or a double prefix
argument causes the results to be displayed in other window.  The default
value is thing at point.

\(fn PATH)" t nil)

(autoload 'cider-find-ns "cider-find" "\
Find the file containing NS.
A prefix ARG of `-` or a double prefix argument causes
the results to be displayed in a different window.

\(fn &optional ARG NS)" t nil)

(autoload 'cider-find-keyword "cider-find" "\
Find the namespace of the keyword at point and its first occurrence there.

For instance - if the keyword at point is \":cider.demo/keyword\", this command
would find the namespace \"cider.demo\" and afterwards find the first mention
of \"::keyword\" there.

Prompt according to prefix ARG and `cider-prompt-for-symbol'.
A single or double prefix argument inverts the meaning of
`cider-prompt-for-symbol'.  A prefix of `-` or a double prefix argument causes
the results to be displayed in a different window.  The default value is
thing at point.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-find" "../../../../../../.emacs.d/straight/build/cider/cider-find.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-find.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-find" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-format" "../../../../../../.emacs.d/straight/build/cider/cider-format.el"
;;;;;;  "030b1492e34434b13f902f71655a85eb")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-format.el

(autoload 'cider-format-region "cider-format" "\
Format the Clojure code in the current region.
START and END represent the region's boundaries.

\(fn START END)" t nil)

(autoload 'cider-format-defun "cider-format" "\
Format the code in the current defun.

\(fn)" t nil)

(autoload 'cider-format-buffer "cider-format" "\
Format the Clojure code in the current buffer.

\(fn)" t nil)

(autoload 'cider-format-edn-buffer "cider-format" "\
Format the EDN data in the current buffer.

\(fn)" t nil)

(autoload 'cider-format-edn-region "cider-format" "\
Format the EDN data in the current region.
START and END represent the region's boundaries.

\(fn START END)" t nil)

(autoload 'cider-format-edn-last-sexp "cider-format" "\
Format the EDN data of the last sexp.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-format"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-format.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-format.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-format" '("cider--format-")))

;;;***

;;;***

;;;### (autoloads nil "cider-inspector" "../../../../../../.emacs.d/straight/build/cider/cider-inspector.el"
;;;;;;  "0cc40605f99af8358e7eb3b11a46f4a3")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-inspector.el

(autoload 'cider-inspect-last-sexp "cider-inspector" "\
Inspect the result of the the expression preceding point.

\(fn)" t nil)

(autoload 'cider-inspect-defun-at-point "cider-inspector" "\
Inspect the result of the \"top-level\" expression at point.

\(fn)" t nil)

(autoload 'cider-inspect-last-result "cider-inspector" "\
Inspect the most recent eval result.

\(fn)" t nil)

(autoload 'cider-inspect "cider-inspector" "\
Inspect the result of the preceding sexp.

With a prefix argument ARG it inspects the result of the \"top-level\" form.
With a second prefix argument it prompts for an expression to eval and inspect.

\(fn &optional ARG)" t nil)

(autoload 'cider-inspect-expr "cider-inspector" "\
Evaluate EXPR in NS and inspect its value.
Interactively, EXPR is read from the minibuffer, and NS the
current buffer's namespace.

\(fn EXPR NS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-inspector"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-inspector.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-inspector.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-inspector" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-macroexpansion" "../../../../../../.emacs.d/straight/build/cider/cider-macroexpansion.el"
;;;;;;  "3a66cfae811564207fe12d5d99b955df")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-macroexpansion.el

(autoload 'cider-macroexpand-1 "cider-macroexpansion" "\
Invoke \\=`macroexpand-1\\=` on the expression preceding point.
If invoked with a PREFIX argument, use \\=`macroexpand\\=` instead of
\\=`macroexpand-1\\=`.

\(fn &optional PREFIX)" t nil)

(autoload 'cider-macroexpand-all "cider-macroexpansion" "\
Invoke \\=`macroexpand-all\\=` on the expression preceding point.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-macroexpansion"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-macroexpansion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-macroexpansion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-macroexpansion" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-mode" "../../../../../../.emacs.d/straight/build/cider/cider-mode.el"
;;;;;;  "a08abb0b9ba45207b016f9013dc112b7")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-mode.el

(defvar cider-mode-line '(:eval (format " cider[%s]" (cider--modeline-info))) "\
Mode line lighter for cider mode.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for details
about mode line templates.

Customize this variable to change how cider mode displays its status in the
mode line.  The default value displays the current connection.  Set this
variable to nil to disable the mode line entirely.")

(custom-autoload 'cider-mode-line "cider-mode" t)

(with-eval-after-load 'clojure-mode (easy-menu-define cider-clojure-mode-menu-open clojure-mode-map "Menu for Clojure mode.\n  This is displayed in `clojure-mode' buffers, if `cider-mode' is not active." `("CIDER" :visible (not cider-mode) ["Start a Clojure REPL" cider-jack-in-clj :help "Starts an nREPL server and connects a Clojure REPL to it."] ["Connect to a Clojure REPL" cider-connect-clj :help "Connects to a REPL that's already running."] ["Start a ClojureScript REPL" cider-jack-in-cljs :help "Starts an nREPL server and connects a ClojureScript REPL to it."] ["Connect to a ClojureScript REPL" cider-connect-cljs :help "Connects to a ClojureScript REPL that's already running."] ["Start a Clojure REPL, and a ClojureScript REPL" cider-jack-in-clj&cljs :help "Starts an nREPL server, connects a Clojure REPL to it, and then a ClojureScript REPL."] "--" ["View manual online" cider-view-manual])))

(autoload 'cider-mode "cider-mode" "\
Minor mode for REPL interaction from a Clojure buffer.

\\{cider-mode-map}

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-mode" "../../../../../../.emacs.d/straight/build/cider/cider-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-mode" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-ns" "../../../../../../.emacs.d/straight/build/cider/cider-ns.el"
;;;;;;  "44acc7edfd6ce263e34365c36ed13456")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-ns.el

(autoload 'cider-ns-reload "cider-ns" "\
Send a (require 'ns :reload) to the REPL.

With an argument PROMPT, it prompts for a namespace name.  This is the
Clojure out of the box reloading experience and does not rely on
org.clojure/tools.namespace.  See Commentary of this file for a longer list
of differences.  From the Clojure doc: \":reload forces loading of all the
identified libs even if they are already loaded\".

\(fn &optional PROMPT)" t nil)

(autoload 'cider-ns-reload-all "cider-ns" "\
Send a (require 'ns :reload-all) to the REPL.

With an argument PROMPT, it prompts for a namespace name.  This is the
Clojure out of the box reloading experience and does not rely on
org.clojure/tools.namespace.  See Commentary of this file for a longer list
of differences.  From the Clojure doc: \":reload-all implies :reload and
also forces loading of all libs that the identified libs directly or
indirectly load via require\".

\(fn &optional PROMPT)" t nil)

(autoload 'cider-ns-refresh "cider-ns" "\
Reload modified and unloaded namespaces on the classpath.

With a single prefix argument, or if MODE is `refresh-all', reload all
namespaces on the classpath unconditionally.

With a double prefix argument, or if MODE is `clear', clear the state of
the namespace tracker before reloading.  This is useful for recovering from
some classes of error (for example, those caused by circular dependencies)
that a normal reload would not otherwise recover from.  The trade-off of
clearing is that stale code from any deleted files may not be completely
unloaded.

With a negative prefix argument, or if MODE is `inhibit-fns', prevent any
refresh functions (defined in `cider-ns-refresh-before-fn' and
`cider-ns-refresh-after-fn') from being invoked.

\(fn &optional MODE)" t nil)

(define-obsolete-function-alias 'cider-refresh 'cider-ns-refresh "0.18")

;;;### (autoloads "actual autoloads are elsewhere" "cider-ns" "../../../../../../.emacs.d/straight/build/cider/cider-ns.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-ns.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-ns" '("cider-ns-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-overlays"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-overlays.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-overlays.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-overlays" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-popup"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-popup.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-popup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-popup" '("cider-")))

;;;***

;;;### (autoloads nil "cider-profile" "../../../../../../.emacs.d/straight/build/cider/cider-profile.el"
;;;;;;  "13dadc0f09cdecf5e5ced340d10a3aee")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-profile.el

(autoload 'cider-profile-samples "cider-profile" "\
Displays current max-sample-count.
If optional QUERY is specified, set max-sample-count and display new value.

\(fn &optional QUERY)" t nil)

(autoload 'cider-profile-var-profiled-p "cider-profile" "\
Displays the profiling status of var under point.
Prompts for var if none under point or QUERY is present.

\(fn QUERY)" t nil)

(autoload 'cider-profile-ns-toggle "cider-profile" "\
Toggle profiling for the ns associated with optional QUERY.

If optional argument QUERY is non-nil, prompt for ns.  Otherwise use
current ns.

\(fn &optional QUERY)" t nil)

(autoload 'cider-profile-toggle "cider-profile" "\
Toggle profiling for the given QUERY.
Defaults to the symbol at point.
With prefix arg or no symbol at point, prompts for a var.

\(fn QUERY)" t nil)

(autoload 'cider-profile-summary "cider-profile" "\
Display a summary of currently collected profile data.

\(fn)" t nil)

(autoload 'cider-profile-var-summary "cider-profile" "\
Display profile data for var under point QUERY.
Defaults to the symbol at point.  With prefix arg or no symbol at point,
prompts for a var.

\(fn QUERY)" t nil)

(autoload 'cider-profile-clear "cider-profile" "\
Clear any collected profile data.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-profile"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-profile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-profile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-profile" '("cider-profile-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-repl" "../../../../../../.emacs.d/straight/build/cider/cider-repl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-repl" '("cider-")))

;;;***

;;;### (autoloads nil "cider-repl-history" "../../../../../../.emacs.d/straight/build/cider/cider-repl-history.el"
;;;;;;  "7386c8c3dbad5463aa24c022e12e8f90")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-repl-history.el

(autoload 'cider-repl-history "cider-repl-history" "\
Display items in the CIDER command history in another buffer.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-repl-history"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-repl-history.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-repl-history.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-repl-history" '("cider-repl-history-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-resolve"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-resolve.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-resolve.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-resolve" '("cider-resolve-")))

;;;***

;;;### (autoloads nil "cider-scratch" "../../../../../../.emacs.d/straight/build/cider/cider-scratch.el"
;;;;;;  "12df16469b699df3e8e68061c70512dd")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-scratch.el

(autoload 'cider-scratch "cider-scratch" "\
Go to the scratch buffer named `cider-scratch-buffer-name'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-scratch"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-scratch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-scratch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-scratch" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-selector" "../../../../../../.emacs.d/straight/build/cider/cider-selector.el"
;;;;;;  "8fb1fcbe48e5abff0df454c8da132b81")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-selector.el

(autoload 'cider-selector "cider-selector" "\
Select a new buffer by type, indicated by a single character.
The user is prompted for a single character indicating the method by
which to choose a new buffer.  The `?' character describes the
available methods.  OTHER-WINDOW provides an optional target.
See `def-cider-selector-method' for defining new methods.

\(fn &optional OTHER-WINDOW)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-selector"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-selector.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-selector.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-selector" '("??" "?c" "?e" "?q" "?r" "?m" "?x" "?p" "?d" "?s" "def-cider-selector-method" "cider-selector-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-stacktrace"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-stacktrace.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-stacktrace.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-stacktrace" '("cider-")))

;;;***

;;;### (autoloads nil "cider-test" "../../../../../../.emacs.d/straight/build/cider/cider-test.el"
;;;;;;  "3c8d83640fe60f92f500b8418b21578c")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-test.el

(defvar cider-auto-test-mode nil "\
Non-nil if Cider-Auto-Test mode is enabled.
See the `cider-auto-test-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `cider-auto-test-mode'.")

(custom-autoload 'cider-auto-test-mode "cider-test" nil)

(autoload 'cider-auto-test-mode "cider-test" "\
Toggle automatic testing of Clojure files.

When enabled this reruns tests every time a Clojure file is loaded.
Only runs tests corresponding to the loaded file's namespace and does
nothing if no tests are defined or if the file failed to load.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-test" "../../../../../../.emacs.d/straight/build/cider/cider-test.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-test.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-test" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-tracing" "../../../../../../.emacs.d/straight/build/cider/cider-tracing.el"
;;;;;;  "b927704ea9fcdc653b7849bbe73eb342")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-tracing.el

(autoload 'cider-toggle-trace-var "cider-tracing" "\
Toggle var tracing.
Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the
opposite of what that option dictates.

\(fn ARG)" t nil)

(autoload 'cider-toggle-trace-ns "cider-tracing" "\
Toggle ns tracing.
Defaults to the current ns.  With prefix arg QUERY, prompts for a ns.

\(fn QUERY)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-tracing"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-tracing.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-tracing.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-tracing" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-util" "../../../../../../.emacs.d/straight/build/cider/cider-util.el"
;;;;;;  "42dfdee47d318dfd020d7753017c18ac")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-util.el

(autoload 'cider-view-manual "cider-util" "\
View the manual in your default browser.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-util" "../../../../../../.emacs.d/straight/build/cider/cider-util.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-util" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-xref" "../../../../../../.emacs.d/straight/build/cider/cider-xref.el"
;;;;;;  "667630bb5b807dedf1fab51f57071d62")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-xref.el

(autoload 'cider-xref-fn-refs "cider-xref" "\
Show all functions that reference the var matching NS and SYMBOL.

\(fn &optional NS SYMBOL)" t nil)

(autoload 'cider-xref-fn-deps "cider-xref" "\
Show all functions referenced by the var matching NS and SYMBOL.

\(fn &optional NS SYMBOL)" t nil)

(autoload 'cider-xref-fn-refs-select "cider-xref" "\
Displays the references for NS and SYMBOL using completing read.

\(fn &optional NS SYMBOL)" t nil)

(autoload 'cider-xref-fn-deps-select "cider-xref" "\
Displays the function dependencies for  NS and SYMBOL using completing read.

\(fn &optional NS SYMBOL)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-xref" "../../../../../../.emacs.d/straight/build/cider/cider-xref.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/cider-xref.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-xref" '("cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "nrepl-client"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/nrepl-client.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/nrepl-client.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nrepl-client" '("nrepl-" "cider-enlighten-mode")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "nrepl-dict" "../../../../../../.emacs.d/straight/build/cider/nrepl-dict.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/cider/nrepl-dict.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nrepl-dict" '("nrepl-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/cider/cider-apropos.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-browse-ns.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-browse-spec.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-cheatsheet.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-classpath.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-client.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-clojuredocs.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-common.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-compat.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-completion.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-connection.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-debug.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-doc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-eldoc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-eval.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-find.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-format.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-inspector.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-macroexpansion.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-mode.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-ns.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-overlays.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-popup.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-profile.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-repl-history.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-repl.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-resolve.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-scratch.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-selector.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-stacktrace.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-test.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-tracing.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-util.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider-xref.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/cider.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/nrepl-client.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/cider/nrepl-dict.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'cider-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cider-autoloads.el ends here
