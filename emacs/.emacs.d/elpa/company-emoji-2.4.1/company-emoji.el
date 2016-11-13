;;; company-emoji.el --- company-mode backend for emoji

;; Copyright (C) 2016 Alex Dunn

;; Author: Alex Dunn <dunn.alex@gmail.com>
;; URL: https://github.com/dunn/company-emoji.git
;; Version: 2.4.1
;; Package-Requires: ((cl-lib "0.5") (company "0.8.0"))
;; Keywords: emoji company
;; Prefix: company-emoji

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; company-mode backend providing autocompletion for emoji. 🆒💦

;; ### setup

;; Add `company-emoji.el` to your load-path, then add something like the
;; following to your init file:

;; (require 'company-emoji)
;; (add-to-list 'company-backends 'company-emoji)

;; After selecting an emoji-word from the completion-list, it will be
;; replaced by the real unicode emoji (`:cactus:` becomes 🌵, `:cat:`
;; becomes 🐱, etc.)

;; ### emoji font support

;; If you’re on Linux, or on Mac OS X and using the Cocoa version of
;; Emacs (i.e., if built `‐-with-ns`, or `--with-cocoa` using Homebrew),
;; you’ll need to add something like this to your init file (thanks to
;; [@syohex](https://github.com/syohex) and
;; [@waymondo](https://github.com/waymondo)):

;; ```elisp
;; (defun --set-emoji-font (frame)
;;   "Adjust the font settings of FRAME so Emacs can display emoji properly."
;;   (if (eq system-type 'darwin)
;;       ;; For NS/Cocoa
;;       (set-fontset-font t 'symbol (font-spec :family "Apple Color Emoji") frame 'prepend)
;;     ;; For Linux
;;     (set-fontset-font t 'symbol (font-spec :family "Symbola") frame 'prepend)))

;; ;; For when Emacs is started in GUI mode:
;; (--set-emoji-font nil)
;; ;; Hook for when a frame is created with emacsclient
;; ;; see https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Frames.html
;; (add-hook 'after-make-frame-functions '--set-emoji-font)
;; ```

;; [Symbola](https://zhm.github.io/symbola/) can be installed with `apt-get`:

;; ```sh
;; apt-get install ttf-ancient-fonts
;; ```

;; **NB:** The `set-fontset-font` function is apparently only available
;;  when Emacs has been compiled with a window system.

;; ### custom variables

;; #### aliases

;; You can add shortcode aliases by modifying `company-emoji-aliases`.
;; Run `M-x customize-variable [RET] company-emoji-aliases` to bring up
;; company-emoji’s customization pane, then add or remove aliases to your
;; taste:

;; Hide Company Emoji Aliases:
;; [INS] [DEL] Symbol: :man-woman-boy:
;;             String: :family:
;; [INS] [DEL] Symbol: :woman-kiss-man:
;;             String: :couplekiss:
;; [INS] [DEL] Symbol: :woman_man_holding_hands:
;;             String: :couple:
;; [INS] [DEL] Symbol: :woman-heart-man:
;;             String: :couple_with_heart:
;; [INS] [DEL] Symbol: :oop:
;;             String: :speak_no_evil:
;; [INS]

;; (“Symbol” designates the user-defined alias, and “string” designates
;; the original shortcode you want your alias to mimick.)

;; Occasionally new default aliases may be added (like `:middle-finger:`
;; for 🖕). If you’re upgrading and have modified the
;; `company-emoji-aliases` variable, the new aliases will be ignored;
;; you’ll need to add them manually.

;; #### unicode replacement

;; By default, `:cat:` is replaced with 🐱 upon completion, but that can
;; be turned off by setting the variable `company-emoji-insert-unicode`
;; to `nil`.

;;; Code:

;; requires

(require 'cl-lib)
(require 'company)
(require 'company-emoji-list)

;; version string

(defconst company-emoji-version "2.4.1")

;; customize

(defgroup company-emoji nil
  "Company-mode backend for autocompleting emoji"
  :group 'company)

(defcustom company-emoji-aliases '( (:man-woman-boy: . ":family:")
                                    (:woman-kiss-man: . ":couplekiss:")
                                    (:woman_man_holding_hands: . ":couple:")
                                    (:woman-heart-man: . ":couple_with_heart:")
                                    (:middle-finger: . ":reversed-hand-with-middle-finger-extended:")
                                    )
  "Alternate shortcodes for emoji."
  :group 'company-emoji
  :type '(alist :key-type symbol :value-type string))

(defcustom company-emoji-insert-unicode t
  "Replace the :shortcode: with the real Unicode character upon completion."
  :group 'company-emoji
  :type 'boolean)

(defun company-emoji--annotation (s)
  "Return a formatted annotation for completion candidate S."
  (format " %s" (get-text-property 0 :unicode s)))

(defun company-emoji--add-aliases (aliases candidates)
  "Add the emoji ALIASES to the list of completion CANDIDATES and return the new list."
  (dolist (elem aliases candidates)
    ;; * `aliased` will be nil if the alias alist is somehow
    ;;   malformed—if there's no second element.
    ;;
    ;; * `emoji-string` will be nil if the current alias is invalid—if
    ;;   the shortcode that an alias has been assigned to does not
    ;;   correspond to any emoji.  For example, if you added (:kermit:
    ;;   . ":toad:") to your list of custom aliases, that would be an
    ;;   invalid assignment since :toad: is not a real shortcode—we
    ;;   only have :frog:.  As long as this is a valid alias, then
    ;;   emoji-string is the propertized text that the alias points
    ;;   to; something like #(":imp:" 0 1 (:unicode "👿"))
    (let* ((aliased (cdr elem))
            (emoji-string (car (member aliased candidates))))
      (if (and aliased emoji-string)
        ;; * `new-item` is what will become a new propertized string
        ;;   that we add to the list of completion candidates.  It
        ;;   starts its life as the string version of the current
        ;;   alias; from (:man-woman-boy: . ":family:"), the string
        ;;   assigned to `new-item` would be ":man-woman-boy:"
        ;;
        ;; * `unicode` is the unicode character to which we want our
        ;;   alias to point; we retrieve it from `emoji-string`.
        (let ((new-item (symbol-name (car elem)))
               (unicode (get-text-property 0 :unicode emoji-string)))
          ;; Propertize the `new-item` string.  The string returned
          ;; from `symbol-name` already seems to have some properties,
          ;; so overwrite them with `set-text-properties', instead of
          ;; simply adding a new property with `add-text-property'.
          (set-text-properties 0 1 (list ':unicode unicode) new-item)
          (setq candidates (cons new-item candidates)))))))

;;;###autoload
(defun company-emoji (command &optional arg &rest ignored)
  "Provide a backend for company to complete emoji-words.

company.el calls this function, and passes a COMMAND to it that
depends on the context: 'prefix', 'candidates', 'annotation',
etc.  In some contexts it also passes ARG, which is the list of
candidates that match what has been typed so far.  Sometimes ARG
is a single candidate, as when COMMAND is 'annotation' or
'post-completion'.  Other arguments are IGNORED."

  ;; First, update the list of candidates by adding the custom
  ;; aliases:
  (let ((emoji-list (company-emoji--add-aliases
                     company-emoji-aliases
                     (company-emoji-list-create))))
    (cl-case command
      ;; 'prefix' has too many meanings in emacs lisp but here we're
      ;; specifying what the string we're completing should begin with
      (prefix (company-grab "\:[a-zA-Z0-9-_]*"))
      (candidates
       ;; filter based on what's already been typed
       (cl-remove-if-not
        (lambda (c) (string-prefix-p arg c))
        emoji-list))
      ;; show the real emoji alongside its name in the completion list
      (annotation (company-emoji--annotation arg))
      ;; when we find the emoji we want, replace it with the real emoji
      ;; (assuming company-emoji-insert-unicode is set to true)
      (post-completion
       (if company-emoji-insert-unicode
           (progn
             (kill-region (- (point) (length arg)) (point))
             (insert (get-text-property 0 :unicode arg))))))))

;;;###autoload
(defun company-emoji-init ()
  "Add emoji to the company backends."
  (interactive)
  (add-to-list 'company-backends 'company-emoji))

(provide 'company-emoji)

;;; company-emoji.el ends here
