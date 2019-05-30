;;; org2jekyll-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "org2jekyll" "org2jekyll.el" (0 0 0 0))
;;; Generated autoloads from org2jekyll.el

(autoload 'org2jekyll-init-current-buffer "org2jekyll" "\
Given an existing buffer, add the needed metadata to make it a post or page.

\(fn)" t nil)

(autoload 'org2jekyll-create-draft "org2jekyll" "\
Create a new Jekyll blog post with TITLE.
The `'%s`' will be replaced respectively by the blog entry name, the author, the
 generated date, the title, the description, the tags and the categories.

\(fn)" t nil)

(autoload 'org2jekyll-list-posts "org2jekyll" "\
Lists the posts folder.

\(fn)" t nil)

(autoload 'org2jekyll-list-drafts "org2jekyll" "\
List the drafts folder.

\(fn)" t nil)

(autoload 'org2jekyll-publish "org2jekyll" "\
Publish the current org file as post or page depending on the chosen layout.
Layout `'post`' is a jekyll post.
Layout `'default`' is a page.

\(fn)" t nil)

(autoload 'org2jekyll-publish-posts "org2jekyll" "\
Publish all the posts.

\(fn)" t nil)

(autoload 'org2jekyll-publish-pages "org2jekyll" "\
Publish all the pages.

\(fn)" t nil)

(autoload 'org2jekyll-mode "org2jekyll" "\
Functionality for publishing the current org-mode post to jekyll.
With no argument, the mode is toggled on/off.
Non-nil argument turns mode on.
Nil argument turns mode off.

Commands:
\\{org2jekyll-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org2jekyll" '("org2jekyll-")))

;;;***

;;;### (autoloads nil "org2jekyll-utilities" "org2jekyll-utilities.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org2jekyll-utilities.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org2jekyll-utilities" '("org2jekyll-tests-with-temp-buffer")))

;;;***

(provide 'org2jekyll-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org2jekyll-autoloads.el ends here
