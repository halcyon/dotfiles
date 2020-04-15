;;; git-commit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "git-commit" "../../../../../../.emacs.d/straight/build/git-commit/git-commit.el"
;;;;;;  "facf206c8cdeaf0a4b8ea5e0a6ce7449")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/git-commit/git-commit.el

(defvar global-git-commit-mode t "\
Non-nil if Global Git-Commit mode is enabled.
See the `global-git-commit-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-commit-mode'.")

(custom-autoload 'global-git-commit-mode "git-commit" nil)

(autoload 'global-git-commit-mode "git-commit" "\
Edit Git commit messages.
This global mode arranges for `git-commit-setup' to be called
when a Git commit message file is opened.  That usually happens
when Git uses the Emacsclient as $GIT_EDITOR to have the user
provide such a commit message.

\(fn &optional ARG)" t nil)

(defconst git-commit-filename-regexp "/\\(\\(\\(COMMIT\\|NOTES\\|PULLREQ\\|MERGEREQ\\|TAG\\)_EDIT\\|MERGE_\\|\\)MSG\\|\\(BRANCH\\|EDIT\\)_DESCRIPTION\\)\\'")

(autoload 'git-commit-setup-check-buffer "git-commit" "\


\(fn)" nil nil)

(autoload 'git-commit-setup "git-commit" "\


\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "git-commit" "../../../../../../.emacs.d/straight/build/git-commit/git-commit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/git-commit/git-commit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "git-commit" '("git-commit-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/git-commit/git-commit.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'git-commit-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; git-commit-autoloads.el ends here
