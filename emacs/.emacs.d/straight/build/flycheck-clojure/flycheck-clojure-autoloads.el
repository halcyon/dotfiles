;;; flycheck-clojure-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "flycheck-clojure" "flycheck-clojure.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from flycheck-clojure.el

(autoload 'flycheck-clojure-parse-cider-errors "flycheck-clojure" "\
Parse cider errors from JSON VALUE from CHECKER.

Return a list of parsed `flycheck-error' objects.

\(fn VALUE CHECKER)" nil nil)

(autoload 'flycheck-clojure-setup "flycheck-clojure" "\
Setup Flycheck for Clojure." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flycheck-clojure" '("cider-flycheck-eval" "flycheck-clojure-")))

;;;***

(provide 'flycheck-clojure-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; flycheck-clojure-autoloads.el ends here
