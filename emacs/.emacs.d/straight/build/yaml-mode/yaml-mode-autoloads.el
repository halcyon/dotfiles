;;; yaml-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "yaml-mode" "../../../../../../.emacs.d/straight/build/yaml-mode/yaml-mode.el"
;;;;;;  "070f98f4148b8d08182f1f5de8b2741c")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

;;;### (autoloads "actual autoloads are elsewhere" "yaml-mode" "../../../../../../.emacs.d/straight/build/yaml-mode/yaml-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/yaml-mode/yaml-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yaml-mode" '("yaml-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/yaml-mode/yaml-mode.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'yaml-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; yaml-mode-autoloads.el ends here
