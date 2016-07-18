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
           :repo "jwiegley/use-package"))
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

;;; Packages

;;;; settings
;;;;; global-settings
(use-package global-settings
  :ensure nil
  :init
  (menu-bar-mode -1)
  (setq inhibit-startup-message t
        require-final-newline t
        vc-follow-symlinks t)
  (setq-default indent-tabs-mode nil)
  (add-hook 'before-save-hook #'delete-trailing-whitespace)
  (global-auto-revert-mode)
  (winner-mode)
  (put 'narrow-to-region 'disabled nil)
  (put 'scroll-left 'disabled nil)
  (put 'upcase-region 'disabled nil)
  (put 'downcase-region 'disabled nil)
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
  (define-key key-translation-map (kbd "\e[44;6") (kbd "C-,"))
  (define-key key-translation-map (kbd "\e[46;6") (kbd "C-."))
  (define-key key-translation-map (kbd "\e[65;6") (kbd "C-S-a"))
  (define-key key-translation-map (kbd "\e[68;6") (kbd "C-S-d"))
  (define-key key-translation-map (kbd "\e[86;8") (kbd "C-M-S-v"))
  (provide 'global-settings))

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
  :diminish outline-minor-mode
  :quelpa (outshine :fetcher github
                    :repo "tj64/outshine"
                    :stable t)
  :config
  (setq outshine-use-speed-commands t)
  (add-hook 'outline-minor-mode-hook #'outshine-hook-function)
  (add-hook 'emacs-lisp-mode-hook #'outline-minor-mode)
  :bind (("<S-tab>" . outshine-cycle-buffer)
         ("<M-tab>" . company-complete)))

;;;;; visual-settings
(use-package visual-settings
  :ensure nil
  :init
  (line-number-mode)                 ; line numbers in the mode line
  (column-number-mode)               ; column numbers in the mode line
  (global-hl-line-mode)              ; highlight current line
  (global-linum-mode)                ; add line numbers on the left
  (provide 'visual-settings))

;;;;; zenburn-theme
(use-package zenburn-theme
  :quelpa (zenburn-theme :fetcher github
                         :repo "bbatsov/zenburn-emacs")
  :config (set-face-background 'hl-line "color-240"))

;;;;; scratch
(use-package scratch
  :quelpa (scratch :fetcher github
                   :repo "ieure/scratch-el"))

;;;;; scratch-ext
(use-package scratch-ext
  :quelpa (scratch-ext :fetcher github
                       :repo "kyanagi/scratch-ext-el"))

;;;;; persistent-scratch
(use-package persistent-scratch)

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
  :config (add-hook 'term-mode-hook #'linum-off)
  :bind (:map term-mode-map
              ("C-'" . term-char-mode)
         :map term-raw-map
              ("C-'" . term-line-mode)
              ("C-y" . term-paste)))

;;;;; info
(use-package info
  :config (add-hook 'Info-mode-hook #'linum-off))

;;;;; dired-x
(use-package dired-x
  ;;; C-x C-j opens dired with the cursor right on the file you're editing
  ;;; C-x 4 C-j opens dired in a separate window
  ;;; `brew install coreutils` to install gnu ls on mac
  :ensure nil
  :config (setq insert-directory-program "gls"))

;;;;; org-settings
(use-package htmlize
  :quelpa (htmlize :fetcher git
                   :url "http://fly.srk.fer.hr/~hniksic/emacs/htmlize.git"))
(use-package org-settings
  :ensure nil
  :init
  (require 'ob-clojure)
  (setq org-babel-clojure-backend 'cider)
  (set-face-attribute 'org-document-info nil :inherit 'org-block)
  (set-face-attribute 'org-document-info nil :foreground nil)
  (setq org-src-fontify-natively t
        org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "HOLD(h)" "|" "DONE(d)")))
  (provide 'org-settings))

;;;;; org2jekyll
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

;;;;; org-reveal
(use-package ox-reveal
  :quelpa (ox-reveal :fetcher github
                     :repo "yjwen/org-reveal"))

;;;; replacements for improved functionality
;;;;; which-key
(use-package which-key
  :diminish which-key-mode
  :config (which-key-mode))

;;;;; helm
(use-package helm
  :config
  (require 'helm-config)
  :bind (("C-x b" . helm-buffers-list)
         ("M-x" . helm-M-x)))

;;;;; helm-ag
(use-package helm-ag)

;;;;; helm-cider
(use-package helm-cider
  :quelpa (helm-cider :fetcher github
                      :repo "clojure-emacs/helm-cider"))

;;;;; helm-clojuredocs
(use-package helm-clojuredocs
  :quelpa (helm-clojuredocs :fetcher github
                            :repo "mbuczko/helm-clojuredocs"))

;;;;; helm-projectile
(use-package helm-projectile
  :quelpa (helm-projectile :fetcher github
                           :repo "bbatsov/helm-projectile")
  :config
  (setq projectile-switch-project-action 'helm-projectile)
  (helm-projectile-on))

;;;;; helm-swoop
(use-package helm-swoop)

;;;;; projectile
(use-package projectile
  :config (projectile-global-mode))

;;;;; multiple-cursors
(use-package multiple-cursors
  :bind ("C-S-c C-S-c" . mc/edit-lines))

;;;;; goto-last-change
(use-package goto-last-change
  :bind (("C-x C-/" . goto-last-change)
         ("C-x C-_" . goto-last-change)))

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
  :diminish undo-tree-mode
  :config (global-undo-tree-mode)
  :bind ("s-/" . undo-tree-visualize))

;;;;; browse-kill-ring
(use-package browse-kill-ring)

;;;;; pbcopy
(use-package pbcopy
  :quelpa (pbcopy :fetcher github
                  :repo "emacsfodder/pbcopy.el")
  :config (turn-on-pbcopy))

;;;; language
;;;;; gradle-mode
(use-package gradle-mode
  :diminish gradle-mode
  :config (gradle-mode))

;;;;; restclient
(use-package restclient
  :quelpa (restclient :repo "pashky/restclient.el"
                      :fetcher github
                      :files ("restclient.el")))

;;;;; ensime
(use-package ensime
  :quelpa (ensime :fetcher github
                  :repo "ensime/ensime-emacs")
  :commands ensime ensime-mode)

;;;;; emmet-mode
(use-package emmet-mode)

;;;;; company
(use-package company
  :diminish company-mode
  :config
  (add-hook 'after-init-hook #'global-company-mode))

(use-package eldoc
  :ensure nil
  :diminish eldoc-mode
  :commands eldoc-mode
  :init
  (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (add-hook 'ensime-mode-hook #'eldoc-mode))

(use-package abbrev
  :ensure nil
  :diminish abbrev-mode)

;;;;; elisp-settings
(use-package elisp-settings
  :ensure nil
  :init
  (font-lock-add-keywords 'emacs-lisp-mode
                          '(("(\\s-*\\(\\_<\\(?:\\sw\\|\\s_\\)+\\)\\_>"
                             1 'font-lock-keyword-face)))
  (provide 'elisp-settings))

;;;;; elisp-slime-nav
(use-package elisp-slime-nav
  :diminish elisp-slime-nav-mode
  :config
  (add-hook 'emacs-lisp-mode-hook #'turn-on-elisp-slime-nav-mode)
  (add-hook 'ielm-mode-hook #'turn-on-elisp-slime-nav-mode))

;;;;; overseer.el
(use-package overseer
  :quelpa (overseer :fetcher github
                    :repo "tonini/overseer.el"))

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
        cider-repl-history-file "~/.emacs.d/cider-repl-history.eld"
        ;; cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))"
        cider-cljs-lein-repl "(user/start-figwheel)"))

;;;;; flycheck
(use-package flycheck
  :diminish flycheck-mode)

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

;;;;; haskell-mode
(use-package haskell-mode
  :config
  (setq haskell-process-type 'stack-ghci)
  (add-hook 'haskell-mode-hook #'interactive-haskell-mode))

;;;;; hindent
(use-package hindent
  :config
  (add-hook 'haskell-mode-hook #'hindent-mode))

;;;;; markdown-mode
(use-package markdown-mode
  :config (add-to-list 'auto-mode-alist '("\\.apib\\'" . markdown-mode)))

;;;;; rainbow-delimiters
(use-package rainbow-delimiters
  :config
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'scheme-mode-hook #'rainbow-delimiters-mode))

;;;;; smartparens
(use-package smartparens
  :diminish smartparens-mode
  :config
  (sp-use-smartparens-bindings)
  (show-smartparens-global-mode)
  (smartparens-global-strict-mode)
  (require 'smartparens-config)
  (set-face-background 'sp-show-pair-match-face "deep sky blue")
  (set-face-foreground 'sp-show-pair-match-face "white"))

;;;;; yasnippet
(use-package f)
(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode)
  (yas-reload-all))

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
  :diminish git-gutter-mode
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
