;;; let-alist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "let-alist" "../../../../../../.emacs.d/straight/build/let-alist/let-alist.el"
;;;;;;  "991420e4b2b99d18e7441fb8ad754eda")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/let-alist/let-alist.el

(autoload 'let-alist "let-alist" "\
Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq \\='title alist)))
        (.body  (cdr (assq \\='body alist)))
        (.site  (cdr (assq \\='site alist)))
        (.site.contents (cdr (assq \\='contents (cdr (assq \\='site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

\(fn ALIST &rest BODY)" nil t)

(function-put 'let-alist 'lisp-indent-function '1)

;;;### (autoloads "actual autoloads are elsewhere" "let-alist" "../../../../../../.emacs.d/straight/build/let-alist/let-alist.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/let-alist/let-alist.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "let-alist" '("let-alist--")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/let-alist/let-alist.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'let-alist-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; let-alist-autoloads.el ends here
