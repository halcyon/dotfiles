;;; Compiled snippets and support files for `sql-interactive-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sql-interactive-mode
                     '(("ds" "DROP SCHEMA IF EXISTS $1 CASCADE;\nDROP TABLE IF EXISTS public.$1_migrations CASCADE;$0" "drop-schemas" nil nil nil nil "direct-keybinding" nil)))


;;; Do not edit! File generated at Tue Feb  9 20:25:23 2016
