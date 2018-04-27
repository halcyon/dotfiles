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
        require-final-newline t
        ielm-dynamic-return nil
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

;;;;; pinentry
(use-package pinentry
  :config
  (setenv "INSIDE_EMACS" (format "%s,comint" emacs-version))
  (pinentry-start))

;;;;; golden-ratio
;; (use-package golden-ratio
;;   :init
;;   (setq golden-ratio-auto-scale t)
;;   :config
;;   (golden-ratio-mode 1))

;;;;; golden-ratio-scroll-screen
;; (use-package golden-ratio-scroll-screen
;;   :quelpa (golden-ratio-scroll-screen :repo "jixiuf/golden-ratio-scroll-screen" :fetcher github)
;;   :config
;;   (global-set-key [remap scroll-down-command] 'golden-ratio-scroll-screen-down)
;;   (global-set-key [remap scroll-up-command] 'golden-ratio-scroll-screen-up))

;;;;; private
(require 'emacs-private (expand-file-name "~/gitlab/dotfiles-private/emacs/emacs-private.el"))

;;;;; emms
;; (use-package emms
;;   :bind (("C-c +" . emms-volume-mode-plus)
;;          ("C-c -" . emms-volume-mode-minus))
;;   :config
;;   (emms-all)
;;   (emms-default-players)
;;   (setq emms-playlist-default-major-mode 'emms-playlist-mode
;;         emms-volume-change-function 'emms-volume-pulse-change))

;;;;; cider
(use-package cider
  :bind (:map cider-repl-mode-map
              ("C-M-q" . prog-indent-sexp))
  :config
  (setq cider-repl-history-size 100000
        cider-repl-history-file "~/.emacs.d/cider-repl-history.eld")
  (defvar cider-cljs-lein-repl
    "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")
  (put 'cider-cljs-lein-repl 'safe-local-variable #'stringp))

;;;;; company
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
  :bind (("<backtab>" . outshine-cycle-buffer)))

;;;;; display-settings
(use-package display-settings
  :ensure nil
  :init
  (line-number-mode)                 ; line numbers in the mode line
  (column-number-mode)               ; column numbers in the mode line
  (global-hl-line-mode)              ; highlight current line
  (global-display-line-numbers-mode) ; add line numbers on the left

  (setq default-frame-alist '((font . "Fira Code 16")))
  (add-hook 'after-make-frame-functions
            (lambda (frame)
              (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code")))
  (defconst fira-code-font-lock-keywords-alist
    (mapcar (lambda (regex-char-pair)
              `(,(car regex-char-pair)
                (0 (prog1 ()
                     (compose-region (match-beginning 1)
                                     (match-end 1)
                                     ;; The first argument to concat is a string containing a literal tab
                                     ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
            '(("\\(www\\)"                   #Xe100)
              ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
              ("\\(\\*\\*\\*\\)"             #Xe102)
              ("\\(\\*\\*/\\)"               #Xe103)
              ("\\(\\*>\\)"                  #Xe104)
              ("[^*]\\(\\*/\\)"              #Xe105)
              ("\\(\\\\\\\\\\)"              #Xe106)
              ("\\(\\\\\\\\\\\\\\)"          #Xe107)
              ("\\({-\\)"                    #Xe108)
              ("\\(\\[\\]\\)"                #Xe109)
              ("\\(::\\)"                    #Xe10a)
              ("\\(:::\\)"                   #Xe10b)
              ("[^=]\\(:=\\)"                #Xe10c)
              ("\\(!!\\)"                    #Xe10d)
              ("\\(!=\\)"                    #Xe10e)
              ("\\(!==\\)"                   #Xe10f)
              ("\\(-}\\)"                    #Xe110)
              ("\\(--\\)"                    #Xe111)
              ("\\(---\\)"                   #Xe112)
              ("\\(-->\\)"                   #Xe113)
              ("[^-]\\(->\\)"                #Xe114)
              ("\\(->>\\)"                   #Xe115)
              ("\\(-<\\)"                    #Xe116)
              ("\\(-<<\\)"                   #Xe117)
              ("\\(-~\\)"                    #Xe118)
              ("\\(#{\\)"                    #Xe119)
              ("\\(#\\[\\)"                  #Xe11a)
              ("\\(##\\)"                    #Xe11b)
              ("\\(###\\)"                   #Xe11c)
              ("\\(####\\)"                  #Xe11d)
              ("\\(#(\\)"                    #Xe11e)
              ("\\(#\\?\\)"                  #Xe11f)
              ("\\(#_\\)"                    #Xe120)
              ("\\(#_(\\)"                   #Xe121)
              ("\\(\\.-\\)"                  #Xe122)
              ("\\(\\.=\\)"                  #Xe123)
              ("\\(\\.\\.\\)"                #Xe124)
              ("\\(\\.\\.<\\)"               #Xe125)
              ("\\(\\.\\.\\.\\)"             #Xe126)
              ("\\(\\?=\\)"                  #Xe127)
              ("\\(\\?\\?\\)"                #Xe128)
              ("\\(;;\\)"                    #Xe129)
              ("\\(/\\*\\)"                  #Xe12a)
              ("\\(/\\*\\*\\)"               #Xe12b)
              ("\\(/=\\)"                    #Xe12c)
              ("\\(/==\\)"                   #Xe12d)
              ("\\(/>\\)"                    #Xe12e)
              ("\\(//\\)"                    #Xe12f)
              ("\\(///\\)"                   #Xe130)
              ("\\(&&\\)"                    #Xe131)
              ("\\(||\\)"                    #Xe132)
              ("\\(||=\\)"                   #Xe133)
              ("[^|]\\(|=\\)"                #Xe134)
              ("\\(|>\\)"                    #Xe135)
              ("\\(\\^=\\)"                  #Xe136)
              ("\\(\\$>\\)"                  #Xe137)
              ("\\(\\+\\+\\)"                #Xe138)
              ("\\(\\+\\+\\+\\)"             #Xe139)
              ("\\(\\+>\\)"                  #Xe13a)
              ("\\(=:=\\)"                   #Xe13b)
              ("[^!/]\\(==\\)[^>]"           #Xe13c)
              ("\\(===\\)"                   #Xe13d)
              ("\\(==>\\)"                   #Xe13e)
              ("[^=]\\(=>\\)"                #Xe13f)
              ("\\(=>>\\)"                   #Xe140)
              ("\\(<=\\)"                    #Xe141)
              ("\\(=<<\\)"                   #Xe142)
              ("\\(=/=\\)"                   #Xe143)
              ("\\(>-\\)"                    #Xe144)
              ("\\(>=\\)"                    #Xe145)
              ("\\(>=>\\)"                   #Xe146)
              ("[^-=]\\(>>\\)"               #Xe147)
              ("\\(>>-\\)"                   #Xe148)
              ("\\(>>=\\)"                   #Xe149)
              ("\\(>>>\\)"                   #Xe14a)
              ("\\(<\\*\\)"                  #Xe14b)
              ("\\(<\\*>\\)"                 #Xe14c)
              ("\\(<|\\)"                    #Xe14d)
              ("\\(<|>\\)"                   #Xe14e)
              ("\\(<\\$\\)"                  #Xe14f)
              ("\\(<\\$>\\)"                 #Xe150)
              ("\\(<!--\\)"                  #Xe151)
              ("\\(<-\\)"                    #Xe152)
              ("\\(<--\\)"                   #Xe153)
              ("\\(<->\\)"                   #Xe154)
              ("\\(<\\+\\)"                  #Xe155)
              ("\\(<\\+>\\)"                 #Xe156)
              ("\\(<=\\)"                    #Xe157)
              ("\\(<==\\)"                   #Xe158)
              ("\\(<=>\\)"                   #Xe159)
              ("\\(<=<\\)"                   #Xe15a)
              ("\\(<>\\)"                    #Xe15b)
              ("[^-=]\\(<<\\)"               #Xe15c)
              ("\\(<<-\\)"                   #Xe15d)
              ("\\(<<=\\)"                   #Xe15e)
              ("\\(<<<\\)"                   #Xe15f)
              ("\\(<~\\)"                    #Xe160)
              ("\\(<~~\\)"                   #Xe161)
              ("\\(</\\)"                    #Xe162)
              ("\\(</>\\)"                   #Xe163)
              ("\\(~@\\)"                    #Xe164)
              ("\\(~-\\)"                    #Xe165)
              ("\\(~=\\)"                    #Xe166)
              ("\\(~>\\)"                    #Xe167)
              ("[^<]\\(~~\\)"                #Xe168)
              ("\\(~~>\\)"                   #Xe169)
              ("\\(%%\\)"                    #Xe16a)
              ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
              ("[^:=]\\(:\\)[^:=]"           #Xe16c)
              ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
              ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

  (defun add-fira-code-symbol-keywords ()
    (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

  (add-hook 'prog-mode-hook
            (lambda ()
              (when (window-system)
                (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))))
  (provide 'display-settings))

;;;;; zenburn-theme
(use-package zenburn-theme
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
  :config (add-hook 'term-mode-hook (lambda ()
                                      (display-line-numbers-mode -1)
                                      (turn-off-smartparens-strict-mode)))
  :bind (:map term-mode-map
              ("C-'" . term-char-mode)
         :map term-raw-map
              ("C-'" . term-line-mode)
              ("C-y" . term-paste)))

;;;;; info
(use-package info
  :config
  (add-to-list 'Info-directory-list (expand-file-name "~/gitlab/info"))
  (add-hook 'Info-mode-hook (lambda () (display-line-numbers-mode -1))))

;;;;; dired-x
(use-package dired-x
  ;;; C-x C-j opens dired with the cursor right on the file you're editing
  ;;; C-x 4 C-j opens dired in a separate window
  :ensure nil)

;;;;; org

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

;;;;; yaml-mode
(use-package yaml-mode)

;;;; replacements for improved functionality
;;;;; which-key
(use-package which-key
  :diminish which-key-mode
  :config (which-key-mode))

;;;;; projectile
(use-package projectile
  :config
  (projectile-global-mode)
  (projectile-register-project-type 'deps-edn '("deps.edn")
                                    :test-suffix "_test"))

;;;;; avy
(use-package avy
  :config
  (avy-setup-default)
  ;; (setq avy-keys
  ;;       (nconc (number-sequence ?a ?z)
  ;;            (number-sequence ?A ?Z)
  ;;            (number-sequence ?1 ?9)
  ;;            '(?0)))
  )

;;;;; ace-window
(use-package ace-window
  :bind ("M-p" . ace-window))

;;;;; helm
(use-package helm
  :config
  (require 'helm-config)
  (helm-mode)
  :bind (("C-x b" . helm-buffers-list)
         ("M-x" . helm-M-x)))

;;;;; helm-ag
(use-package helm-ag)

;;;;; helm-cider
(use-package helm-cider)

;;;;; helm-clojuredocs
(use-package helm-clojuredocs
  :quelpa (helm-clojuredocs :fetcher github
                            :repo "mbuczko/helm-clojuredocs"))

;;;;; helm-google
(use-package helm-google
  :quelpa (helm-google :fetcher github
                       :repo "steckerhalter/helm-google"))

;;;;; helm-projectile
(use-package helm-projectile
  :config
  (setq projectile-switch-project-action 'helm-projectile)
  (helm-projectile-on))

;;;;; helm-swoop
(use-package helm-swoop)


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

;;;;; xclip
(use-package xclip
  :config (xclip-mode))

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

;; ;;;;; ensime
;; (use-package ensime
;;   :quelpa (ensime :fetcher github
;;                   :repo "ensime/ensime-emacs")
;;   :commands ensime ensime-mode)

;;;;; emmet-mode
(use-package emmet-mode)

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


;;;;; geiser
(use-package geiser
  :config
  (setq geiser-active-implementations '(mit)))

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

;;;;; rust-mode
(use-package rust-mode)

;;;;; racer
(use-package racer
  :config
  (setq racer-rust-src-path (expand-file-name "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))
  (add-hook 'rust-mode-hook #'racer-mode))

;;;;; cargo
(use-package cargo
  :config
  (add-hook 'rust-mode-hook #'cargo-minor-mode))

;;;;; flycheck
(use-package flycheck
  :diminish flycheck-mode)

;;;;; flycheck-pos-tip
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

;;;;; haskell-mode
(use-package haskell-mode
  :config
  (setq haskell-process-type 'stack-ghci)
  (add-hook 'haskell-mode-hook #'interactive-haskell-mode))

;;;;; hindent
(use-package hindent
  :config
  (add-hook 'haskell-mode-hook #'hindent-mode))

;; ;;;;; tide
;; (use-package tide
;;   :config
;;   (defun setup-tide-mode ()
;;     (interactive)
;;     (tide-setup)
;;     (flycheck-mode +1)
;;     (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;     (eldoc-mode +1)
;;     (tide-hl-identifier-mode +1)
;;     (company-mode +1))
;;   (setq company-tooltip-align-annotations t)
;;   ;; formats the buffer before saving
;;   (add-hook 'before-save-hook 'tide-format-before-save)

;;   (add-hook 'typescript-mode-hook #'setup-tide-mode))

;;;;; js2-mode
(use-package js2-mode
  :quelpa (js2-mode :repo "mooz/js2-mode"
                    :fetcher github)
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

;;;;; markdown-mode
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)
         ("\\.apib\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

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
(use-package gh)
(use-package gist)

;;;;; git-gutter
(use-package git-gutter
  :diminish git-gutter-mode
  :init
  (global-git-gutter-mode)
  :bind (("C-x C-g" . git-gutter-mode)
         ("C-x v =" . git-gutter:popup-hunk)))

;;;;; SQLi-mode
(use-package SQLi-mode
  :ensure nil
  :init
  (defadvice sql-connect
      (before load-sql-connections activate)
    "Registers sql connections before running sql-connect."
    (require 'sql-connections "~/gitlab/dotfiles-private/emacs/sql-connections.el.gpg"))
  (defun docker-postgres ()
    (interactive)
    (setq sql-product 'postgres)
    (sql-connect 'docker-postgres 'docker-postgres))
  (defun webicon-oracle ()
    (interactive)
    (setq sql-product 'oracle)
    (sql-connect 'webicon-oracle))
  (defun csi_mm_03_14_18 ()
    (interactive)
    (setq sql-product 'mysql)
    (sql-connect 'csi_mm_03_14_18))
  (add-hook 'sql-interactive-mode-hook (apply-partially #'toggle-truncate-lines t))
  (provide 'SQLi-mode))

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

;;;;; rcirc
(use-package rcirc
  :ensure nil
  :config
  (setq rcirc-default-nick "smcleod"
        rcirc-default-full-name "Scott McLeod")
  (provide 'rcirc))

;;;;; rcirc-notify
(use-package rcirc-notify
  :quelpa (rcirc-notify :fetcher github
                        :repo "nicferrier/rcirc-notify"))

;;;;; slack
(use-package slack
  :bind (:map slack-mode-map ("C-c C-o" . browse-url)
         :map slack-message-buffer-mode-map ("C-c C-o" . browse-url)
         :map slack-file-info-buffer-mode-map ("C-c C-o" . browse-url))
  :quelpa (slack :fetcher github
                 :repo "yuya373/emacs-slack")
  :commands slack-start
  :config
  (add-hook 'slack-mode-hook
            (lambda ()
              (display-line-numbers-mode -1)
              (turn-off-smartparens-strict-mode)))
  (setq slack-buffer-emojify t
        slack-prefer-current-team t)
  (defadvice slack-start
      (before register-slack-teams activate)
    "Registers slack teams before starting slack."
    (require 'slack-connections "~/gitlab/dotfiles-private/emacs/slack-connections.el.gpg")))

;;;;; alert
(use-package alert
  :commands (alert)
  :init
  (setq alert-default-style 'libnotify))

(provide 'init)
;;; init.el ends here
