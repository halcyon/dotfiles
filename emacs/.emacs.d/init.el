;;; package --- init.el
;;; Commentary:
;;; Code:
(setq message-log-max 10000)

(require 'package)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))
(unless (file-directory-p "~/.emacs.d/elpa/archives")
  (package-refresh-contents))
(package-initialize)

(setq quelpa-update-melpa-p nil)
(unless (require 'quelpa nil t)
  (with-temp-buffer
    (url-insert-file-contents "https://framagit.org/steckerhalter/quelpa/raw/master/bootstrap.el")
    (eval-buffer)))

;; install use-package and the quelpa handler
(quelpa '(use-package
           :fetcher github
           :repo "jwiegley/use-package"))
(quelpa '(quelpa-use-package
          :fetcher github
          :repo "quelpa/quelpa-use-package"))
(require 'quelpa-use-package)

(setq use-package-always-ensure t)
(quelpa-use-package-activate-advice)

(use-package global-settings
  :ensure nil
  :init
  (menu-bar-mode -1)
  (setq inhibit-startup-message t
        require-final-newline t
        ;; ielm-dynamic-return nil
        vc-follow-symlinks t
        browse-url-browser-function 'browse-url-generic
        browse-url-generic-program "firefox")
  (setq-default indent-tabs-mode nil)
  (add-hook 'before-save-hook #'delete-trailing-whitespace)
  (global-auto-revert-mode)
  (winner-mode)
  (put 'narrow-to-region 'disabled nil)
  (put 'scroll-left 'disabled nil)
  (put 'upcase-region 'disabled nil)
  (put 'downcase-region 'disabled nil)
  (defadvice terminal-init-screen
      ;; The advice is named `tmux', and is run before `terminal-init-screen' runs.
      (before tmux activate)
    ;; Docstring.  This describes the advice and is made available inside emacs;
    ;; for example when doing C-h f terminal-init-screen RET
    "Apply xterm keymap, allowing use of keys passed through tmux."
    ;; This is the elisp code that is run before `terminal-init-screen'.
    (if (getenv "TMUX")
        (let ((map (copy-keymap xterm-function-map)))
          (set-keymap-parent map (keymap-parent input-decode-map))
         (set-keymap-parent input-decode-map map))))
  (define-key key-translation-map "\e[65;6" (kbd "C-S-a"))
  (define-key key-translation-map "\e[68;6" (kbd "C-S-d"))
  (define-key key-translation-map "\e[86;8" (kbd "C-M-S-v"))
  (provide 'global-settings))

(use-package display-settings
  :ensure nil
  :init
  (line-number-mode)                 ; line numbers in the mode line
  (column-number-mode)               ; column numbers in the mode line
  (global-hl-line-mode)              ; highlight current line
  (global-display-line-numbers-mode) ; add line numbers on the left
  (provide 'display-settings))

(use-package zenburn-theme
  :config (set-face-background 'hl-line "color-240"))

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

(use-package pinentry
  :config
  (setenv "INSIDE_EMACS" (format "%s,comint" emacs-version))
  (pinentry-start))

(use-package diminish)

(require 'emacs-private (expand-file-name "~/gitlab/dotfiles-private/emacs/emacs-private.el"))

(use-package cider
  :init
  (put 'cider-ns-refresh-before-fn 'safe-local-variable #'stringp)
  (put 'cider-ns-refresh-after-fn  'safe-local-variable #'stringp)
  (put 'cider-default-cljs-repl 'safe-local-variable #'symbolp)
  :bind (:map cider-repl-mode-map
              ("C-M-q" . prog-indent-sexp)
              ("C-c C-p" . cider-pprint-eval-last-sexp))
  :config
  (setq cider-repl-history-size 100000
        cider-repl-history-file "~/.emacs.d/cider-repl-history.eld"))

(use-package company
  :diminish company-mode
  :init (add-hook 'after-init-hook #'global-company-mode)
  :bind (("C-M-i" . company-complete)
         :map emacs-lisp-mode-map
         ("C-M-i" . company-complete)
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)
         ("C-d" . company-show-doc-buffer)
         ("M-." . company-show-location)))

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
  :config (add-hook 'term-mode-hook (lambda ()
                                      (display-line-numbers-mode -1)
                                      (turn-off-smartparens-strict-mode)))
  :bind (:map term-mode-map
              ("C-'" . term-char-mode)
         :map term-raw-map
              ("C-'" . term-line-mode)
              ("C-y" . term-paste)))

(use-package info
  :config
  (add-to-list 'Info-directory-list (expand-file-name "~/gitlab/info"))
  (add-hook 'Info-mode-hook (lambda () (display-line-numbers-mode -1))))

(use-package dired-x
  ;;; C-x C-j opens dired with the cursor right on the file you're editing
  ;;; C-x 4 C-j opens dired in a separate window
  :ensure nil)

(use-package org-plus-contrib
  :init (provide 'org-plus-contrib))
(use-package htmlize)

;; (use-package ox-gfm
;;   :quelpa (ox-gfm :fetcher github
;;                   :repo "larstvei/ox-gfm"))

(use-package org-settings
  :ensure nil
  :init
  (require 'ob-clojure)
  (require 'org-notmuch)
  (setq org-src-fontify-natively t
        org-babel-clojure-backend 'cider
        org-directory "~/projects/org"
        org-agenda-files `(,org-directory)
        org-default-notes-file (concat org-directory "/notes.org")
        org-refile-targets '((org-agenda-files :level . 3))
        org-refile-allow-creating-parent-nodes 'confirm
        org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "HOLD(h)" "|" "DONE(d)"))
        org-hierarchical-todo-statistics nil)
  (let* ((target '(file+datetree+prompt ""))
         (underlying "* %^{Underlying} ")
         (headers "  |-\n%?")
         (transactions (concat "  |-\n"
                               "  ||%^{Amount}|trade|%^{transaction-date}t|\n"
                               "  |-\n"
                               "  |||||\n"
                               "  |-\n"
                               "  #+TBLFM: @>$2=vsum(@II..III);%.2f\n"))
         (naked-call (concat underlying
                             "call\n"
                             headers
                             "  | -1|%^{short-call-strike}|call|%t|\n"
                             transactions))
         (naked-put (concat underlying
                            "put\n"
                            headers
                            "  | -1|%^{short-put-strike}|put|%t|\n"
                            transactions))
         (put-spread (concat underlying
                             "put spread\n"
                             headers
                             "  |  1|%^{long-put-strike} |put|%t|\n"
                             "  | -1|%^{short-put-strike}|put|%t|\n"
                             transactions))
         (ratio-put-spread (concat underlying
                                   "ratio put spread\n"
                                   headers
                                   "  | -2|%^{short-put-strike}|put|%t|\n"
                                   "  |  1|%^{long-put-strike} |put|%t|\n"
                                   transactions))
         (call-spread (concat underlying
                              "call spread\n"
                              headers
                              "  | -1|%^{short-call-strike}|call|%t|\n"
                              "  |  1|%^{long-call-strike} |call|%t|\n"
                              transactions))
         (ratio-call-spread (concat underlying
                                    "ratio call spread\n"
                                    headers
                                    "  |  1|%^{long-call-strike} |call|%t|\n"
                                    "  | -2|%^{short-call-strike}|call|%t|\n"
                                    transactions))
         (iron-condor (concat underlying
                              "iron condor\n"
                              headers
                              "  |  1|%^{long-put-strike}  |put |%t|\n"
                              "  | -1|%^{short-put-strike} |put |%t|\n"
                              "  | -1|%^{short-call-strike}|call|%t|\n"
                              "  |  1|%^{long-call-strike} |call|%t|\n"
                              transactions))
         (jade-lizard (concat underlying
                              "jade lizard\n"
                              headers
                              "  | -1|%^{short-put-strike} |put |%t|\n"
                              "  | -1|%^{short-call-strike}|call|%t|\n"
                              "  |  1|%^{long-call-strike} |call|%t|\n"
                              transactions))
         (strangle (concat underlying
                           "strangle\n"
                           headers
                           "  | -1|%^{short-put-strike} |put |%t\n"
                           "  | -1|%^{short-call-strike}|call|%t\n"
                           transactions)))
    (setq org-capture-templates `(("p" "Position")
                                  ("pi" "Iron Condor" entry ,target ,iron-condor :unnarrowed t)
                                  ("pj" "Jade Lizard" entry ,target ,jade-lizard :unnarrowed t)
                                  ("ps" "Strangle" entry ,target ,strangle :unnarrowed t)

                                  ("pp" "Put")
                                  ("ppn" "Naked Put" entry ,target ,naked-put :unnarrowed t)
                                  ("pps" "Put Spread" entry ,target ,put-spread :unnarrowed t)
                                  ("ppr" "Ratio Put Spread" entry ,target ,ratio-put-spread :unnarrowed t)

                                  ("pc" "Call")
                                  ("pcn" "Naked Call" entry ,target ,naked-call :unnarrowed t)
                                  ("pcs" "Call Spread" entry ,target ,call-spread :unnarrowed t)
                                  ("pcr" "Ratio Call Spread" entry ,target ,ratio-call-spread :unnarrowed t))))
  (provide 'org-settings)
  :bind ("C-c c" . org-capture))

(use-package org2jekyll
  :quelpa (org2jekyll :fetcher github
                      :repo "ardumont/org2jekyll")
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

(use-package ox-reveal
  :quelpa (ox-reveal :fetcher github
                     :repo "yjwen/org-reveal"))

(use-package yaml-mode)

(use-package which-key
  :diminish which-key-mode
  :config (which-key-mode))

(use-package avy
  :config
  (avy-setup-default)
  ;; (setq avy-keys
  ;;       (nconc (number-sequence ?a ?z)
  ;;            (number-sequence ?A ?Z)
  ;;            (number-sequence ?1 ?9)
  ;;            '(?0)))
  )

(use-package ace-window
  :bind ("M-p" . ace-window))

(use-package helm
  :config
  (require 'helm-config)
  (helm-mode)
  :bind (("C-x b" . helm-buffers-list)
         ("M-x" . helm-M-x)))

;;;;; helm-ag
(use-package helm-ag)

(use-package projectile
  :config
  (projectile-mode))

(use-package helm-projectile
  :config
  (setq projectile-switch-project-action 'helm-projectile)
  (helm-projectile-on))

(use-package multiple-cursors
  :bind ("C-S-c C-S-c" . mc/edit-lines))

(use-package goto-last-change
  :bind (("C-x C-/" . goto-last-change)
         ("C-x C-_" . goto-last-change)))

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

(use-package undo-tree
  :diminish undo-tree-mode
  :config (global-undo-tree-mode)
  :bind ("s-/" . undo-tree-visualize))

(use-package browse-kill-ring)

(use-package xclip
  :config (xclip-mode))

(use-package gradle-mode
  :diminish gradle-mode
  :config (gradle-mode))

(use-package restclient
  :quelpa (restclient :repo "pashky/restclient.el"
                      :fetcher github
                      :files ("restclient.el")))

(use-package eldoc
  :ensure nil
  :diminish eldoc-mode
  :commands eldoc-mode
  :init
  (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (add-hook 'ensime-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode))

(use-package elisp-settings
  :ensure nil
  :init
  (font-lock-add-keywords 'emacs-lisp-mode
                          '(("(\\s-*\\(\\_<\\(?:\\sw\\|\\s_\\)+\\)\\_>"
                             1 'font-lock-keyword-face)))
  (provide 'elisp-settings))

(use-package elisp-slime-nav
  :diminish elisp-slime-nav-mode
  :config
  (add-hook 'emacs-lisp-mode-hook #'turn-on-elisp-slime-nav-mode)
  (add-hook 'ielm-mode-hook #'turn-on-elisp-slime-nav-mode))

(use-package overseer
  :quelpa (overseer :fetcher github
                    :repo "tonini/overseer.el"))

(use-package slime-company)
(use-package slime
  :init
  (setq slime-lisp-implementations '((sbcl ("sbcl"))
                                     ;; (mit-scheme ("mit-scheme") :init mit-scheme-init)
                                     )
        slime-contribs '(slime-fancy slime-company))
  :config
  ;; (defun find-mit-scheme-package ()
  ;;   (save-excursion
  ;;     (let ((case-fold-search t))
  ;;       (and (re-search-backward "^[;]+ package: \\((.+)\\).*$" nil t)
  ;;            (match-string-no-properties 1)))))
  (load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; (defun mit-scheme-init (file encoding)
  ;;   (unload-feature 'slime-autodoc t)
  ;;   (format "%S\n\n"
  ;;           `(begin
  ;;             (load-option 'format)
  ;;             (load-option 'sos)
  ;;             (eval
  ;;              '(create-package-from-description
  ;;                (make-package-description '(swank) (list (list))
  ;;                                          (vector) (vector) (vector) false))
  ;;              (->environment '(package)))
  ;;             (load ,(expand-file-name "contrib/swank-mit-scheme.scm"
  ;;                                      slime-path)
  ;;                   (->environment '(swank)))
  ;;             (eval '(start-swank ,file) (->environment '(swank))))))
  ;; (defun mit-scheme ()
  ;;   (interactive)
  ;;     (slime 'mit-scheme))
  ;; (defun scheme-mode-init ()
  ;;   (slime-mode 1))
  ;; (add-hook 'scheme-mode-hook #'scheme-mode-init)
  )


(use-package geiser
  :config
  (setq geiser-active-implementations '(mit)))

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
                (ANY 'defun)
                (context 'defun)
                (checking 'defun)))
  (add-hook 'clojure-mode-hook #'configure-clojure-indent))

;;;;; clj-refactor
;; (use-package clj-refactor
;;   :config
;;   (setq cljr-warn-on-eval nil)
;;   (defun configure-clj-refactor ()
;;     (clj-refactor-mode)
;;     ;; This choice of keybinding leaves cider-macroexpand-1 unbound
;;     (cljr-add-keybindings-with-prefix "C-c C-m"))
;;   (add-hook 'clojure-mode-hook #'configure-clj-refactor))

(use-package rust-mode)

(use-package racer
  :config
  (setq racer-rust-src-path (expand-file-name "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))
  (add-hook 'rust-mode-hook #'racer-mode))

(use-package cargo
  :config
  (add-hook 'rust-mode-hook #'cargo-minor-mode))

(use-package scala-mode)

(use-package ensime
  :quelpa (ensime :fetcher github
                  :repo "ensime/ensime-emacs")
  :config (setq ensime-eldoc-hints 'all))

(use-package flycheck
  :diminish flycheck-mode)

(use-package flycheck-pos-tip
  :config
  (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

;;;;; flycheck-clojure
;; (use-package flycheck-clojure
;;   :quelpa (flycheck-clojure :fetcher github
;;                             :repo "clojure-emacs/squiggly-clojure"
;;                             :files ("elisp/flycheck-clojure/*.el"))
;;   :config
;;   (flycheck-clojure-setup)
;;   (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package haskell-mode
  :config
  (setq haskell-process-type 'stack-ghci)
  (add-hook 'haskell-mode-hook #'interactive-haskell-mode))

(use-package hindent
  :config
  (add-hook 'haskell-mode-hook #'hindent-mode))

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)
         ("\\.apib\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package rainbow-delimiters
  :config
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'scheme-mode-hook #'rainbow-delimiters-mode))

(use-package smartparens
  :diminish smartparens-mode
  :config
  (sp-use-smartparens-bindings)
  (show-smartparens-global-mode)
  (smartparens-global-strict-mode)
  (require 'smartparens-config)
  (set-face-background 'sp-show-pair-match-face "deep sky blue")
  (set-face-foreground 'sp-show-pair-match-face "white"))

(use-package f)
(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode)
  (yas-reload-all))

(use-package magit
  :bind ("C-x C-z" . magit-status))

(use-package gh)
(use-package gist)

(use-package git-gutter
  :diminish git-gutter-mode
  :init
  (global-git-gutter-mode)
  :bind (("C-x C-g" . git-gutter-mode)
         ("C-x v =" . git-gutter:popup-hunk)))

(use-package SQLi-mode
  :ensure nil
  :init
  (defcustom sql-ms-program "sqlcmd"
    "Command to start ;osql; (replaced for sqlcmd) by Microsoft.
     Starts `sql-interactive-mode' after doing some setup."
    :type 'file
    :group 'SQL)
  (defcustom sql-ms-options '("-s" "|" "-k")
    ;; -W is the linesize
    "List of additional options for `sql-ms-program'."
    :type '(repeat string)
    :version "22.1"
    :group 'SQL)
  (defadvice sql-connect
      (before load-sql-connections activate)
    "Registers sql connections before running sql-connect."
    (require 'sql-connections "~/gitlab/dotfiles-private/emacs/sql-connections.el.gpg"))
  (defun warehouse-staging ()
    (interactive)
    (setq sql-product 'ms)
    (sql-connect 'warehouse-staging 'warehouse-staging))
  (defun docker-postgres ()
    (interactive)
    (setq sql-product 'postgres)
    (sql-connect 'docker-postgres 'docker-postgres))
  (defun webicon-ci ()
    (interactive)
    (setq sql-product 'oracle)
    (sql-connect 'webicon-ci))
  (defun webicon-prod ()
    (interactive)
    (setq sql-product 'oracle)
    (sql-connect 'webicon-prod))
  (defun rating-prod ()
    (interactive)
    (setq sql-product 'oracle)
    (sql-connect 'rating-prod))
  (defun rating-ci ()
    (interactive)
    (setq sql-product 'oracle)
    (sql-connect 'rating-ci))
  (defun webicon-qa ()
    (interactive)
    (setq sql-product 'oracle)
    (sql-connect 'webicon-qa))
  (defun webicon-ci ()
    (interactive)
    (setq sql-product 'oracle)
    (sql-connect 'webicon-ci))
  (defun csi_mm_03_14_18 ()
    (interactive)
    (setq sql-product 'mysql)
    (sql-connect 'csi_mm_03_14_18))
  (add-hook 'sql-interactive-mode-hook (apply-partially #'toggle-truncate-lines t))
  (provide 'SQLi-mode))

(use-package rcirc
  :ensure nil
  :config
  (setq rcirc-default-nick "smcleod"
        rcirc-default-full-name "Scott McLeod")
  (provide 'rcirc))

(use-package rcirc-notify
  :quelpa (rcirc-notify :fetcher github
                        :repo "nicferrier/rcirc-notify"))

(use-package slack
  :bind (:map slack-mode-map ("C-c C-o" . browse-url)
         :map slack-message-buffer-mode-map ("C-c C-o" . browse-url)
         :map slack-file-info-buffer-mode-map ("C-c C-o" . browse-url))
  :quelpa (slack :fetcher github
                 ;; :repo "yuya373/emacs-slack"
		 :repo "halcyon/emacs-slack"
		 :branch "halcyon-fix-terminal")
  :commands slack-start
  :config
  (add-hook 'slack-mode-hook
            (lambda ()
              (display-line-numbers-mode -1)
              (turn-off-smartparens-strict-mode)))
  (setq slack-buffer-emojify nil
        slack-prefer-current-team t)
  (defadvice slack-start
      (before register-slack-teams activate)
    "Registers slack teams before starting slack."
    (require 'slack-connections "~/gitlab/dotfiles-private/emacs/slack-connections.el.gpg")))

(use-package direnv
  :quelpa (direnv :fetcher github
                  :repo "wbolster/emacs-direnv"))

(use-package alert
  :commands (alert)
  :init
  (setq alert-default-style 'libnotify))

(provide 'init)
;;; init.el ends here
