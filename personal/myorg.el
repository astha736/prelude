(setq org-hide-emphasis-markers t)

(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                            (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(prelude-require-packages '(org-bullets))
(require 'org-bullets)

;; ;; (prelude-require-packages '(org-bullets variable-pitch visual-line))
;; ;; (require 'org-bullets variable-pitch visual-line)

(add-hook 'org-mode-hook  (lambda () (org-bullets-mode 1)))

;; 
;; ;; (use-package org-bullets
;; ;;     :ensure t
;; ;;     :config
;; ;;     (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
;; 
;; 
;; (let* ((variable-tuple
;;         (cond ((x-list-fonts "ETBembo")         '(:font "ETBembo"))
;;                 ((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
;;                 ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
;;                 ((x-list-fonts "Verdana")         '(:font "Verdana"))
;;                 ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
;;                 (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
;;         (base-font-color     (face-foreground 'default nil 'default))
;;         (headline           `(:inherit default :weight bold :foreground ,base-font-color)))
;; 
;; (custom-theme-set-faces
;;     'user
;;     `(org-level-8 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-7 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-6 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-5 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
;;     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
;;     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
;;     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
;;     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))
;; 
;; (custom-theme-set-faces
;;     'user
;;     '(variable-pitch ((t (:family "ETBembo" :height 90 :weight thin))))
;;     '(fixed-pitch ((t ( :family "Fira Code Retina" :height 80)))))
;; 
;; ;; enable variable-pitch-mode automatically for org
;; ;; buffers by setting up a hook like this
;; (add-hook 'org-mode-hook 'variable-pitch-mode)
;; 
;; ;; enabled, long lines will flow and adjust to the width of the window
;; (add-hook 'org-mode-hook 'visual-line-mode)
;; 
;; 
;; (custom-theme-set-faces
;;     'user
;;     '(org-block ((t (:inherit fixed-pitch))))
;;     '(org-code ((t (:inherit (shadow fixed-pitch)))))
;;     '(org-document-info ((t (:foreground "dark orange"))))
;;     '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
;;     '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
;;     '(org-link ((t (:foreground "royal blue" :underline t))))
;;     '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;     '(org-property-value ((t (:inherit fixed-pitch))) t)
;;     '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;     '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
;;     '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
;;     '(org-verbatim ((t (:inherit (shadow fixed-pitch))))))


;; ;;  (set-language-environment 'utf-8)                                                           
;; ;;  (setq locale-coding-system 'utf-8)                                                          
;; ;;  
;; ;;  ;; set the default encoding system                                                          
;; ;;  (prefer-coding-system 'utf-8)                                                               
;; ;;  (setq default-file-name-coding-system 'utf-8)                                               
;; ;;  (set-default-coding-systems 'utf-8)                                                         
;; ;;  (set-terminal-coding-system 'utf-8)                                                         
;; ;;  (set-keyboard-coding-system 'utf-8)                                                         
;; ;;  
;; ;;  ;; Treat clipboard input as UTF-8 string first; compound text next, etc.                    
;; ;;  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)) 
