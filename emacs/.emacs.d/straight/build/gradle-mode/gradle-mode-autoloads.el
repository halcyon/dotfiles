;;; gradle-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "gradle-mode" "gradle-mode.el" (0 0 0 0))
;;; Generated autoloads from gradle-mode.el

(defvar gradle-mode nil "\
Non-nil if Gradle mode is enabled.
See the `gradle-mode' command
for a description of this minor mode.")

(custom-autoload 'gradle-mode "gradle-mode" nil)

(autoload 'gradle-mode "gradle-mode" "\
Emacs minor mode for integrating Gradle into compile.
Run gradle tasks from any buffer, scanning up to nearest gradle
directory to run tasks.

If called interactively, toggle `Gradle mode'.  If the prefix
argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "gradle-mode" '("gradle-"))

;;;***

(provide 'gradle-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gradle-mode-autoloads.el ends here
