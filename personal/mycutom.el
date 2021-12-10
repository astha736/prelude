;; Standard package.el + MELPA setup
;; (See also: https://github.com/milkypostman/melpa#usage)
;; (require 'use-package)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (package-initialize)

;; multiple-cursors requires cl-lib
(prelude-require-packages '(elpy jedi cl-lib multiple-cursors sphinx-doc))
(prelude-require-packages '(multiple-cursors))
;; (require 'multiple-cursors)

(elpy-enable)
(setq elpy-rpc-backend "jedi")
(setq elpy-rpc-python-command "python3")

(require 'sphinx-doc)
(add-hook 'python-mode-hook (lambda () (sphinx-doc-mode t)))

;; Standard Jedi.el setting
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)

;; Type:
;;     M-x package-install RET jedi RET
;;     M-x jedi:install-server RET
;; Then open Python file.

(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%a %b %e %Y>" . "<%a %b %e %Y %H:%M>"))


(setq-default multi-cursor-mode t)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-S-w C-S-w") 'mc/mark-all-dwim)
(global-set-key (kbd "C-S-e C-S-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(setq mc/cmds-to-run-for-all
      '(
        sp-backward-delete-char
        ))

;; set the ediff to open difference horizontally
;; by degfault windows are open vertically
(custom-set-variables
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-highlight-all-diffs t)
 '(ediff-auto-refine t)

)
