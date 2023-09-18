;; Store backup files in special folder
(setq backup-directory-alist `(("." . "C:/Users/sizov/Documents/emacs-backups")))

;; Set default font to Iosevka 13
(set-frame-font "Iosevka 13" nil t)

;;; org-mode ;;;
;; Hide symbols like /.../ for italic or *...* for bold, etc.
(setq org-hide-emphasis-markers t)

;; Enable variable-pitch-mode for org-mode and set font to Iosevka Etoile
;; Copied from https://zzamboni.org/post/beautifying-org-mode-in-emacs/
(custom-theme-set-faces
 'user
 '(variable-pitch ((t (:family "Iosevka Etoile" :height 140 :weight regular))))
 '(fixed-pitch ((t (:family "Iosevka" :height 130)))))
(add-hook 'org-mode-hook 'varialbe-pitch-mode)
;; Enable visual-line-mode for org buffers
(add-hook 'org-mode-hook 'visual-line-mode)

;; Describe custom fonts
;; Also from  https://zzamboni.org/post/beautifying-org-mode-in-emacs/
;; Need some tinkering
(custom-theme-set-faces
 'user
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-link ((t (:forefround "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch))))))


