;; ======= custom-set-variables =====================

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(desktop-save-mode t)
 '(diary-file "D:/work/my_organization/diary")
 '(display-time-mode t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (auto-complete)))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
;; ============ custom-set-faces ===========================
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight normal :height 105 :width normal)))))
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
