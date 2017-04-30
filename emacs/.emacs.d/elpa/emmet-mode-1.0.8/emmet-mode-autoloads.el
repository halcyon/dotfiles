;;; emmet-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "emmet-mode" "../../../../../.emacs.d/elpa/emmet-mode-1.0.8/emmet-mode.el"
;;;;;;  "345b033d0f26254460815a68667850d1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/emmet-mode-1.0.8/emmet-mode.el

(autoload 'emmet-expand-line "emmet-mode" "\
Replace the current line's emmet expression with the corresponding expansion.
If prefix ARG is given or region is visible call `emmet-preview' to start an
interactive preview.

Otherwise expand line directly.

For more information see `emmet-mode'.

\(fn ARG)" t nil)

(autoload 'emmet-mode "emmet-mode" "\
Minor mode for writing HTML and CSS markup.
With emmet for HTML and CSS you can write a line like

  ul#name>li.item*2

and have it expanded to

  <ul id=\"name\">
    <li class=\"item\"></li>
    <li class=\"item\"></li>
  </ul>

This minor mode defines keys for quick access:

\\{emmet-mode-keymap}

Home page URL `http://www.emacswiki.org/emacs/Emmet'.

See also `emmet-expand-line'.

\(fn &optional ARG)" t nil)

(autoload 'emmet-expand-yas "emmet-mode" "\


\(fn)" t nil)

(autoload 'emmet-preview "emmet-mode" "\
Expand emmet between BEG and END interactively.
This will show a preview of the expanded emmet code and you can
accept it or skip it.

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/emmet-mode-1.0.8/emmet-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/emmet-mode-1.0.8/emmet-mode.el")
;;;;;;  (22790 6969 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; emmet-mode-autoloads.el ends here
