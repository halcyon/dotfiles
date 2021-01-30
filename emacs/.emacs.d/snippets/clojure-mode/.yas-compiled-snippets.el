;;; Compiled snippets and support files for `clojure-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'clojure-mode
                     '(("are" "(are [input expected] (testing input\n                        (is (= expected\n                               (sut/$1 input)))\n                        true)\n  $2)" "are" nil nil nil "/home/ksm/.emacs.d/snippets/clojure-mode/are" nil nil)))


;;; Do not edit! File generated at Fri Jan 29 22:13:49 2021
