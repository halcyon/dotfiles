;;; dictionary-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "dictionary" "dictionary.el" (0 0 0 0))
;;; Generated autoloads from dictionary.el

(autoload 'dictionary-mode "dictionary" "\
This is a mode for searching a dictionary server implementing
 the protocol defined in RFC 2229.

 This is a quick reference to this mode describing the default key bindings:

 * q close the dictionary buffer
 * h display this help information
 * s ask for a new word to search
 * d search the word at point
 * n or Tab place point to the next link
 * p or S-Tab place point to the prev link

 * m ask for a pattern and list all matching words.
 * D select the default dictionary
 * M select the default search strategy

 * Return or Button2 visit that link
 * M-Return or M-Button2 search the word beneath link in all dictionaries
 " nil nil)

(autoload 'dictionary "dictionary" "\
Create a new dictonary buffer and install dictionary-mode" t nil)

(autoload 'dictionary-search "dictionary" "\
Search the `word' in `dictionary' if given or in all if nil.  
It presents the word at point as default input and allows editing it.

\(fn WORD &optional DICTIONARY)" t nil)

(autoload 'dictionary-lookup-definition "dictionary" "\
Unconditionally lookup the word at point." t nil)

(autoload 'dictionary-match-words "dictionary" "\
Search `pattern' in current default dictionary using default strategy.

\(fn &optional PATTERN &rest IGNORED)" t nil)

(autoload 'dictionary-mouse-popup-matching-words "dictionary" "\
Display entries matching the word at the cursor

\(fn EVENT)" t nil)

(autoload 'dictionary-popup-matching-words "dictionary" "\
Display entries matching the word at the point

\(fn &optional WORD)" t nil)

(register-definition-prefixes "dictionary" '("dictionary-"))

;;;***

(provide 'dictionary-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dictionary-autoloads.el ends here
