;;; notmuch-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads "actual autoloads are elsewhere" "coolj" "../../../../../../.emacs.d/straight/build/notmuch/coolj.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/coolj.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "coolj" '("coolj-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "make-deps" "../../../../../../.emacs.d/straight/build/notmuch/make-deps.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/make-deps.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "make-deps" '("make-deps" "batch-make-deps")))

;;;***

;;;### (autoloads nil "notmuch" "../../../../../../.emacs.d/straight/build/notmuch/notmuch.el"
;;;;;;  "b66cc5f86086ea221eb4159c8ed741a4")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch.el

(autoload 'notmuch-search "notmuch" "\
Display threads matching QUERY in a notmuch-search buffer.

If QUERY is nil, it is read interactively from the minibuffer.
Other optional parameters are used as follows:

  OLDEST-FIRST: A Boolean controlling the sort order of returned threads
  TARGET-THREAD: A thread ID (without the thread: prefix) that will be made
                 current if it appears in the search results.
  TARGET-LINE: The line number to move to if the target thread does not
               appear in the search results.
  NO-DISPLAY: Do not try to foreground the search results buffer. If it is
              already foregrounded i.e. displayed in a window, this has no
              effect, meaning the buffer will remain visible.

When called interactively, this will prompt for a query and use
the configured default sort order.

\(fn &optional QUERY OLDEST-FIRST TARGET-THREAD TARGET-LINE NO-DISPLAY)" t nil)

(autoload 'notmuch "notmuch" "\
Run notmuch and display saved searches, known tags, etc.

\(fn)" t nil)

(autoload 'notmuch-cycle-notmuch-buffers "notmuch" "\
Cycle through any existing notmuch buffers (search, show or hello).

If the current buffer is the only notmuch buffer, bury it. If no
notmuch buffers exist, run `notmuch'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch" "../../../../../../.emacs.d/straight/build/notmuch/notmuch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch" '("notmuch-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-address"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-address.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-address.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-address" '("notmuch-address-")))

;;;***

;;;### (autoloads nil "notmuch-company" "../../../../../../.emacs.d/straight/build/notmuch/notmuch-company.el"
;;;;;;  "7ad12506a7e123889bbc47b08ac9cacd")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-company.el

(autoload 'notmuch-company-setup "notmuch-company" "\


\(fn)" nil nil)

(autoload 'notmuch-company "notmuch-company" "\
`company-mode' completion back-end for `notmuch'.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-company"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-company.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-company" '("notmuch-company-last-prefix")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-compat"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-compat.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-compat.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-compat" '("notmuch-message--fold-long-headers")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-crypto"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-crypto.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-crypto.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-crypto" '("notmuch-crypto-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-draft"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-draft.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-draft.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-draft" '("notmuch-draft-")))

;;;***

;;;### (autoloads nil "notmuch-hello" "../../../../../../.emacs.d/straight/build/notmuch/notmuch-hello.el"
;;;;;;  "ca0ebdc0b8c8b4dbedd5d48d697de6bd")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-hello.el

(autoload 'notmuch-hello "notmuch-hello" "\
Run notmuch and display saved searches, known tags, etc.

\(fn &optional NO-DISPLAY)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-hello"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-hello.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-hello.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-hello" '("notmuch-")))

;;;***

;;;***

;;;### (autoloads nil "notmuch-jump" "../../../../../../.emacs.d/straight/build/notmuch/notmuch-jump.el"
;;;;;;  "a344fe37d3fd71601e79b43e6640e45c")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-jump.el

(autoload 'notmuch-jump-search "notmuch-jump" "\
Jump to a saved search by shortcut key.

This prompts for and performs a saved search using the shortcut
keys configured in the :key property of `notmuch-saved-searches'.
Typically these shortcuts are a single key long, so this is a
fast way to jump to a saved search from anywhere in Notmuch.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-jump"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-jump.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-jump.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-jump" '("notmuch-jump")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-lib"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-lib.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-lib.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-lib" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-maildir-fcc"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-maildir-fcc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-maildir-fcc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-maildir-fcc" '("notmuch-" "with-temporary-notmuch-message-buffer")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-message"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-message.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-message.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-message" '("notmuch-message-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-mua"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-mua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-mua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-mua" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-parser"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-parser.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-parser.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-parser" '("notmuch-sexp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-print"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-print.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-print.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-print" '("notmuch-print-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-query"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-query.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-query.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-query" '("notmuch-query-")))

;;;***

;;;### (autoloads nil "notmuch-show" "../../../../../../.emacs.d/straight/build/notmuch/notmuch-show.el"
;;;;;;  "9b737ed1dea220fb1c5b4a32e3875415")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-show.el

(autoload 'notmuch-show "notmuch-show" "\
Run \"notmuch show\" with the given thread ID and display results.

ELIDE-TOGGLE, if non-nil, inverts the default elide behavior.

The optional PARENT-BUFFER is the notmuch-search buffer from
which this notmuch-show command was executed, (so that the
next thread from that buffer can be show when done with this
one).

The optional QUERY-CONTEXT is a notmuch search term. Only
messages from the thread matching this search term are shown if
non-nil.

The optional BUFFER-NAME provides the name of the buffer in
which the message thread is shown. If it is nil (which occurs
when the command is called interactively) the argument to the
function is used.

Returns the buffer containing the messages, or NIL if no messages
matched.

\(fn THREAD-ID &optional ELIDE-TOGGLE PARENT-BUFFER QUERY-CONTEXT BUFFER-NAME)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-show"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-show.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-show.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-show" '("notmuch-" "with-current-notmuch-show-message")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-tag"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-tag.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-tag.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-tag" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-tree"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-tree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-tree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-tree" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-wash"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-wash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/notmuch-wash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-wash" '("notmuch-wash-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "rstdoc" "../../../../../../.emacs.d/straight/build/notmuch/rstdoc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/notmuch/rstdoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rstdoc" '("rst")))

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/notmuch/coolj.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/make-deps.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-address.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-company.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-compat.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-crypto.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-draft.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-hello.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-jump.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-lib.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-maildir-fcc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-message.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-mua.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-parser.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-print.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-query.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-show.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-tag.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-tree.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch-wash.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/notmuch.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/notmuch/rstdoc.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'notmuch-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; notmuch-autoloads.el ends here
