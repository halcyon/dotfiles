;;; circe-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "circe" "../../../../../../.emacs.d/straight/build/circe/circe.el"
;;;;;;  "1607129e2db8f7d880f62b0682237aaf")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe.el

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

;;;### (autoloads "actual autoloads are elsewhere" "circe" "../../../../../../.emacs.d/straight/build/circe/circe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe" '("circe-" "lui-logging-format-arguments" "with-circe-server-buffer")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "circe-chanop"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-chanop.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-chanop.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-chanop" '("circe-command-")))

;;;***

;;;### (autoloads nil "circe-color-nicks" "../../../../../../.emacs.d/straight/build/circe/circe-color-nicks.el"
;;;;;;  "292d0e32d86489f61cf30cfc359f8600")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-color-nicks.el

(autoload 'enable-circe-color-nicks "circe-color-nicks" "\
Enable the Color Nicks module for Circe.
This module colors all encountered nicks in a cross-server fashion.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe-color-nicks"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-color-nicks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-color-nicks.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-color-nicks" '("circe-" "remove-circe-color-nicks" "add-circe-color-nicks" "disable-circe-color-nicks")))

;;;***

;;;***

;;;### (autoloads nil "circe-display-images" "../../../../../../.emacs.d/straight/build/circe/circe-display-images.el"
;;;;;;  "6373a260f0a2709accec8a76325e3753")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-display-images.el

(autoload 'enable-circe-display-images "circe-display-images" "\
Enable the Display Images module for Circe.
This module displays various image types when they are linked in a channel

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe-display-images"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-display-images.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-display-images.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-display-images" '("circe-display-images" "remove-circe-display-images" "add-circe-display-images" "disable-circe-display-images")))

;;;***

;;;***

;;;### (autoloads nil "circe-lagmon" "../../../../../../.emacs.d/straight/build/circe/circe-lagmon.el"
;;;;;;  "06a237500c8f3f288edc02869c33c999")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-lagmon.el

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
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-lagmon.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-lagmon.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-lagmon" '("circe-lagmon-")))

;;;***

;;;***

;;;### (autoloads nil "circe-new-day-notifier" "../../../../../../.emacs.d/straight/build/circe/circe-new-day-notifier.el"
;;;;;;  "6fbf23b69b569a2a6388a7e7a0d0af2f")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-new-day-notifier.el

(autoload 'enable-circe-new-day-notifier "circe-new-day-notifier" "\


\(fn)" t nil)

(autoload 'disable-circe-new-day-notifier "circe-new-day-notifier" "\


\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "circe-new-day-notifier"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-new-day-notifier.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/circe-new-day-notifier.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "circe-new-day-notifier" '("circe-new-day-notifi")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "irc" "../../../../../../.emacs.d/straight/build/circe/irc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/irc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irc" '("irc-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lcs" "../../../../../../.emacs.d/straight/build/circe/lcs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lcs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lcs" '("lcs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lui" "../../../../../../.emacs.d/straight/build/circe/lui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui" '("lui-")))

;;;***

;;;### (autoloads nil "lui-autopaste" "../../../../../../.emacs.d/straight/build/circe/lui-autopaste.el"
;;;;;;  "660ae5f315d39e7624ff292e0eb10172")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-autopaste.el

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
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-autopaste.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-autopaste.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-autopaste" '("lui-autopaste")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lui-format" "../../../../../../.emacs.d/straight/build/circe/lui-format.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-format.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-format" '("lui-")))

;;;***

;;;### (autoloads nil "lui-irc-colors" "../../../../../../.emacs.d/straight/build/circe/lui-irc-colors.el"
;;;;;;  "e683324e291df157de021070fae37250")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-irc-colors.el

(autoload 'enable-lui-irc-colors "lui-irc-colors" "\
Enable IRC color interpretation for Lui.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lui-irc-colors"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-irc-colors.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-irc-colors.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-irc-colors" '("lui-irc-" "disable-lui-irc-colors")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lui-logging"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-logging.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-logging.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-logging" '("lui-" "disable-lui-logging" "enable-lui-logging")))

;;;***

;;;### (autoloads nil "lui-track" "../../../../../../.emacs.d/straight/build/circe/lui-track.el"
;;;;;;  "8c3514646f29bdb621a86eb5e136d081")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-track.el

(autoload 'enable-lui-track "lui-track" "\
Enable a bar or fringe indicator in Lui buffers that shows
where you stopped reading.

\(fn)" t nil)

(autoload 'lui-track-jump-to-indicator "lui-track" "\
Move the point to the first unread line in this buffer.

If point is already there, jump back to the end of the buffer.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lui-track" "../../../../../../.emacs.d/straight/build/circe/lui-track.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-track.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lui-track" '("lui-track-")))

;;;***

;;;***

;;;### (autoloads nil "lui-track-bar" "../../../../../../.emacs.d/straight/build/circe/lui-track-bar.el"
;;;;;;  "894a6a16cabcc470de36c5dfd465a185")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/lui-track-bar.el

(autoload 'enable-lui-track-bar "lui-track-bar" "\
Enable a bar indicator in Lui buffers that shows
where you stopped reading.

\(fn)" t nil)

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "make-tls-process"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/make-tls-process.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/make-tls-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "make-tls-process" '("tls-" "make-tls-process")))

;;;***

;;;### (autoloads nil "shorten" "../../../../../../.emacs.d/straight/build/circe/shorten.el"
;;;;;;  "5aa9929f07f13fd911f9914900b73b65")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/shorten.el

(autoload 'shorten-strings "shorten" "\
Takes a list of strings and returns an alist ((STRING
. SHORTENED-STRING) ...).  Uses `shorten-split-function' to split
the strings, and `shorten-join-function' to join shortened
components back together into SHORTENED-STRING.  See also
`shorten-validate-component-function'.

\(fn STRINGS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "shorten" "../../../../../../.emacs.d/straight/build/circe/shorten.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/shorten.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "shorten" '("shorten-")))

;;;***

;;;***

;;;### (autoloads nil "tracking" "../../../../../../.emacs.d/straight/build/circe/tracking.el"
;;;;;;  "9b1cf092ea656b29b23312d6de27b854")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/tracking.el

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

;;;### (autoloads "actual autoloads are elsewhere" "tracking" "../../../../../../.emacs.d/straight/build/circe/tracking.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/circe/tracking.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tracking" '("tracking-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/circe/circe-chanop.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-color-nicks.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-compat.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-display-images.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-lagmon.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-new-day-notifier.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe-pkg.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/circe.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/irc.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lcs.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-autopaste.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-format.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-irc-colors.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-logging.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-track-bar.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui-track.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/lui.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/make-tls-process.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/shorten.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/circe/tracking.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'circe-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; circe-autoloads.el ends here
