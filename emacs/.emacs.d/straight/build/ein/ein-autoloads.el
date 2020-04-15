;;; ein-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads "actual autoloads are elsewhere" "ein-cell" "../../../../../../.emacs.d/straight/build/ein/ein-cell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-cell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-cell" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-classes"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-classes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-classes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-classes" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-contents-api"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-contents-api.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-contents-api.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-contents-api" '("ein:" "*ein:content-hierarchy*")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-core" "../../../../../../.emacs.d/straight/build/ein/ein-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-core" '("ein:" "*ein:")))

;;;***

;;;### (autoloads nil "ein-dev" "../../../../../../.emacs.d/straight/build/ein/ein-dev.el"
;;;;;;  "7c766641453da0a1b8dfacd3cd5942c3")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-dev.el

(autoload 'ein:dev-insert-mode-map "ein-dev" "\
Insert mode-map into rst document.  For README.rst.

\(fn MAP-STRING)" nil nil)

(autoload 'ein:dev-start-debug "ein-dev" "\
Enable EIN debugging support.
When the prefix argument is given, debugging support for websocket
callback (`websocket-callback-debug-on-error') is enabled.

\(fn)" t nil)

(autoload 'ein:dev-stop-debug "ein-dev" "\
Inverse of `ein:dev-start-debug'.  Hard to maintain because it needs to match start

\(fn)" t nil)

(autoload 'ein:dev-bug-report-template "ein-dev" "\
Open a buffer with bug report template.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-dev" "../../../../../../.emacs.d/straight/build/ein/ein-dev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-dev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-dev" '("ein:")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-events" "../../../../../../.emacs.d/straight/build/ein/ein-events.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-events.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-events" '("ein:events-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-file" "../../../../../../.emacs.d/straight/build/ein/ein-file.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-file.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-file" '("ein:" "*ein:file-buffername-template*")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-ipdb" "../../../../../../.emacs.d/straight/build/ein/ein-ipdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-ipdb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-ipdb" '("ein:" "*ein:ipdb-")))

;;;***

;;;### (autoloads nil "ein-ipynb-mode" "../../../../../../.emacs.d/straight/build/ein/ein-ipynb-mode.el"
;;;;;;  "18e55149448536deb7a205858a452a12")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-ipynb-mode.el

(autoload 'ein:ipynb-mode "ein-ipynb-mode" "\
A simple mode for ipynb file.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '(".*\\.ipynb\\'" . ein:ipynb-mode))

;;;### (autoloads "actual autoloads are elsewhere" "ein-ipynb-mode"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-ipynb-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-ipynb-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-ipynb-mode" '("ein:ipynb-parent-mode")))

;;;***

;;;***

;;;### (autoloads nil "ein-jupyter" "../../../../../../.emacs.d/straight/build/ein/ein-jupyter.el"
;;;;;;  "754d1ba2982f374d48035cc0a1233ee9")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-jupyter.el

(autoload 'ein:jupyter-crib-token "ein-jupyter" "\
Shell out to jupyter for its credentials knowledge.  Return list of (PASSWORD TOKEN).

\(fn URL-OR-PORT)" nil nil)

(autoload 'ein:jupyter-crib-running-servers "ein-jupyter" "\
Shell out to jupyter for running servers.

\(fn)" nil nil)

(autoload 'ein:jupyter-server-start "ein-jupyter" "\
Start SERVER-COMMAND with `--notebook-dir' NOTEBOOK-DIRECTORY.

Login after connection established unless NO-LOGIN-P is set.
LOGIN-CALLBACK takes two arguments, the buffer created by
`ein:notebooklist-open--finish', and the url-or-port argument
of `ein:notebooklist-open*'.

With \\[universal-argument] prefix arg, prompt the user for the
server command.

\(fn SERVER-COMMAND NOTEBOOK-DIRECTORY &optional NO-LOGIN-P LOGIN-CALLBACK PORT)" t nil)

(defalias 'ein:run 'ein:jupyter-server-start)

(defalias 'ein:stop 'ein:jupyter-server-stop)

(autoload 'ein:jupyter-server-stop "ein-jupyter" "\


\(fn &optional FORCE LOG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-jupyter"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-jupyter.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-jupyter.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-jupyter" '("ein:" "*ein:jupyter-server-")))

;;;***

;;;***

;;;### (autoloads nil "ein-jupyterhub" "../../../../../../.emacs.d/straight/build/ein/ein-jupyterhub.el"
;;;;;;  "8d70b450aa831b90ab970ddb1fe0c30e")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-jupyterhub.el

(autoload 'ein:jupyterhub-connect "ein-jupyterhub" "\
Log on to a jupyterhub server using PAM authentication. Requires jupyterhub version 0.8 or greater.  CALLBACK takes two arguments, the resulting buffer and the singleuser url-or-port

\(fn URL-OR-PORT USERNAME PASSWORD CALLBACK)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-jupyterhub"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-jupyterhub.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-jupyterhub.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-jupyterhub" '("ein:" "*ein:jupyterhub-connections*")))

;;;***

;;;***

;;;### (autoloads nil "ein-kernel" "../../../../../../.emacs.d/straight/build/ein/ein-kernel.el"
;;;;;;  "faf757bf8908f54391c05264dfd93a2a")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-kernel.el

(defalias 'ein:kernel-url-or-port 'ein:$kernel-url-or-port)

(defalias 'ein:kernel-id 'ein:$kernel-kernel-id)

;;;### (autoloads "actual autoloads are elsewhere" "ein-kernel" "../../../../../../.emacs.d/straight/build/ein/ein-kernel.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-kernel.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-kernel" '("ein:")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-kernelinfo"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-kernelinfo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-kernelinfo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-kernelinfo" '("ein:kernelinfo")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-kill-ring"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-kill-ring.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-kill-ring.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-kill-ring" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-log" "../../../../../../.emacs.d/straight/build/ein/ein-log.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-log.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-log" '("ein:")))

;;;***

;;;### (autoloads nil "ein-markdown-mode" "../../../../../../.emacs.d/straight/build/ein/ein-markdown-mode.el"
;;;;;;  "e7bb335b69166d91191ac79277653a4b")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-markdown-mode.el

(autoload 'ein:markdown-mode "ein-markdown-mode" "\
Major mode for editing ein:markdown files.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-markdown-mode"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-markdown-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-markdown-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-markdown-mode" '("ein:markdown" "defun-markdown-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-node" "../../../../../../.emacs.d/straight/build/ein/ein-node.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-node.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-node" '("ein:")))

;;;***

;;;### (autoloads nil "ein-notebook" "../../../../../../.emacs.d/straight/build/ein/ein-notebook.el"
;;;;;;  "e5102c9a8d95f5b138f34a320f8c663f")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-notebook.el

(defalias 'ein:notebook-name 'ein:$notebook-notebook-name)

(autoload 'ein:notebook-jump-to-opened-notebook "ein-notebook" "\
List all opened notebook buffers and switch to one that the user selects.

\(fn NOTEBOOK)" t nil)

(autoload 'ein:notebook-open "ein-notebook" "\
Returns notebook at URL-OR-PORT/PATH.

Note that notebook sends for its contents and won't have them right away.

After the notebook is opened, CALLBACK is called as::

  (funcall CALLBACK notebook created)

where `created' indicates a new notebook or an existing one.

\(fn URL-OR-PORT PATH &optional KERNELSPEC CALLBACK ERRBACK NO-POP)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-notebook"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-notebook.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-notebook.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-notebook" '("ein:" "*ein:notebook--pending-query*")))

;;;***

;;;***

;;;### (autoloads nil "ein-notebooklist" "../../../../../../.emacs.d/straight/build/ein/ein-notebooklist.el"
;;;;;;  "a33ab5bbd4c3b8954b9b0ce5120dd822")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-notebooklist.el

(autoload 'ein:notebooklist-reload "ein-notebooklist" "\
Reload current Notebook list.

\(fn &optional NBLIST RESYNC CALLBACK)" t nil)

(autoload 'ein:notebooklist-new-notebook "ein-notebooklist" "\


\(fn URL-OR-PORT KERNELSPEC &optional CALLBACK NO-POP RETRY)" t nil)

(autoload 'ein:notebooklist-new-notebook-with-name "ein-notebooklist" "\
Upon notebook-open, rename the notebook, then funcall CALLBACK.

\(fn URL-OR-PORT KERNELSPEC NAME &optional CALLBACK NO-POP)" t nil)

(autoload 'ein:notebooklist-list-paths "ein-notebooklist" "\
Return all files of CONTENT-TYPE for all sessions

\(fn &optional CONTENT-TYPE)" nil nil)

(autoload 'ein:notebooklist-load "ein-notebooklist" "\
Load notebook list but do not pop-up the notebook list buffer.

For example, if you want to load notebook list when Emacs starts,
add this in the Emacs initialization file::

  (add-to-hook 'after-init-hook 'ein:notebooklist-load)

or even this (if you want fast Emacs start-up)::

  ;; load notebook list if Emacs is idle for 3 sec after start-up
  (run-with-idle-timer 3 nil #'ein:notebooklist-load)

\(fn &optional URL-OR-PORT)" nil nil)

(autoload 'ein:notebooklist-open "ein-notebooklist" "\
This is now an alias for ein:notebooklist-login

\(fn URL-OR-PORT CALLBACK)" t nil)

(defalias 'ein:login 'ein:notebooklist-login)

(autoload 'ein:notebooklist-login "ein-notebooklist" "\
Deal with security before main entry of ein:notebooklist-open*.

CALLBACK takes two arguments, the buffer created by ein:notebooklist-open--success
and the url-or-port argument of ein:notebooklist-open*.

\(fn URL-OR-PORT CALLBACK &optional COOKIE-PLIST TOKEN)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-notebooklist"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-notebooklist.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-notebooklist.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-notebooklist" '("ein:" "render-" "generate-breadcrumbs")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-notification"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-notification.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-notification.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-notification" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-output-area"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-output-area.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-output-area.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-output-area" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-pager" "../../../../../../.emacs.d/straight/build/ein/ein-pager.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-pager.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-pager" '("ein:pager-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-process"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-process.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-process" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-python-send"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-python-send.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-python-send.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-python-send" '("ein:python-send-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-pytools"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-pytools.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-pytools.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-pytools" '("ein:pytools-jump-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-query" "../../../../../../.emacs.d/straight/build/ein/ein-query.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-query.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-query" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-scratchsheet"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-scratchsheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-scratchsheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-scratchsheet" '("ein:scratchsheet")))

;;;***

;;;### (autoloads nil "ein-shared-output" "../../../../../../.emacs.d/straight/build/ein/ein-shared-output.el"
;;;;;;  "613735ff16cd923c6c142df68beb592c")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-shared-output.el

(autoload 'ein:shared-output-pop-to-buffer "ein-shared-output" "\
Open shared output buffer.

\(fn)" t nil)

(autoload 'ein:shared-output-show-code-cell-at-point "ein-shared-output" "\
Show code cell at point in shared-output buffer.
It is useful when the output of the cell at point is truncated.
See also `ein:cell-max-num-outputs'.

\(fn)" t nil)

(autoload 'ein:shared-output-eval-string "ein-shared-output" "\
Entry to `ein:cell-execute-internal' from the shared output cell.

\(fn KERNEL CODE &rest ARGS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-shared-output"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-shared-output.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-shared-output.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-shared-output" '("ein:" "*ein:shared-output*")))

;;;***

;;;***

;;;### (autoloads nil "ein-traceback" "../../../../../../.emacs.d/straight/build/ein/ein-traceback.el"
;;;;;;  "9267da9b8f7fe09054051bb6f77235f0")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-traceback.el

(autoload 'ein:tb-show "ein-traceback" "\
Show full traceback in traceback viewer.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-traceback"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-traceback.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-traceback.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-traceback" '("ein:t")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-utils" "../../../../../../.emacs.d/straight/build/ein/ein-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-utils" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-websocket"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-websocket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-websocket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-websocket" '("ein:" "fix-request-netscape-cookie-parse")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-worksheet"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-worksheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ein-worksheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-worksheet" '("ein:" "hof-add")))

;;;***

;;;### (autoloads nil "ob-ein" "../../../../../../.emacs.d/straight/build/ein/ob-ein.el"
;;;;;;  "a8cb3dd70576de5b33b8b94856898f3e")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ob-ein.el

(if (featurep 'org) (let* ((orig (get 'org-babel-load-languages 'custom-type)) (orig-cdr (cdr orig)) (choices (plist-get orig-cdr :key-type))) (push '(const :tag "Ein" ein) (nthcdr 1 choices)) (put 'org-babel-load-languages 'custom-type (cons (car orig) (plist-put orig-cdr :key-type choices)))))

;;;### (autoloads "actual autoloads are elsewhere" "ob-ein" "../../../../../../.emacs.d/straight/build/ein/ob-ein.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/ob-ein.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ein" '("ob-ein-" "*ob-ein-sentinel*")))

;;;***

;;;***

;;;### (autoloads nil "poly-ein" "../../../../../../.emacs.d/straight/build/ein/poly-ein.el"
;;;;;;  "77979d3b5a80fc240930b58d9156742b")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/poly-ein.el
 (autoload 'poly-ein-mode "poly-ein")

;;;### (autoloads "actual autoloads are elsewhere" "poly-ein" "../../../../../../.emacs.d/straight/build/ein/poly-ein.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/ein/poly-ein.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "poly-ein" '("pm-" "poly-ein-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/ein/ein-cell.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-classes.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-completer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-contents-api.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-core.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-dev.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-events.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-file.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-ipdb.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-ipynb-mode.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-jupyter.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-jupyterhub.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-kernel.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-kernelinfo.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-kill-ring.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-log.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-markdown-mode.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-node.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-notebook.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-notebooklist.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-notification.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-output-area.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-pager.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-pkg.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-process.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-python-send.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-pytools.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-query.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-scratchsheet.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-shared-output.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-traceback.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-utils.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-websocket.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein-worksheet.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/ein.el" "../../../../../../.emacs.d/straight/build/ein/ob-ein.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/ein/poly-ein.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'ein-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ein-autoloads.el ends here
