;;; circe-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "circe" "../../../../../.emacs.d/elpa/circe-20180525.831/circe.el"
;;;;;;  "9da6fcb56861693750c5be085b816d9d")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe.el

(autoload 'circe-version "circe" "\
Display Circe's version.

\(fn)" t nil)

(autoload 'circe "circe" "\
Connect to IRC.

Connect to the given network specified by NETWORK-OR-SERVER.

When this function is called, it collects options from the
SERVER-OPTIONS argument, the user variable
`circe-network-options', and the defaults found in
`circe-network-defaults', in this order.

If NETWORK-OR-SERVER is not found in any of these variables, the
argument is assumed to be the host name for the server, and all
relevant settings must be passed via SERVER-OPTIONS.

All SERVER-OPTIONS are treated as variables by getting the string
\"circe-\" prepended to their name. This variable is then set
locally in the server buffer.

See `circe-network-options' for a list of common options.

\(fn NETWORK-OR-SERVER &rest SERVER-OPTIONS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe" "../../../../../.emacs.d/elpa/circe-20180525.831/circe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe" '("circe-" "lui-logging-format-arguments" "with-circe-server-buffer")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "circe-chanop"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-chanop.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-chanop.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-chanop" '("circe-command-")))

;;;***

;;;### (autoloads nil "circe-color-nicks" "../../../../../.emacs.d/elpa/circe-20180525.831/circe-color-nicks.el"
;;;;;;  "858e3d9cc7164da672714bee392366b1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-color-nicks.el

(autoload 'enable-circe-color-nicks "circe-color-nicks" "\
Enable the Color Nicks module for Circe.
This module colors all encountered nicks in a cross-server fashion.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe-color-nicks"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-color-nicks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-color-nicks.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-color-nicks" '("circe-" "remove-circe-color-nicks" "add-circe-color-nicks" "disable-circe-color-nicks")))

;;;***

;;;***

;;;### (autoloads nil "circe-display-images" "../../../../../.emacs.d/elpa/circe-20180525.831/circe-display-images.el"
;;;;;;  "2a620df6f3e86795e28cf88b27cb9c56")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-display-images.el

(autoload 'enable-circe-display-images "circe-display-images" "\
Enable the Display Images module for Circe.
This module displays various image types when they are linked in a channel

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe-display-images"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-display-images.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-display-images.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-display-images" '("circe-display-images" "remove-circe-display-images" "add-circe-display-images" "disable-circe-display-images")))

;;;***

;;;***

;;;### (autoloads nil "circe-lagmon" "../../../../../.emacs.d/elpa/circe-20180525.831/circe-lagmon.el"
;;;;;;  "06a237500c8f3f288edc02869c33c999")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-lagmon.el

(defvar circe-lagmon-mode nil "\
Non-nil if Circe-Lagmon mode is enabled.
See the `circe-lagmon-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `circe-lagmon-mode'.")

(custom-autoload 'circe-lagmon-mode "circe-lagmon" nil)

(autoload 'circe-lagmon-mode "circe-lagmon" "\
Circe-lagmon-mode monitors the amount of lag on your
connection to each server, and displays the lag time in seconds
in the mode-line.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe-lagmon"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-lagmon.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-lagmon.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-lagmon" '("circe-lagmon-")))

;;;***

;;;***

;;;### (autoloads nil "circe-new-day-notifier" "../../../../../.emacs.d/elpa/circe-20180525.831/circe-new-day-notifier.el"
;;;;;;  "6fbf23b69b569a2a6388a7e7a0d0af2f")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-new-day-notifier.el

(autoload 'enable-circe-new-day-notifier "circe-new-day-notifier" "\


\(fn)" t nil)

(autoload 'disable-circe-new-day-notifier "circe-new-day-notifier" "\


\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe-new-day-notifier"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-new-day-notifier.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/circe-new-day-notifier.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-new-day-notifier" '("circe-new-day-notifi")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "irc" "../../../../../.emacs.d/elpa/circe-20180525.831/irc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/irc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irc" '("irc-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lcs" "../../../../../.emacs.d/elpa/circe-20180525.831/lcs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lcs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lcs" '("lcs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lui" "../../../../../.emacs.d/elpa/circe-20180525.831/lui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui" '("lui-")))

;;;***

;;;### (autoloads nil "lui-autopaste" "../../../../../.emacs.d/elpa/circe-20180525.831/lui-autopaste.el"
;;;;;;  "660ae5f315d39e7624ff292e0eb10172")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-autopaste.el

(autoload 'enable-lui-autopaste "lui-autopaste" "\
Enable the lui autopaste feature.

If you enter more than `lui-autopaste-lines' at once, Lui will
ask if you would prefer to use a paste service instead. If you
agree, Lui will paste your input to `lui-autopaste-function' and
replace it with the resulting URL.

\(fn)" t nil)

(autoload 'disable-lui-autopaste "lui-autopaste" "\
Disable the lui autopaste feature.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lui-autopaste"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-autopaste.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-autopaste.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-autopaste" '("lui-autopaste")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lui-format" "../../../../../.emacs.d/elpa/circe-20180525.831/lui-format.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-format.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-format" '("lui-")))

;;;***

;;;### (autoloads nil "lui-irc-colors" "../../../../../.emacs.d/elpa/circe-20180525.831/lui-irc-colors.el"
;;;;;;  "e683324e291df157de021070fae37250")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-irc-colors.el

(autoload 'enable-lui-irc-colors "lui-irc-colors" "\
Enable IRC color interpretation for Lui.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lui-irc-colors"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-irc-colors.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-irc-colors.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-irc-colors" '("lui-irc-" "disable-lui-irc-colors")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lui-logging"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-logging.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-logging.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-logging" '("lui-" "disable-lui-logging" "enable-lui-logging")))

;;;***

;;;### (autoloads nil "lui-track-bar" "../../../../../.emacs.d/elpa/circe-20180525.831/lui-track-bar.el"
;;;;;;  "20813765f18d6eb59afc8fc73c254994")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-track-bar.el

(autoload 'enable-lui-track-bar "lui-track-bar" "\
Enable a bar in Lui buffers that shows where you stopped reading.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lui-track-bar"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-track-bar.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/lui-track-bar.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-track-bar" '("lui-track-bar-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "make-tls-process"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/make-tls-process.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/make-tls-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "make-tls-process" '("tls-" "make-tls-process")))

;;;***

;;;### (autoloads nil "shorten" "../../../../../.emacs.d/elpa/circe-20180525.831/shorten.el"
;;;;;;  "5aa9929f07f13fd911f9914900b73b65")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/shorten.el

(autoload 'shorten-strings "shorten" "\
Takes a list of strings and returns an alist ((STRING
. SHORTENED-STRING) ...).  Uses `shorten-split-function' to split
the strings, and `shorten-join-function' to join shortened
components back together into SHORTENED-STRING.  See also
`shorten-validate-component-function'.

\(fn STRINGS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "shorten" "../../../../../.emacs.d/elpa/circe-20180525.831/shorten.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/shorten.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "shorten" '("shorten-")))

;;;***

;;;***

;;;### (autoloads nil "tracking" "../../../../../.emacs.d/elpa/circe-20180525.831/tracking.el"
;;;;;;  "9b1cf092ea656b29b23312d6de27b854")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/tracking.el

(defvar tracking-mode nil "\
Non-nil if Tracking mode is enabled.
See the `tracking-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tracking-mode'.")

(custom-autoload 'tracking-mode "tracking" nil)

(autoload 'tracking-mode "tracking" "\
Allow cycling through modified buffers.
This mode in itself does not track buffer modification, but
provides an API for programs to add buffers as modified (using
`tracking-add-buffer').

Once this mode is active, modified buffers are shown in the mode
line. The user can cycle through them using
\\[tracking-next-buffer].

\(fn &optional ARG)" t nil)

(autoload 'tracking-add-buffer "tracking" "\
Add BUFFER as being modified with FACES.
This does check whether BUFFER is currently visible.

If FACES is given, it lists the faces that might be appropriate
for BUFFER in the mode line. The highest-priority face of these
and the current face of the buffer, if any, is used. Priority is
decided according to `tracking-faces-priorities'.
When `tracking-sort-faces-first' is non-nil, all buffers with any
face set will be stable-sorted before any buffers with no face set.

\(fn BUFFER &optional FACES)" nil nil)

(autoload 'tracking-remove-buffer "tracking" "\
Remove BUFFER from being tracked.

\(fn BUFFER)" nil nil)

(autoload 'tracking-next-buffer "tracking" "\
Switch to the next active buffer.

\(fn)" t nil)

(autoload 'tracking-previous-buffer "tracking" "\
Switch to the last active buffer.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "tracking" "../../../../../.emacs.d/elpa/circe-20180525.831/tracking.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/circe-20180525.831/tracking.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tracking" '("tracking-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/circe-20180525.831/circe-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-chanop.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-color-nicks.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-compat.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-display-images.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-lagmon.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-new-day-notifier.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/circe.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/irc.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lcs.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-autopaste.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-format.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-irc-colors.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-logging.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui-track-bar.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/lui.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/make-tls-process.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/shorten.el"
;;;;;;  "../../../../../.emacs.d/elpa/circe-20180525.831/tracking.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; circe-autoloads.el ends here
