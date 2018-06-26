(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2)
 '(ns-pop-up-frames nil)
 '(org-agenda-files (quote ("~/Dropbox/orgs")))
 '(org-agenda-span (quote day))
 '(org-directory "~/Dropbox/orgs")
 '(org-refile-targets
   (quote
    (("links.org" :maxlevel . 1)
     ("personal.org" :maxlevel . 2)
     ("infinidat.org" :maxlevel . 2)
     ("blender.org" :maxlevel . 2))))
 '(org-super-agenda-groups (quote nil))
 '(org-super-agenda-mode t)
 '(org-todo-keyword-faces (quote (("DOING" . "yellow"))))
 '(org-todo-keywords (quote ((sequence "TODO" "DOING" "DONE"))))
 '(package-selected-packages
   (quote
    (racer flycheck-rust htmlize-after-hook jira-markup-mode atomic-chrome htmlize ox-reveal zencoding-mode yasnippet-snippets org-super-agenda 0blayout rtags nginx-mode flycheck-rtags company-rtags ivy-rtags py-autopep8 org org-bullets yasnippet langtool wrap-region whitespace-cleanup-mode which-key js2-mode visual-regexp web-mode undo-tree systemd syntax-subword restclient rainbow-delimiters counsel-projectile projectile popwin multiple-cursors markdown-mode git-link magit-gitflow magit highlight-parentheses highlight-symbol helpful gitignore-mode git-messenger eyebrowse expand-region emmet-mode easy-kill dumb-jump drag-stuff dockerfile-mode discover-my-major diff-hl company-statistics cmake-font-lock yaml-mode rust-mode toml-mode go-mode company-anaconda anaconda-mode pyvenv py-isort hy-mode clang-format irony-eldoc flycheck-irony company-irony irony suggest macrostep lispy flycheck counsel ivy-hydra ivy wgrep smex bln-mode beginend hydra mwim spaceline-all-the-icons window-numbering doom-themes use-package)))
 '(safe-local-variable-values
   (quote
    ((eval add-hook
           (quote write-contents-functions)
           (function my/update-file-autoloads))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282c34" :foreground "#bbc2cf" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco"))))
 '(org-level-3 ((t (:foreground "SteelBlue3" :weight bold))))
 '(org-level-4 ((t (:foreground "LightBlue3")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Other customizations
(require 'org-protocol)

(defun transform-square-brackets-to-round-ones(string-to-transform)
  "Transforms [ into ( and ] into ), other chars left unchanged."
  (concat
   (mapcar #'(lambda (c) (if (equal c ?[) ?\( (if (equal c ?]) ?\) c))) string-to-transform))
  )

(setq org-capture-templates
      '(

        ("p" "Protocol" entry (file+headline "~/Dropbox/orgs/links.org" "Inbox")
         "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?")

        ("L" "Protocol Link" entry (file+headline "~/Dropbox/orgs/links.org" "Inbox")
         "* %? [[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\nCaptured on: %U")

        ("j" "Journal" entry (file+datetree "journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")

        ("t" "Todo" entry (file "todo.org")
         "* TODO %?\n")
        ))


(setq org-priority-faces '((?A . (:foreground "OrangeRed3" :weight 'bold))
                           (?B . (:foreground "Orange2"))
                           (?C . (:foreground "DarkOliveGreen3"))))


(defun my/org-super-agenda-activate ()
  (interactive)
  (org-agenda nil "a"))

(use-package org-super-agenda
  :ensure
  :config
  (setq org-super-agenda-groups
        '(
          (:name "Important"
                 :priority "A")
          (:name "Doing"
                 :todo "DOING"
                 )
          (:name "Soon"
                 :tag "soon"
                 )
          (:name "Work"
                 :tag "work"
                 :tag "infinidat")
          ))
  (org-super-agenda-mode)
  :bind (("M-<f10>" . my/org-super-agenda-activate))
  )
