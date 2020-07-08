;;; gradle-mode-autoloads.el --- automatically extracted autoloads
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

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gradle-mode" '("gradle-")))

;;;***

(provide 'gradle-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gradle-mode-autoloads.el ends here
