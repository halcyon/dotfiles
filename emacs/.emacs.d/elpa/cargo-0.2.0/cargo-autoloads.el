;;; cargo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "cargo" "cargo.el" (22598 19815 596005 957000))
;;; Generated autoloads from cargo.el

(autoload 'cargo-minor-mode "cargo" "\
Cargo minor mode. Used to hold keybindings for cargo-mode

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cargo-process" "cargo-process.el" (22598 19815
;;;;;;  546005 957000))
;;; Generated autoloads from cargo-process.el

(autoload 'cargo-process-bench "cargo-process" "\
Run the Cargo bench COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Run the benchmarks.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-build "cargo-process" "\
Run the Cargo build COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Compile the current project.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-clean "cargo-process" "\
Run the Cargo clean COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Remove the target directory.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-doc "cargo-process" "\
Run the Cargo doc COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Build this project's and its dependencies' documentation.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-new "cargo-process" "\
Run the Cargo new COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Create a new cargo project.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-run "cargo-process" "\
Run the Cargo run COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Build and execute src/main.rs.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-search "cargo-process" "\
Run the Cargo search COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Search registry for crates.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-test "cargo-process" "\
Run the Cargo test COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Run the tests.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-current-test "cargo-process" "\
Run the Cargo test COMMAND for the current test.
With the prefix argument, modify the command's invocation.
Cargo: Run the tests.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-current-file-tests "cargo-process" "\
Run the Cargo test COMMAND for the current file.
With the prefix argument, modify the command's invocation.
Cargo: Run the tests.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-update "cargo-process" "\
Run the Cargo update COMMAND.
With the prefix argument, modify the command's invocation.
Cargo: Update dependencies listed in Cargo.lock.

\(fn COMMAND)" t nil)

(autoload 'cargo-process-repeat "cargo-process" "\
Run the last cargo-process command.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("cargo-pkg.el") (22598 19815 636005 957000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; cargo-autoloads.el ends here
