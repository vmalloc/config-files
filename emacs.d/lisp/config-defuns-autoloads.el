;;; config-defuns-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "config-defuns" "config-defuns.el" (23020 45979
;;;;;;  475007 474000))
;;; Generated autoloads from config-defuns.el

(autoload 'my/cleanup-buffer "config-defuns" "\
Perform a bunch of operations on the whitespace content of a buffer.

\(fn)" t nil)

(autoload 'my/filter-buffer "config-defuns" "\
Run shell command on buffer and replace it with the output.

\(fn)" t nil)

(autoload 'my/open-line-below "config-defuns" "\
Go to end of line, then insert N newlines and indent.

\(fn N)" t nil)

(autoload 'my/open-line-above "config-defuns" "\
Go to end of line, then insert N newlines and indent.

\(fn N)" t nil)

(autoload 'my/diff-current-buffer-with-file "config-defuns" "\
View the differences between current buffer and its associated file.

\(fn)" t nil)

(autoload 'my/revert-buffer-no-confirmation "config-defuns" "\
Invoke `revert-buffer' without the confirmation.

\(fn)" t nil)

(autoload 'my/kill-buffer-other-window "config-defuns" "\
Kill buffer in other window.

\(fn)" t nil)

(autoload 'my/swiper-region-or-current-word "config-defuns" "\
Run swiper on region or current word.

\(fn)" t nil)

(autoload 'my/counsel-rg "config-defuns" "\
Run `counsel-rg' in working directory or in INITIAL-DIRECTORY if non-nil.

\(fn &optional INITIAL-DIRECTORY)" t nil)

(autoload 'my/counsel-projectile-rg "config-defuns" "\
Run `counsel-rg' in the PROJECT-ROOT.

\(fn)" t nil)

(autoload 'my/eval-and-replace "config-defuns" "\
Replace the preceding sexp with its value.

\(fn)" t nil)

(autoload 'my/balance-windows "config-defuns" "\
Call `balance-windows' while ignoring ARGS.

\(fn &rest ARGS)" nil nil)

(autoload 'my/indent-yanked-region "config-defuns" "\
Indent region in major modes that don't mind indentation, ignoring ARGS.

\(fn &rest ARGS)" nil nil)

(autoload 'my/colorize-compilation-buffer "config-defuns" "\
Colorize complication buffer.

\(fn)" nil nil)

(autoload 'my/rotate-windows "config-defuns" "\
Rotate your windows.

\(fn)" t nil)

(autoload 'my/toggle-comment-line-or-region "config-defuns" "\
Toggle comment on line if no region is active, or comment region.

\(fn)" t nil)

(autoload 'my/increment-number-at-point "config-defuns" "\
Increment number at point by N.

\(fn N)" t nil)

(autoload 'my/decrement-number-at-point "config-defuns" "\
Decrement number at point by N.

\(fn N)" t nil)

(autoload 'my/goto-line-with-feedback "config-defuns" "\
Show line numbers temporarily, while prompting for the line number input.

\(fn)" t nil)

(autoload 'my/projectile-disable-remove-current-project "config-defuns" "\
Call ORIG-FUN with ARGS while replacing projectile--remove-current-project with identity function.

\(fn ORIG-FUN &rest ARGS)" nil nil)

(autoload 'my/narrow-or-widen-dwim "config-defuns" "\
Widen if buffer is narrowed, narrow-dwim otherwise.
Dwim means: region, org-src-block, org-subtree, or
defun, whichever applies first.  Narrowing to
org-src-block actually calls `org-edit-src-code'.

With prefix P, don't widen, just narrow even if buffer
is already narrowed.

Taken from http://endlessparentheses.com/emacs-narrow-or-widen-dwim.html

\(fn P)" t nil)

(autoload 'my/git-messenger-show-with-magit "config-defuns" "\
Use magit to show the commit of git-messenger.

\(fn)" t nil)

(autoload 'my/git-messenger-link-commit "config-defuns" "\
Get a link to the commit of git-messenger.

\(fn)" t nil)

(autoload 'my/git-link-homepage-in-browser "config-defuns" "\
Open the repository homepage in the browser.

\(fn)" t nil)

(autoload 'my/show-buffer-file-name "config-defuns" "\
Show the full path to the current file in the minibuffer.

\(fn)" t nil)

(autoload 'my/indent-line-or-region "config-defuns" "\
Indent region if it is active, otherwise indent line.

\(fn)" t nil)

(autoload 'my/package-upgrade-all "config-defuns" "\
.

\(fn)" t nil)

(autoload 'my/maybe-clang-format-buffer "config-defuns" "\
Format buffer if project has .clang-format file.

\(fn)" t nil)

(autoload 'my/insert-default-ctor "config-defuns" "\
Insert default constructor.

\(fn)" t nil)

(autoload 'my/insert-virtual-dtor "config-defuns" "\
Insert virtual destructor.

\(fn)" t nil)

(autoload 'my/insert-copy-ctor "config-defuns" "\
Insert copy constructor.

\(fn)" t nil)

(autoload 'my/insert-copy-assignment-operator "config-defuns" "\
Insert copy assignment operator.

\(fn)" t nil)

(autoload 'my/insert-move-ctor "config-defuns" "\
Insert move constructor.

\(fn)" t nil)

(autoload 'my/insert-move-assignment-operator "config-defuns" "\
Insert move assignment operator.

\(fn)" t nil)

(autoload 'my/insert-all-special "config-defuns" "\
Insert all special methods.

\(fn)" t nil)

(autoload 'my/find-user-init-file "config-defuns" "\
Run `find-file' on `user-init-file'.

\(fn)" t nil)

(autoload 'my/magit-status-config-project "config-defuns" "\
Open `magit-status` for the configuration project.

\(fn)" t nil)

(autoload 'my/python-insert-import "config-defuns" "\
Move current line, which should be an import statement, to the beginning of the file and run isort.

\(fn)" t nil)

(autoload 'my/org-mode-hook "config-defuns" "\
.

\(fn)" nil nil)

(autoload 'my/prog-mode-hook "config-defuns" "\
.

\(fn)" nil nil)

(autoload 'my/c-mode-common-hook "config-defuns" "\
.

\(fn)" nil nil)

(autoload 'my/pyvenv-activate "config-defuns" "\
.

\(fn)" nil nil)

(autoload 'my/company-anaconda-setup "config-defuns" "\
.

\(fn)" nil nil)

(autoload 'my/projectile-kill-buffers "config-defuns" "\
Kill all buffers from current project.

\(fn)" t nil)

(autoload 'my/pylint-ignore-errors-at-point "config-defuns" "\
Add a pylint ignore comment for the error on the current line.

\(fn)" t nil)

(autoload 'my/mc-prompt-once "config-defuns" "\
Advice for commands with bad support for multiple cursors.  Call FN with ARGS interactively only once.

\(fn FN &rest ARGS)" nil nil)

(autoload 'my/update-file-autoloads "config-defuns" "\
Update current file's autoloads and save.

\(fn)" nil nil)

(autoload 'my/python-shift-region "config-defuns" "\
Advice around Python shift functions.
FN is the original function.  START is set interactivly to
the line in which the beginning of the mark is found.  END and
COUNT are set in the same way as the original function.

\(fn FN START END &optional COUNT)" t nil)

(autoload 'my/scroll-up "config-defuns" "\
Scroll up N lines.

\(fn N)" t nil)

(autoload 'my/scroll-down "config-defuns" "\
Scroll down N lines.

\(fn N)" t nil)

;;;***

(provide 'config-defuns-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; config-defuns-autoloads.el ends here
