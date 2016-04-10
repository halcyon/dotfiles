;;; package --- init.el
;;; Commentary:
;;; Code:
(setq message-log-max 10000)

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(unless (file-directory-p "~/.emacs.d/elpa/archives")
  (package-refresh-contents))
(package-initialize)

(setq quelpa-update-melpa-p nil)
(unless (require 'quelpa nil t)
  (with-temp-buffer
    (url-insert-file-contents (concat "https://raw.github.com/quelpa"
                                      "/quelpa/master/bootstrap.el"))
    (eval-buffer)))

;; install use-package and the quelpa handler
(quelpa '(use-package
           :fetcher github
           :repo "jwiegley/use-package"
           :stable t))
(quelpa '(quelpa-use-package
          :fetcher github
          :repo "quelpa/quelpa-use-package"))
(require 'quelpa-use-package)

(setq use-package-always-ensure t)
(quelpa-use-package-activate-advice)

;;; Helper functions
(defun linum-off ()
  "Disable line numbers in the left margin."
  (linum-mode -1))

(defun fullscreen-on ()
  "Enable fullscreen."
  (set-frame-parameter nil 'fullscreen 'fullboth))

(defun fullscreen-off ()
  "Disable fullscreen."
  (set-frame-parameter nil 'fullscreen nil))

;;; Packages

;;;; settings
;;;;; global-settings
(use-package global-settings
  :ensure nil
  :init
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (setq inhibit-startup-message t
        vc-follow-symlinks t
        x-select-enable-clipboard t)
  (setq-default indent-tabs-mode nil)
  (add-hook 'before-save-hook #'delete-trailing-whitespace)
  (global-auto-revert-mode)
  (winner-mode)
  (defun fullscreen-toggle ()
    (interactive)
    (if (frame-parameter nil 'fullscreen)
        (fullscreen-off)
      (fullscreen-on)))
  (defun ibuffer-interactive ()
    (interactive)
    (ibuffer t))
  (put 'narrow-to-region 'disabled nil)
  (put 'scroll-left 'disabled nil)
  (global-unset-key [swipe-left])
  (global-unset-key [swipe-right])
  (defadvice terminal-init-screen
      ;; The advice is named `tmux', and is run before
      ;; `terminal-init-screen' runs.
      (before tmux activate)
    ;; Docstring.  This describes the advice and is made available inside
    ;; emacs; e.g. when doing C-h f terminal-init-screen RET
    "Apply xterm keymap, allowing use of keys passed through tmux."
    ;; This is the elisp code that is run before `terminal-init-screen'.
    (if (getenv "TMUX")
        (let ((map (copy-keymap xterm-function-map)))
          (set-keymap-parent map (keymap-parent input-decode-map))
          (set-keymap-parent input-decode-map map))))
  (define-key key-translation-map (kbd "<backtab>") (kbd "<S-tab>"))
  (define-key key-translation-map (kbd "\e[9;3") (kbd "<M-tab>"))
  (define-key key-translation-map (kbd "\e[65;6") (kbd "C-S-a"))
  (define-key key-translation-map (kbd "\e[68;6") (kbd "C-S-d"))
  (provide 'global-settings)
  :bind (("<f6>" . fullscreen-toggle)
         ("C-x C-b" . ibuffer-interactive)))

;;;;; backup-settings
(use-package backup-settings
  :ensure nil
  :init
  (defvar --backup-directory (concat user-emacs-directory "backups"))
  (if (not (file-exists-p --backup-directory))
      (make-directory --backup-directory t))
  (setq backup-directory-alist `(("." . ,--backup-directory))
        vc-make-backup-files t          ; backup versioned files
        make-backup-files t ; backup of a file the first time it is saved.
        backup-by-copying t ; don't clobber symlinks
        version-control t   ; version numbers for backup files
        delete-old-versions t    ; delete excess backup files silently
        delete-by-moving-to-trash t
        kept-old-versions 6 ; oldest versions to keep when a new numbered backup is made (default: 2)
        kept-new-versions 9 ; newest versions to keep when a new numbered backup is made (default: 2)
        auto-save-default t ; auto-save every buffer that visits a file
        auto-save-timeout 20 ; number of seconds idle time before auto-save (default: 30)
        auto-save-interval 200 ; number of keystrokes between auto-saves (default: 300)
        )
  (define-minor-mode sensitive-mode
    "For sensitive files like password lists.
It disables backup creation and auto saving.

With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode."
    ;; The initial value.
    nil
    ;; The indicator for the mode line.
    " Sensitive"
    ;; The minor mode bindings.
    nil
    (if (symbol-value sensitive-mode)
        (progn (set (make-local-variable 'backup-inhibited) t)
               (if auto-save-default
                   (auto-save-mode -1)))
      (kill-local-variable 'backup-inhibited)
      (if auto-save-default
          (auto-save-mode 1))))
  (add-to-list 'auto-mode-alist '("\\id_rsa.*\\'" . sensitive-mode))
  (provide 'backup-settings))

;;;;; outshine
(use-package outorg
  :quelpa (outorg :fetcher github
                  :repo "tj64/outorg"
                  :stable t))
(use-package outshine
  :quelpa (outshine :fetcher github
                    :repo "tj64/outshine"
                    :stable t)
  :config
  (setq outshine-use-speed-commands t)
  (add-hook 'outline-minor-mode-hook #'outshine-hook-function)
  (add-hook 'emacs-lisp-mode-hook #'outline-minor-mode)
  (bind-key "<S-tab>" #'outshine-cycle-buffer)
  (bind-key "<M-tab>" #'company-complete))

;;;;; color-theme-solarized
(use-package color-theme
  :quelpa (color-theme :fetcher bzr
                       :repo "http://bzr.savannah.gnu.org/r/color-theme/trunk"
                       :files ("*.el" "themes")))

(use-package color-theme-solarized
  :quelpa (color-theme-solarized :fetcher github
                                 :repo "sellout/emacs-color-theme-solarized")
  :config
  (load-theme 'solarized t)
  (set-frame-parameter nil 'background-mode 'dark)
  (set-terminal-parameter nil 'background-mode 'dark)
  (enable-theme 'solarized))

;;;;; visual-settings
(use-package visual-settings
  :ensure nil
  :init
  (set-cursor-color "yellow")
  (line-number-mode)                 ; line numbers in the mode line
  (column-number-mode)               ; column numbers in the mode line
  (global-hl-line-mode)              ; highlight current line
  (global-linum-mode)                ; add line numbers on the left
  ;; (global-prettify-symbols-mode)
  (when (string-match "apple-darwin" system-configuration)
    (set-face-font 'default "Menlo-22")
    (setq mac-command-modifier 'none)
    (setq mac-option-modifier 'meta))
  (provide 'visual-settings))

;;;;; term
(use-package term
  ;; If you do use M-x term, you will notice there's line mode that acts like
  ;; emacs buffers, and there's the default char mode that will send your
  ;; input char-by-char, so that curses application see each of your key
  ;; strokes.
  ;;
  ;; The default way to toggle between them is C-c C-j and C-c C-k, let's
  ;; better use just one key to do the same.
  ;; Have C-y act as usual in term-mode, to avoid C-' C-y C-'
  ;; Well the real default would be C-c C-j C-y C-c C-k.
  :config
  (bind-key "C-'" #'term-line-mode term-raw-map)
  (bind-key "C-'" #'term-char-mode term-mode-map)
  (bind-key "C-y" #'term-paste term-raw-map)
  (add-hook 'term-mode-hook #'linum-off))

;;;;; info
(use-package info
  :config
  (add-hook 'Info-mode-hook #'linum-off))

;;;;; dired-x
(use-package dired-x
  ;;; C-x C-j opens dired with the cursor right on the file you're editing
  :ensure nil
  :init
  (setq ls-lisp-use-insert-directory-program nil)
  (require 'ls-lisp))

;;;;; org-settings
(use-package htmlize
  :quelpa (htmlize :fetcher git
                   :url "http://fly.srk.fer.hr/~hniksic/emacs/htmlize.git"))
(use-package org-settings
  :ensure nil
  :init
  (set-face-attribute 'org-document-info nil :inherit 'org-block)
  (set-face-attribute 'org-document-info nil :foreground nil)
  (setq org-src-fontify-natively t
        org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "HOLD(h)" "|" "DONE(d)"))
        org-startup-with-inline-images t)
  (provide 'org-settings))

;;;;; hide-mode-line
(use-package hide-mode-line
  :quelpa (hide-mode-line :fetcher url
                          :url "http://webonastick.com/emacs-lisp/hide-mode-line.el"
                          :version original))

;;;;; org-present
(use-package org-present
  :quelpa (org-present :fetcher github
                       :repo "rlister/org-present")
  :config
  (defun configure-org-present ()
    (org-present-big)
    (org-display-inline-images)
    (org-present-hide-cursor)
    (org-present-read-only)
    (linum-off)
    (hide-mode-line)
    (fullscreen-on))
  (defun deconfigure-org-present ()
    (org-present-small)
    (org-remove-inline-images)
    (org-present-show-cursor)
    (org-present-read-write)
    (linum-mode)
    (hide-mode-line)
    (fullscreen-off))
  (add-hook 'org-present-mode-hook #'configure-org-present)
  (add-hook 'org-present-mode-quit-hook #'deconfigure-org-present))

;;;;; org2jekyll
(use-package org2jekyll
  :quelpa (org2jekyll :fetcher github
                      :repo "halcyon/org2jekyll"
                      :branch "permissive-frontmatter")
  :config
  (setq org2jekyll-blog-author "Scott McLeod"
        org2jekyll-source-directory  (expand-file-name "~/projects/org/www.zeddworks.com")
        org2jekyll-jekyll-directory  (expand-file-name "~/projects/www.zeddworks.com")
        org2jekyll-jekyll-drafts-dir ""
        org2jekyll-jekyll-posts-dir  "_posts/"
        org-publish-project-alist
        `(("default"
           :base-directory ,(org2jekyll-input-directory)
           :base-extension "org"
           :publishing-directory ,(org2jekyll-output-directory)
           :publishing-function org-html-publish-to-html
           :headline-levels 4
           :section-numbers nil
           :with-toc nil
           :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>"
           :html-preamble t
           :recursive t
           :make-index t
           :html-extension "html"
           :body-only t)

          ("post"
           :base-directory ,(org2jekyll-input-directory)
           :base-extension "org"
           :publishing-directory ,(org2jekyll-output-directory org2jekyll-jekyll-posts-dir)
           :publishing-function org-html-publish-to-html
           :headline-levels 4
           :section-numbers nil
           :with-toc nil
           :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>"
           :html-preamble t
           :recursive t
           :make-index t
           :html-extension "html"
           :body-only t)

          ("images"
           :base-directory ,(org2jekyll-input-directory "img")
           :base-extension "jpg\\|gif\\|png"
           :publishing-directory ,(org2jekyll-output-directory "img")
           :publishing-function org-publish-attachment
           :recursive t)

          ("js"
           :base-directory ,(org2jekyll-input-directory "js")
           :base-extension "js"
           :publishing-directory ,(org2jekyll-output-directory "js")
           :publishing-function org-publish-attachment
           :recursive t)

          ("css"
           :base-directory ,(org2jekyll-input-directory "css")
           :base-extension "css\\|el"
           :publishing-directory ,(org2jekyll-output-directory "css")
           :publishing-function org-publish-attachment
           :recursive t)

          ("web" :components ("images" "js" "css"))

          ("org"
           :base-directory ,(expand-file-name "~/projects/org/")
           :base-extension "org"
           :publishing-directory ,(expand-file-name "~/projects/org.zeddworks.com/")
           :recursive t
           :publishing-function org-html-publish-to-html
           :headline-levels 4
           :section-numbers nil
           :with-toc nil
           :html-html5-fancy t
           :html-postamble nil))))

;;;;; org-reveal
(use-package ox-reveal
  :quelpa (ox-reveal :fetcher github
                     :repo "yjwen/org-reveal"))

;;;; replacements for improved functionality
;;;;; which-key
(use-package which-key
  :config (which-key-mode))

;;;;; smex
(use-package smex
  :config
  (setq smex-save-file "~/.emacs.d/.smex-items")
  (smex-initialize)
  :bind ("M-x" . smex))

;;;;; flx-ido
(use-package flx-ido
  :config
  (ido-mode)
  (ido-everywhere)
  (flx-ido-mode)
  (setq ido-enable-flex-matching t
        ido-use-faces nil  ; disable ido faces to see flx highlights.
        ido-save-directory-list-file "~/.emacs.d/.ido.last"
        ido-use-filename-at-point 'guess
        ido-show-dot-for-dired t
        ido-default-buffer-method 'selected-window
        ;; have vertical ido completion lists
        ido-decorations
        '("\n-> " "" "\n   " "\n   ..."
          "[" "]" " [No match]" " [Matched]"
          " [Not readable]" " [Too big]"
          " [Confirm]")))

;;;;; multiple-cursors
(use-package multiple-cursors
  :bind ("C-S-c C-S-c" . mc/edit-lines))

;;;;; goto-last-change
(use-package goto-last-change
  :bind ("C-x C-/" . goto-last-change))

;;;;; ag
(use-package ag
  :config
  (defun configure-ag-clojure ()
    (set (make-local-variable 'ag-arguments)
                            (list "--clojure"
                                  "--line-number"
                                  "--smart-case"
                                  "--nogroup"
                                  "--column"
                                  "--")))
  (add-hook 'clojure-mode-hook #'configure-ag-clojure))

;;;;; undo-tree
(use-package undo-tree
  :config (global-undo-tree-mode))

;;;;; browse-kill-ring
(use-package browse-kill-ring)

;;;;; projectile
(use-package projectile
  :config (projectile-global-mode))

;;;;; pbcopy
(use-package pbcopy
  :quelpa (pbcopy :fetcher github
                  :repo "emacsfodder/pbcopy.el")
  :config (turn-on-pbcopy))

;;;; language
;;;;; yasnippet
(use-package f)
(use-package yasnippet
  :config
  (yas-global-mode))

;;;;; emmet-mode
(use-package emmet-mode)

;;;;; company
(use-package company
  :config
  (add-hook 'after-init-hook #'global-company-mode))

;;;;; elisp-settings
(use-package elisp-settings
  :ensure nil
  :init
  (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (font-lock-add-keywords 'emacs-lisp-mode
                          '(("(\\s-*\\(\\_<\\(?:\\sw\\|\\s_\\)+\\)\\_>"
                             1 'font-lock-keyword-face)))
  (provide 'elisp-settings))

;;;;; elisp-slime-nav
(use-package elisp-slime-nav
  :config
  (add-hook 'emacs-lisp-mode-hook #'turn-on-elisp-slime-nav-mode)
  (add-hook 'ielm-mode-hook #'turn-on-elisp-slime-nav-mode))

;;;;; overseer.el
(use-package overseer
  :quelpa (overseer :fetcher github
                    :repo "halcyon/overseer.el"
                    :branch "run-test-at-point"))

;;;;; slime
(use-package macrostep
    :quelpa (macrostep :fetcher github
                       :repo "joddie/macrostep"))
(use-package slime
  :config (setq inferior-lisp-program "sbcl"
                 slime-contribs '(slime-fancy)))

;;;;; geiser
(use-package geiser
  :config
  (setq geiser-active-implementations '(chicken)))

;;;;; clojure-mode
(use-package clojure-mode-extra-font-locking)
(use-package clojure-mode
  :config
  (defun configure-clojure-indent ()
    (define-clojure-indent
                (GET 'defun)
                (POST 'defun)
                (PUT 'defun)
                (DELETE 'defun)
                (HEAD 'defun)
                (ANY 'defun)))
  (add-hook 'clojure-mode-hook #'configure-clojure-indent))

;;;;; clj-refactor
(use-package clj-refactor
  :config
  (setq cljr-warn-on-eval nil)
  (defun configure-clj-refactor ()
    (clj-refactor-mode)
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m"))
  (add-hook 'clojure-mode-hook #'configure-clj-refactor))

;;;;; cider
(use-package cider
  :config
  (setq cider-repl-history-size 1000
        cider-repl-history-file "~/.emacs.d/cider-repl-history.eld")
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (defun nrepl-server-clojure-on ()
    (with-current-buffer nrepl-server-buffer (clojure-mode)))
  (add-hook 'cider-connected-hook #'nrepl-server-clojure-on))

;;;;; flycheck
(use-package flycheck)

;;;;; flycheck-pos-tip
(use-package flycheck-pos-tip
  :quelpa (flycheck-pos-tip :repo "flycheck/flycheck-pos-tip"
                            :fetcher github)
  :config
  (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

;;;;; flycheck-clojure
(use-package flycheck-clojure
  :quelpa (flycheck-clojure :fetcher github
                            :repo "clojure-emacs/squiggly-clojure"
                            :files ("elisp/flycheck-clojure/*.el"))
  :config
  (flycheck-clojure-setup)
  (add-hook 'after-init-hook #'global-flycheck-mode))

;;;;; gradle
(use-package gradle-mode)

;;;;; smartparens
(use-package smartparens
  :config
  (sp-use-smartparens-bindings)
  (show-smartparens-global-mode)
  (smartparens-global-strict-mode)
  (require 'smartparens-config)
  (set-face-background 'sp-show-pair-match-face "deep sky blue")
  (set-face-foreground 'sp-show-pair-match-face "white"))

;;;;; rainbow-delimters
(use-package rainbow-delimiters
  :config
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'scheme-mode-hook #'rainbow-delimiters-mode))

;;;; version control
;;;;; magit
(use-package magit
  :bind ("C-x C-z" . magit-status))

;;;;; gist
(use-package gh
  :quelpa (gh :fetcher github
              :repo "sigma/gh.el"
              :stable t))
(use-package gist
  :quelpa (gist :fetcher github
                :repo "defunkt/gist.el"
                :stable t))

;;;;; git-gutter
(use-package git-gutter
  :init
  (git-gutter:linum-setup)
  (global-git-gutter-mode)
  :bind (("C-x C-g" . git-gutter-mode)
         ("C-x v =" . git-gutter:popup-hunk)))

;;;;; SQLi-mode
(use-package SQLi-mode
  :ensure nil
  :init
  (defun docker-postgres ()
    (interactive)
    (require 'sql-connections "~/dotfiles-private/emacs/sql-connections.el.gpg")
    (setq sql-product 'postgres)
    (sql-connect 'docker-postgres 'docker-postgres))
  (defun webicon-oracle ()
    (interactive)
    (require 'sql-connections "~/dotfiles-private/emacs/sql-connections.el.gpg")
    (setenv "DYLD_LIBRARY_PATH" (getenv "ORACLE_HOME"))
    (setq sql-product 'oracle)
    (sql-connect 'webicon-oracle 'webicon-oracle))
  (defun truncate-lines-on ()
    (toggle-truncate-lines t))
  (add-hook 'sql-interactive-mode-hook #'truncate-lines-on)
  (provide 'SQLi-mode))

;;;; learning materials
;;;;; sicp
(use-package sicp
  :quelpa (sicp :fetcher github
                :repo "webframp/sicp-info"))

;;;; windows
;;;;; buffer-move
(use-package buffer-move
  ;;; Swaps the window with an adjacent window
  :bind (("<C-S-up>" . buf-move-up)
         ("<C-S-down>" . buf-move-down)
         ("<C-S-left>" . buf-move-left)
         ("<C-S-right>" . buf-move-right)))

;;;;; wind-move
(use-package wind-move
  ;;; Lets you move point from window to window using Shift and the arrow keys
  :ensure nil
  :init
  (windmove-default-keybindings)
  (provide 'wind-move))

;;;;; window-numbering
(use-package window-numbering
  ;;; Number windows in mode line and navigate using M-1 through M-0
  :config (window-numbering-mode))

;;;;; escreen
(use-package escreen
  ;;; Emacs window session manager
  ;;; Get started with C-\ ?
  :quelpa (escreen :fetcher github
                   :repo "emacsmirror/escreen")
  :config
  (escreen-install)
  (add-hook 'escreen-goto-screen-hook
            #'escreen-enable-number-mode-if-more-than-one-screen))

(provide 'init)
;;; init.el ends here
