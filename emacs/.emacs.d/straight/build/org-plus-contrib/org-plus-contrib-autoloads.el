;;; org-plus-contrib-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads "actual autoloads are elsewhere" "ob-C" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-C.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-C.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-C" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-J" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-J.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-J.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-J" '("obj-" "org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-R" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-R.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-R.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-R" '("ob-R-" "org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-abc" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-abc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-abc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-abc" '("org-babel-")))

;;;***

;;;### (autoloads nil "ob-arduino" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-arduino.el"
;;;;;;  "450305b81f4db2be5182b1fc996f6116")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-arduino.el

(autoload 'org-babel-execute:arduino "ob-arduino" "\
org-babel arduino hook.

\(fn BODY PARAMS)" nil nil)

(eval-after-load 'org '(add-to-list 'org-src-lang-modes '("arduino" . arduino)))

;;;### (autoloads "actual autoloads are elsewhere" "ob-arduino" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-arduino.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-arduino.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-arduino" '("ob-arduino:" "org-babel-default-header-args:sclang")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-asymptote"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-asymptote.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-asymptote.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-asymptote" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-awk" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-awk.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-awk.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-awk" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-calc" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-calc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-calc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-calc" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-clojure" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-clojure" '("ob-clojure-" "org-babel-")))

;;;***

;;;### (autoloads nil "ob-clojure-literate" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure-literate.el"
;;;;;;  "0098769af9f923d81d28380cea7e2d0a")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure-literate.el

(defvar ob-clojure-literate-auto-jackin-p nil "\
Auto jack in ob-clojure project.
Don't auto jack in by default for not rude.")

(custom-autoload 'ob-clojure-literate-auto-jackin-p "ob-clojure-literate" t)

(autoload 'ob-clojure-literate-specify-session "ob-clojure-literate" "\
Specify ob-clojure header argument :session with value selected from a list of available sessions.

\(fn)" t nil)

(autoload 'ob-clojure-literate-auto-jackin "ob-clojure-literate" "\
Auto setup ob-clojure-literate scaffold and jack-in Clojure project.

\(fn)" t nil)

(autoload 'ob-clojure-literate-enable "ob-clojure-literate" "\
Enable Org-mode buffer locally for `ob-clojure-literate'.

\(fn)" nil nil)

(autoload 'ob-clojure-literate-disable "ob-clojure-literate" "\
Disable Org-mode buffer locally for `ob-clojure-literate'.

\(fn)" nil nil)

(if ob-clojure-literate-auto-jackin-p (ob-clojure-literate-auto-jackin))

(autoload 'ob-clojure-literate-mode "ob-clojure-literate" "\
A minor mode to toggle `ob-clojure-literate'.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ob-clojure-literate"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure-literate.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure-literate.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-clojure-literate" '("ob-clojure-literate-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-comint" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-comint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-comint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-comint" '("org-babel-comint-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-coq" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-coq.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-coq.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-coq" '("org-babel-" "coq-program-name")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-core" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-core" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-csharp" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-csharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-csharp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-csharp" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-css" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-css.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-css" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-ditaa" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ditaa.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ditaa.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ditaa" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-dot" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-dot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-dot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-dot" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-ebnf" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ebnf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ebnf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ebnf" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-emacs-lisp"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-emacs-lisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-emacs-lisp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-emacs-lisp" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-eshell" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eshell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eshell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-eshell" '("ob-eshell-session-live-p" "org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-eukleides"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eukleides.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eukleides.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-eukleides" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-eval" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eval.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eval.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-eval" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-exp" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-exp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-exp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-exp" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-fomus" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-fomus.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-fomus.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-fomus" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-forth" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-forth.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-forth.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-forth" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-fortran" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-fortran.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-fortran.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-fortran" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-gnuplot" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-gnuplot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-gnuplot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-gnuplot" '("org-babel-" "*org-babel-gnuplot-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-groovy" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-groovy.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-groovy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-groovy" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-haskell" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-haskell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-haskell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-haskell" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-hledger" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-hledger.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-hledger.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-hledger" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-io" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-io.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-io.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-io" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-java" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-java.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-java.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-java" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-js" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-js.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-js.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-js" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-julia" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-julia.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-julia.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-julia" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-latex" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-latex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-latex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-latex" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-ledger" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ledger.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ledger.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ledger" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-lilypond"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lilypond.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lilypond.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-lilypond" '("org-babel-" "lilypond-mode")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-lisp" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lisp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-lisp" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-lob" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lob.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lob.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-lob" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-lua" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-lua" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-makefile"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-makefile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-makefile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-makefile" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-mathematica"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mathematica.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mathematica.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-mathematica" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-mathomatic"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mathomatic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mathomatic.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-mathomatic" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-maxima" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-maxima.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-maxima.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-maxima" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-mscgen" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mscgen.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mscgen.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-mscgen" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-ocaml" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ocaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ocaml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ocaml" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-octave" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-octave.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-octave.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-octave" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-org" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-org" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-oz" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-oz.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-oz.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-oz" '("oz-send-string-expression" "org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-perl" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-perl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-perl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-perl" '("org-babel-")))

;;;***

;;;### (autoloads nil "ob-php" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-php.el"
;;;;;;  "52c85e85b80f4ddb9c0bbcd75670f734")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-php.el

(autoload 'org-babel-execute:php "ob-php" "\
Orgmode Babel PHP evaluate function for `BODY' with `PARAMS'.

\(fn BODY PARAMS)" nil nil)

(eval-after-load "org" '(add-to-list 'org-src-lang-modes '("php" . php)))

;;;### (autoloads "actual autoloads are elsewhere" "ob-php" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-php.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-php.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-php" '("ob-php:inf-php-buffer" "org-babel-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-picolisp"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-picolisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-picolisp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-picolisp" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-plantuml"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-plantuml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-plantuml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-plantuml" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-processing"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-processing.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-processing.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-processing" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-python" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-python.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-python.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-python" '("org-babel-")))

;;;***

;;;### (autoloads nil "ob-redis" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-redis.el"
;;;;;;  "09e440ec87aa1add5cbb5573709232a1")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-redis.el

(autoload 'org-babel-execute:redis "ob-redis" "\
org-babel redis hook.

\(fn BODY PARAMS)" nil nil)

(eval-after-load "org" '(add-to-list 'org-src-lang-modes '("redis" . redis)))

;;;### (autoloads "actual autoloads are elsewhere" "ob-redis" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-redis.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-redis.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-redis" '("ob-redis:default-db")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-ref" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ref.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ref.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ref" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-ruby" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ruby.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ruby.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ruby" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-sass" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sass.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sass.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-sass" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-scheme" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-scheme.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-scheme.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-scheme" '("org-babel-")))

;;;***

;;;### (autoloads nil "ob-sclang" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sclang.el"
;;;;;;  "be80fece3901807773d2c52b16bd2242")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sclang.el

(autoload 'org-babel-execute:sclang "ob-sclang" "\
Org-mode Babel sclang hook for evaluate `BODY' with `PARAMS'.

\(fn BODY PARAMS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ob-sclang" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sclang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sclang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-sclang" '("org-babel-default-header-args:sclang")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-screen" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-screen.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-screen.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-screen" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-sed" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sed.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sed.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-sed" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-shell" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-shell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-shell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-shell" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-shen" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-shen.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-shen.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-shen" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-smiles" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-smiles.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-smiles.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-smiles" '("molecule-" "org-babel-execute:smiles")))

;;;***

;;;### (autoloads nil "ob-spice" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-spice.el"
;;;;;;  "01ca0c2fe16350c671342b8500158cf9")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-spice.el

(autoload 'org-babel-execute:spice "ob-spice" "\
Execute a block of Spice code `BODY' with org-babel and `PARAMS'.

\(fn BODY PARAMS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ob-spice" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-spice.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-spice.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-spice" '("ob-spice-concat" "org-babel-expand-body:spice")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-sql" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sql.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sql.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-sql" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-sqlite" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sqlite.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sqlite.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-sqlite" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-stan" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-stan.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-stan.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-stan" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-stata" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-stata.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-stata.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-stata" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-table" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-table.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-table.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-table" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-tangle" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-tangle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-tangle.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-tangle" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-tcl" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-tcl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-tcl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-tcl" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-vala" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-vala.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-vala.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-vala" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-vbnet" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-vbnet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-vbnet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-vbnet" '("org-babel-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-bbdb" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bbdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bbdb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-bbdb" '("org-bbdb-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-bibtex" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bibtex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bibtex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-bibtex" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-bookmark"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bookmark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bookmark.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-bookmark" '("org-bookmark-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-docview" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-docview.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-docview.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-docview" '("org-docview-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-elisp-symbol"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-elisp-symbol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-elisp-symbol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-elisp-symbol" '("org-elisp-symbol-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-eshell" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-eshell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-eshell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-eshell" '("org-eshell-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-eww" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-eww.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-eww.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-eww" '("org-eww-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-git-link"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-git-link.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-git-link.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-git-link" '("org-git")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-gnus" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-gnus.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-gnus.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-gnus" '("org-gnus-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-info" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-info.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-info.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-info" '("org-info-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-irc" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-irc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-irc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-irc" '("org-irc-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-man" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-man.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-man.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-man" '("org-man-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-mew" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-mew.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-mew.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-mew" '("org-mew-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-mhe" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-mhe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-mhe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-mhe" '("org-mhe-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-notmuch" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-notmuch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-notmuch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-notmuch" '("org-notmuch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-rmail" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-rmail.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-rmail.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-rmail" '("org-rmail-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-vm" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-vm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-vm.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-vm" '("org-vm-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-w3m" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-w3m.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-w3m.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-w3m" '("org-w3m-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ol-wl" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-wl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-wl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-wl" '("org-wl-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org" '("org-" "turn-on-org-cdlatex")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-agenda" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-agenda.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-agenda.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-agenda" '("org-")))

;;;***

;;;### (autoloads nil "org-annotate-file" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-annotate-file.el"
;;;;;;  "41219271c87f5e09903aae3a6d9adc8d")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-annotate-file.el

(autoload 'org-annotate-file "org-annotate-file" "\
Visit `org-annotate-file-storage-file` and add a new annotation section.
The annotation is opened at the new section which will be referencing
the point in the current file.

\(fn)" t nil)

(autoload 'org-annotate-file-show-section "org-annotate-file" "\
Add or show annotation entry in STORAGE-FILE and return the buffer.
The annotation will link to ANNOTATED-BUFFER if specified,
  otherwise the current buffer is used.

\(fn STORAGE-FILE &optional ANNOTATED-BUFFER)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-annotate-file"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-annotate-file.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-annotate-file.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-annotate-file" '("org-annotate-file-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-archive"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-archive.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-archive.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-archive" '("org-a")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-attach" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-attach" '("org-attach-")))

;;;***

;;;### (autoloads nil "org-attach-embedded-images" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-embedded-images.el"
;;;;;;  "4d280ad01d17b7be3a4f5f4a0177e3c9")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-embedded-images.el

(autoload 'org-attach-embedded-images-in-subtree "org-attach-embedded-images" "\
Save the displayed images as attachments and insert links to them.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-attach-embedded-images"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-embedded-images.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-embedded-images.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-attach-embedded-images" '("org-attach-embedded-images--")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-attach-git"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-git.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-git.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-attach-git" '("org-attach-git-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-bibtex-extras"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-bibtex-extras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-bibtex-extras.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-bibtex-extras" '("obe-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-capture"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-capture.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-capture.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-capture" '("org-capture-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-checklist"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-checklist.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-checklist.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-checklist" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-choose" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-choose.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-choose.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-choose" '("org-choose-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-clock" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-clock.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-clock.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-clock" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-collector"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-collector.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-collector.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-collector" '("org-" "and-rest")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-colview"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-colview.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-colview.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-colview" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-compat" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-compat.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-compat.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-compat" '("org-")))

;;;***

;;;### (autoloads nil "org-contacts" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-contacts.el"
;;;;;;  "ded675ffdc44e75c67bac7ebd462e5e3")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-contacts.el

(autoload 'org-contacts "org-contacts" "\
Create agenda view for contacts matching NAME.

\(fn NAME)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-contacts"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-contacts.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-contacts.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-contacts" '("org-co" "erc-nicknames-list")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-crypt" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-crypt.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-crypt.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-crypt" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-ctags" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-ctags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-ctags.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-ctags" '("org-ctags-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-datetree"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-datetree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-datetree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-datetree" '("org-datetree-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-depend" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-depend.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-depend.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-depend" '("org-depend-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-duration"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-duration.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-duration.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-duration" '("org-duration-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-effectiveness"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-effectiveness.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-effectiveness.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-effectiveness" '("org-effectiveness-")))

;;;***

;;;### (autoloads nil "org-eldoc" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eldoc.el"
;;;;;;  "fcc2a9f1df2ff71b632b9d6f3d46979d")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eldoc.el

(autoload 'org-eldoc-load "org-eldoc" "\
Set up org-eldoc documentation function.

\(fn)" t nil)

(add-hook 'org-mode-hook #'org-eldoc-load)

;;;### (autoloads "actual autoloads are elsewhere" "org-eldoc" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eldoc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eldoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-eldoc" '("org-eldoc-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-element"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-element.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-element.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-element" '("org-element-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-entities"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-entities.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-entities.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-entities" '("org-entit")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-eval" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eval.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eval.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-eval" '("org-eval-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-eval-light"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eval-light.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eval-light.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-eval-light" '("org-eval-light-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-expiry" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-expiry.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-expiry.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-expiry" '("org-expiry-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-faces" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-faces.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-faces.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-faces" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-feed" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-feed.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-feed.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-feed" '("org-feed-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-footnote"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-footnote.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-footnote.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-footnote" '("org-footnote-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-goto" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-goto.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-goto.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-goto" '("org-goto-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-habit" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-habit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-habit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-habit" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-id" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-id.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-id.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-id" '("org-id-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-indent" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-indent.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-indent" '("org-indent-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-inlinetask"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-inlinetask.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-inlinetask.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-inlinetask" '("org-inlinetask-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-interactive-query"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-interactive-query.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-interactive-query.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-interactive-query" '("org-agenda-query-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-invoice"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-invoice.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-invoice.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-invoice" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-keys" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-keys.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-keys.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-keys" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-learn" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-learn.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-learn.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-learn" '("org-" "determine-next-interval" "inter-repetition-interval" "initial-" "calculate-new-optimal-factor" "modify-" "set-optimal-factor" "get-optimal-factor")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-license"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-license.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-license.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-license" '("org-license-")))

;;;***

;;;### (autoloads nil "org-link-edit" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-link-edit.el"
;;;;;;  "335fa0c75d364e25ba3e05e7818b4f1c")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-link-edit.el

(autoload 'org-link-edit-forward-slurp "org-link-edit" "\
Slurp N trailing blobs into link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  The [[https://orgmode.org/][Org mode site]]

A blob is a block of non-whitespace characters.  When slurping
forward, trailing punctuation characters are not considered part
of a blob.

After slurping, return the slurped text and move point to the
beginning of the link.

If N is negative, slurp leading blobs instead of trailing blobs.

\(fn &optional N)" t nil)

(autoload 'org-link-edit-backward-slurp "org-link-edit" "\
Slurp N leading blobs into link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  [[https://orgmode.org/][The Org mode]] site

A blob is a block of non-whitespace characters.

After slurping, return the slurped text and move point to the
beginning of the link.

If N is negative, slurp trailing blobs instead of leading blobs.

\(fn &optional N)" t nil)

(autoload 'org-link-edit-forward-barf "org-link-edit" "\
Barf N trailing blobs from link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  The [[https://orgmode.org/][Org]] mode site

A blob is a block of non-whitespace characters.

After barfing, return the barfed text and move point to the
beginning of the link.

If N is negative, barf leading blobs instead of trailing blobs.

\(fn &optional N)" t nil)

(autoload 'org-link-edit-backward-barf "org-link-edit" "\
Barf N leading blobs from link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  The Org [[https://orgmode.org/][mode]] site

A blob is a block of non-whitespace characters.

After barfing, return the barfed text and move point to the
beginning of the link.

If N is negative, barf trailing blobs instead of leading blobs.

\(fn &optional N)" t nil)

(autoload 'org-link-edit-transport-next-link "org-link-edit" "\
Move the next link to point.

If the region is active, use the selected text as the link's
description.  Otherwise, use the word at point.

With prefix argument PREVIOUS, move the previous link instead of
the next link.

Non-interactively, use the text between BEG and END as the
description, moving the next (or previous) link relative BEG and
END.

\(fn &optional PREVIOUS BEG END)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-link-edit"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-link-edit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-link-edit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-link-edit" '("org-link-edit--")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-lint" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-lint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-lint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-lint" '("org-lint-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-list" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-list.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-list.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-list" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-mac-iCal"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-iCal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-iCal.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-mac-iCal" '("org-mac-iCal" "omi-")))

;;;***

;;;### (autoloads nil "org-mac-link" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-link.el"
;;;;;;  "2eef7e582ac993d39bc66ee607ac73fe")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-link.el

(autoload 'org-mac-grab-link "org-mac-link" "\
Prompt for an application to grab a link from.
When done, go grab the link, and insert it at point.

\(fn)" t nil)

(autoload 'org-mac-firefox-get-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-firefox-insert-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-vimperator-get-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-vimperator-insert-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-chrome-get-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-chrome-insert-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-brave-get-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-brave-insert-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-safari-get-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-safari-insert-frontmost-url "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-together-get-selected "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-together-insert-selected "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-finder-item-get-selected "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-finder-insert-selected "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-addressbook-item-get-selected "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-addressbook-insert-selected "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-skim-get-page "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-skim-insert-page "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-acrobat-get-page "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-acrobat-insert-page "org-mac-link" "\


\(fn)" t nil)

(autoload 'org-mac-outlook-message-get-links "org-mac-link" "\
Create links to the messages currently selected or flagged in Microsoft Outlook.app.
This will use AppleScript to get the message-id and the subject of the
messages in Microsoft Outlook.app and make a link out of it.
When SELECT-OR-FLAG is \"s\", get the selected messages (this is also
the default).  When SELECT-OR-FLAG is \"f\", get the flagged messages.
The Org-syntax text will be pushed to the kill ring, and also returned.

\(fn &optional SELECT-OR-FLAG)" t nil)

(autoload 'org-mac-outlook-message-insert-selected "org-mac-link" "\
Insert a link to the messages currently selected in Microsoft Outlook.app.
This will use AppleScript to get the message-id and the subject
of the active mail in Microsoft Outlook.app and make a link out
of it.

\(fn)" t nil)

(autoload 'org-mac-outlook-message-insert-flagged "org-mac-link" "\
Asks for an org buffer and a heading within it, and replace message links.
If heading exists, delete all mac-outlook:// links within
heading's first level.  If heading doesn't exist, create it at
point-max.  Insert list of mac-outlook:// links to flagged mail
after heading.

\(fn ORG-BUFFER ORG-HEADING)" t nil)

(autoload 'org-mac-evernote-note-insert-selected "org-mac-link" "\
Insert a link to the notes currently selected in Evernote.app.
This will use AppleScript to get the note id and the title of the
note(s) in Evernote.app and make a link out of it/them.

\(fn)" t nil)

(autoload 'org-mac-devonthink-item-insert-selected "org-mac-link" "\
Insert a link to the item(s) currently selected in DEVONthink Pro Office.
This will use AppleScript to get the `uuid'(s) and the name(s) of the
selected items in DEVONthink Pro Office and make link(s) out of it/them.

\(fn)" t nil)

(autoload 'org-mac-message-get-links "org-mac-link" "\
Create links to the messages currently selected or flagged in Mail.app.
This will use AppleScript to get the message-id and the subject of the
messages in Mail.app and make a link out of it.
When SELECT-OR-FLAG is \"s\", get the selected messages (this is also
the default).  When SELECT-OR-FLAG is \"f\", get the flagged messages.
The Org-syntax text will be pushed to the kill ring, and also returned.

\(fn &optional SELECT-OR-FLAG)" t nil)

(autoload 'org-mac-message-insert-selected "org-mac-link" "\
Insert a link to the messages currently selected in Mail.app.
This will use AppleScript to get the message-id and the subject of the
active mail in Mail.app and make a link out of it.

\(fn)" t nil)

(autoload 'org-mac-message-insert-flagged "org-mac-link" "\
Asks for an org buffer and a heading within it, and replace message links.
If heading exists, delete all message:// links within heading's first
level.  If heading doesn't exist, create it at point-max.  Insert
list of message:// links to flagged mail after heading.

\(fn ORG-BUFFER ORG-HEADING)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-mac-link"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-link.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-link.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-mac-link" '("org-" "as-get-s")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-macro" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-macro.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-macro.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-macro" '("org-macro-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-macs" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-macs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-macs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-macs" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-mairix" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mairix.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mairix.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-mairix" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-mobile" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mobile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mobile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-mobile" '("org-mobile-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-mouse" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mouse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mouse.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-mouse" '("org-mouse-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-notify" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-notify.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-notify.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-notify" '("org-notify-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-num" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-num.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-num.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-num" '("org-num-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-panel" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-panel.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-panel.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-panel" '("orgpan-")))

;;;***

;;;### (autoloads nil "org-passwords" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-passwords.el"
;;;;;;  "3e078d23cbafd4aa3e1fe22711493b65")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-passwords.el

(autoload 'org-passwords-mode "org-passwords" "\
Mode for storing passwords

\(fn)" t nil)

(autoload 'org-passwords "org-passwords" "\
Open the password file. Open the password file defined by the
variable `org-password-file' in read-only mode and kill that
buffer later according to the value of the variable
`org-passwords-time-opened'. It also adds the `org-password-file'
to the auto-mode-alist so that it is opened with its mode being
`org-passwords-mode'.

With prefix arg ARG, the command does not set up a timer to kill the buffer.

With a double prefix arg \\[universal-argument] \\[universal-argument], open the file for editing.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-passwords"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-passwords.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-passwords.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-passwords" '("org-passwords-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-pcomplete"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-pcomplete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-pcomplete.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-pcomplete" '("pcomplete/org-mode/" "org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-plot" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-plot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-plot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-plot" '("org-plot")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-protocol"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-protocol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-protocol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-protocol" '("org-protocol-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-refile" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-refile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-refile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-refile" '("org-")))

;;;***

;;;### (autoloads nil "org-registry" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-registry.el"
;;;;;;  "be0936440313f9459edcb40bf7f0bf2c")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-registry.el

(autoload 'org-registry-show "org-registry" "\
Show Org files where there are links pointing to the current
buffer.

\(fn &optional VISIT)" t nil)

(autoload 'org-registry-visit "org-registry" "\
If an Org file contains a link to the current location, visit
this file.

\(fn)" t nil)

(autoload 'org-registry-initialize "org-registry" "\
Initialize `org-registry-alist'.
If FROM-SCRATCH is non-nil or the registry does not exist yet,
create a new registry from scratch and eval it. If the registry
exists, eval `org-registry-file' and make it the new value for
`org-registry-alist'.

\(fn &optional FROM-SCRATCH)" t nil)

(autoload 'org-registry-insinuate "org-registry" "\
Call `org-registry-update' after saving in Org-mode.
Use with caution.  This could slow down things a bit.

\(fn)" t nil)

(autoload 'org-registry-update "org-registry" "\
Update the registry for the current Org file.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-registry"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-registry.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-registry.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-registry" '("org-registry-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-screen" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screen.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screen.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-screen" '("org-screen")))

;;;***

;;;### (autoloads nil "org-screenshot" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screenshot.el"
;;;;;;  "56fd99bf2f4d9c4e7f5766ab183483b6")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screenshot.el

(autoload 'org-screenshot-take "org-screenshot" "\
Take a screenshot and insert link to it at point, if image
display is already on (see \\[org-toggle-inline-images])
screenshot will be displayed as an image

Screen area for the screenshot is selected with the mouse, left
click on a window screenshots that window, while left click and
drag selects a region. Pressing any key cancels the screen shot

With `C-u' universal argument waits one second after target is
selected before taking the screenshot. With double `C-u' wait two
seconds.

With triple `C-u' wait 3 seconds, and also rings the bell when
screenshot is done, any more `C-u' after that increases delay by
2 seconds

\(fn &optional DELAY)" t nil)

(autoload 'org-screenshot-rotate-prev "org-screenshot" "\
Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

\(fn DIR)" t nil)

(autoload 'org-screenshot-rotate-next "org-screenshot" "\
Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

\(fn DIR)" t nil)

(autoload 'org-screenshot-show-unused "org-screenshot" "\
Open A Dired buffer with unused screenshots marked

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-screenshot"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screenshot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screenshot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-screenshot" '("org-screenshot-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-secretary"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-secretary.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-secretary.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-secretary" '("org-sec-" "join")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-src" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-src.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-src.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-src" '("org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-static-mathjax"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-static-mathjax.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-static-mathjax.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-static-mathjax" '("org-static-mathjax-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-sudoku" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-sudoku.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-sudoku.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-sudoku" '("org-sudoku-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-table" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-table.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-table.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-table" '("org")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-tempo" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-tempo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-tempo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-tempo" '("org-tempo-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-timer" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-timer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-timer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-timer" '("org-timer-")))

;;;***

;;;### (autoloads nil "org-toc" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-toc.el"
;;;;;;  "0864ea0084bdd5763593574eff3e8f5e")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-toc.el

(autoload 'org-toc-show "org-toc" "\
Show the table of contents of the current Org-mode buffer.

\(fn &optional DEPTH POSITION)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-toc" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-toc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-toc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-toc" '("org-")))

;;;***

;;;***

;;;### (autoloads nil "org-track" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-track.el"
;;;;;;  "b003b767601c09fa214a4f93b23b32a6")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-track.el

(autoload 'org-track-fetch-package "org-track" "\
Fetch Org package depending on `org-track-fetch-package-extension'.
If DIRECTORY is defined, unpack the package there, i.e. add the
subdirectory org-mode/ to DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'org-track-compile-org "org-track" "\
Compile all *.el files that come with org-mode.
Generate the autoloads file `org-loaddefs.el'.

DIRECTORY is where the directory org-mode/ lives (i.e. the
          parent directory of your local repo.

\(fn &optional DIRECTORY)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-track" "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-track.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-track.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-track" '("org-track-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-velocity"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-velocity.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-velocity.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-velocity" '("org-velocity")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-wikinodes"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-wikinodes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/org-wikinodes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-wikinodes" '("org-wikinodes-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "orgtbl-sqlinsert"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/orgtbl-sqlinsert.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/orgtbl-sqlinsert.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "orgtbl-sqlinsert" '("orgtbl-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox" '("org-export-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-ascii" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-ascii.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-ascii.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-ascii" '("org-ascii-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-beamer" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-beamer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-beamer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-beamer" '("org-beamer-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-bibtex" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-bibtex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-bibtex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-bibtex" '("org-bibtex-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-confluence"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-confluence.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-confluence.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-confluence" '("org-confluence-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-deck" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-deck.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-deck.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-deck" '("org-deck-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-extra" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-extra.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-extra.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-extra" '("org-" "ox-extras")))

;;;***

;;;### (autoloads nil "ox-freemind" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-freemind.el"
;;;;;;  "0a6786047027ffba24529bbabba56d4f")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-freemind.el

(autoload 'org-freemind-export-to-freemind "ox-freemind" "\
Export current buffer to a Freemind Mindmap file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ox-freemind"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-freemind.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-freemind.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-freemind" '("org-freemind-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-groff" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-groff.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-groff.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-groff" '("org-groff-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-html" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-html" '("org-html-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-icalendar"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-icalendar.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-icalendar.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-icalendar" '("org-icalendar-")))

;;;***

;;;### (autoloads nil "ox-koma-letter" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-koma-letter.el"
;;;;;;  "cb39624fdd9ae66b3129d38b410cbaef")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-koma-letter.el

(autoload 'org-koma-letter-export-as-latex "ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org KOMA-LETTER Export*\".  It
will be displayed if `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-latex "ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-pdf "ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (pdf).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ox-koma-letter"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-koma-letter.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-koma-letter.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-koma-letter" '("org-koma-letter-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-latex" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-latex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-latex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-latex" '("org-latex-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-man" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-man.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-man.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-man" '("org-man-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-md" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-md.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-md.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-md" '("org-md-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-odt" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-odt.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-odt.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-odt" '("org-odt-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-org" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-org" '("org-org-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-publish" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-publish.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-publish.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-publish" '("org-publish-")))

;;;***

;;;### (autoloads nil "ox-rss" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-rss.el"
;;;;;;  "7a6d6c164d25be3f5fbb4809cde7a804")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-rss.el

(autoload 'org-rss-export-as-rss "ox-rss" "\
Export current buffer to an RSS buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org RSS Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-export-to-rss "ox-rss" "\
Export current buffer to an RSS file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-publish-to-rss "ox-rss" "\
Publish an org file to RSS.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ox-rss" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-rss.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-rss.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-rss" '("org-rss-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-s5" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-s5.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-s5.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-s5" '("org-s5-")))

;;;***

;;;### (autoloads nil "ox-taskjuggler" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-taskjuggler.el"
;;;;;;  "ccffe1444a1110de09b7ae4306b4f0aa")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-taskjuggler.el

(autoload 'org-taskjuggler-export "ox-taskjuggler" "\
Export current buffer to a TaskJuggler file.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-and-process "ox-taskjuggler" "\
Export current buffer to a TaskJuggler file and process it.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return a list of reports.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-process-and-open "ox-taskjuggler" "\
Export current buffer to a TaskJuggler file, process and open it.

Export and process the file using
`org-taskjuggler-export-and-process' and open the generated
reports with a browser.

If you are targeting TaskJuggler 2.4 (see
`org-taskjuggler-target-version') the processing and display of
the reports is done using the TaskJuggler GUI.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ox-taskjuggler"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-taskjuggler.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-taskjuggler.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-taskjuggler" '("org-taskjuggler-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ox-texinfo" "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-texinfo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-texinfo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-texinfo" '("org-texinfo-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-C.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-J.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-R.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-abc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-arduino.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-asymptote.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-awk.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-calc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure-literate.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-clojure.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-comint.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-coq.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-core.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-csharp.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-css.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ditaa.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-dot.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ebnf.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-emacs-lisp.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eshell.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eukleides.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-eval.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-exp.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-fomus.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-forth.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-fortran.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-gnuplot.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-groovy.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-haskell.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-hledger.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-io.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-java.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-js.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-julia.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-latex.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ledger.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lilypond.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lisp.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lob.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-lua.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-makefile.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mathematica.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mathomatic.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-matlab.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-maxima.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-mscgen.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ocaml.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-octave.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-org.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-oz.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-perl.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-php.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-picolisp.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-plantuml.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-processing.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-python.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-redis.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ref.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-ruby.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sass.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-scheme.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sclang.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-screen.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sed.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-shell.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-shen.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-smiles.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-spice.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sql.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-sqlite.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-stan.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-stata.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-table.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-tangle.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-tcl.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-vala.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob-vbnet.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ob.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bbdb.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bibtex.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-bookmark.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-docview.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-elisp-symbol.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-eshell.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-eww.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-git-link.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-gnus.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-info.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-irc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-man.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-mew.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-mhe.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-notmuch.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-rmail.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-vm.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-w3m.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol-wl.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ol.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-agenda.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-annotate-file.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-archive.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-embedded-images.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach-git.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-attach.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-bibtex-extras.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-capture.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-checklist.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-choose.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-clock.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-collector.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-colview.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-compat.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-contacts.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-contribdir.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-crypt.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-ctags.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-datetree.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-depend.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-duration.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-effectiveness.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eldoc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-element.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-entities.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eval-light.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-eval.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-expiry.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-faces.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-feed.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-footnote.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-goto.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-habit.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-id.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-indent.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-inlinetask.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-install.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-interactive-query.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-invoice.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-keys.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-learn.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-license.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-link-edit.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-lint.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-list.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-iCal.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mac-link.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-macro.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-macs.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mairix.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mobile.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-mouse.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-notify.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-num.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-panel.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-passwords.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-pcomplete.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-plot.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-protocol.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-refile.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-registry.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screen.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-screenshot.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-secretary.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-src.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-static-mathjax.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-sudoku.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-table.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-tempo.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-timer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-toc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-track.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-velocity.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org-wikinodes.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/org.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/orgtbl-sqlinsert.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-ascii.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-beamer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-bibtex.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-confluence.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-deck.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-extra.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-freemind.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-groff.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-html.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-icalendar.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-koma-letter.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-latex.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-man.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-md.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-odt.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-org.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-publish.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-rss.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-s5.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-taskjuggler.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox-texinfo.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/org-plus-contrib/ox.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'org-plus-contrib-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-plus-contrib-autoloads.el ends here
