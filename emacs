;; ======= custom-set-variables =====================
(custom-set-variables

 ;;desktop mode enable
 '(desktop-save-mode t)
 
 ;; global-linum-mode
 '(global-linum-mode t)
 
 ;; disable startup screen
 '(inhibit-startup-screen t)

 ;; show paren-mode
 '(show-paren-mode t))

;; optional setting
'(diary-file "D:/work/my_organization/diary")

;; ============ custom-set-faces ===========================
(custom-set-faces
 ;; for better chinese character performance please usin  sarasa mono SC font
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight normal :height 105 :width normal))))
 )
;; ======== other settings =================================
 (prefer-coding-system 'utf-8)
 (set-default-coding-systems 'utf-8)
 ;;(set-language-environment 'utf-8)
 ;;(set-selection-coding-system 'utf-8)

;; ========== ELPA source setting ============================
 ;;1. ====USTC mirrors========================
 (setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                          ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                          ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                          ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))
 ;;2.  emacs china mirrors in https://elpa.emacs-china.org/
;; ======== auto complete =====================================
;; 1. on-line install auto-complete by M-x install-packages RET <package-name>, then
(ac-config-default)
;; 2. offline install
