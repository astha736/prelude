;; Standard package.el + MELPA setup
;; (See also: https://github.com/milkypostman/melpa#usage)
;; (require 'use-package)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (package-initialize)

;; multiple-cursors requires cl-lib
(prelude-require-packages '(elpy jedi cl-lib multiple-cursors sphinx-doc))
(require 'multiple-cursors)

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

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
