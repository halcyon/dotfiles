;;; notmuch-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "coolj" "../../../../../.emacs.d/elpa/notmuch-0.27/coolj.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/coolj.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "coolj" '("coolj-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "make-deps" "../../../../../.emacs.d/elpa/notmuch-0.27/make-deps.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/make-deps.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "make-deps" '("make-deps" "batch-make-deps")))

;;;***

;;;### (autoloads nil "notmuch" "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch.el"
;;;;;;  "611416086dc43907e0e6579dd8824956")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch.el

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

;;;### (autoloads "actual autoloads are elsewhere" "notmuch" "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch" '("notmuch-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-address"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-address.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-address.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-address" '("notmuch-address-")))

;;;***

;;;### (autoloads nil "notmuch-company" "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-company.el"
;;;;;;  "7ad12506a7e123889bbc47b08ac9cacd")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-company.el

(autoload 'notmuch-company-setup "notmuch-company" "\


\(fn)" nil nil)

(autoload 'notmuch-company "notmuch-company" "\
`company-mode' completion back-end for `notmuch'.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-company"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-company.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-company" '("notmuch-company-last-prefix")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-compat"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-compat.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-compat.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-compat" '("notmuch-message--fold-long-headers")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-crypto"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-crypto.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-crypto.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-crypto" '("notmuch-crypto-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-draft"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-draft.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-draft.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-draft" '("notmuch-draft-")))

;;;***

;;;### (autoloads nil "notmuch-hello" "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-hello.el"
;;;;;;  "5d462d0cff82c9a6ae152945ed7ac344")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-hello.el

(autoload 'notmuch-hello "notmuch-hello" "\
Run notmuch and display saved searches, known tags, etc.

\(fn &optional NO-DISPLAY)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-hello"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-hello.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-hello.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-hello" '("notmuch-")))

;;;***

;;;***

;;;### (autoloads nil "notmuch-jump" "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-jump.el"
;;;;;;  "894168d19f1cbdd869435b6fc6b6ef75")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-jump.el

(autoload 'notmuch-jump-search "notmuch-jump" "\
Jump to a saved search by shortcut key.

This prompts for and performs a saved search using the shortcut
keys configured in the :key property of `notmuch-saved-searches'.
Typically these shortcuts are a single key long, so this is a
fast way to jump to a saved search from anywhere in Notmuch.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-jump"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-jump.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-jump.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-jump" '("notmuch-jump")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-lib"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-lib.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-lib.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-lib" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-maildir-fcc"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-maildir-fcc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-maildir-fcc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-maildir-fcc" '("notmuch-" "with-temporary-notmuch-message-buffer")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-message"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-message.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-message.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-message" '("notmuch-message-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-mua"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-mua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-mua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-mua" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-parser"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-parser.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-parser.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-parser" '("notmuch-sexp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-print"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-print.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-print.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-print" '("notmuch-print-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-query"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-query.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-query.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-query" '("notmuch-query-")))

;;;***

;;;### (autoloads nil "notmuch-show" "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-show.el"
;;;;;;  "b546e9479f4cff3a391c1f46c0cd55b3")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-show.el

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
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-show.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-show.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-show" '("notmuch-" "with-current-notmuch-show-message")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-tag"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-tag.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-tag.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-tag" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-tree"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-tree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-tree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-tree" '("notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "notmuch-wash"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-wash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-wash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "notmuch-wash" '("notmuch-wash-")))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/notmuch-0.27/coolj.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/make-deps.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-address.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-company.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-compat.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-crypto.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-draft.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-hello.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-jump.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-lib.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-maildir-fcc.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-message.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-mua.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-parser.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-print.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-query.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-show.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-tag.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-tree.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch-wash.el"
;;;;;;  "../../../../../.emacs.d/elpa/notmuch-0.27/notmuch.el") (0
;;;;;;  0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; notmuch-autoloads.el ends here
