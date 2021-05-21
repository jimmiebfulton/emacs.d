(when (not (string-equal (terminal-name) "/dev/tty"))
    (require 'server)
    (if (not (server-running-p))
        (server-start))
    (mac-auto-operator-composition-mode)
)

(setq mac-command-modifier 'control)
(setq mac-right-command-modifier 'super)
(setq mac-option-modifier 'meta)

(menu-bar-mode -1)

;; UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; Enable Font Ligatures
(set-face-attribute 'default nil
                    :family "JetBrainsMonoMedium Nerd Font"
                    :height 140
                    :weight 'normal
                    :width 'normal)



;; Don't create backups
(setq make-backup-files nil)
(setq delete-old-versions -1 )		; delete excess backup versions silently
(setq version-control t )		; use version control
(setq vc-make-backup-files t )		; make backups file even when in version controlled dir
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")) ) ; which directory to put backups file
(setq vc-follow-symlinks t )				       ; don't ask for confirmation when opening symlinked file
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)) ) ;transform backups file name
(setq inhibit-startup-screen t )	; inhibit useless and old-school startup screen
(setq ring-bell-function 'ignore )	; silent bell when you make a mistake
(setq sentence-end-double-space nil)	; sentence SHOULD end with only a point.

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/bindings.el")
(load "~/.emacs.d/functions.el")

(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(edit-indirect counsel-projectile projectile yasnippet which-key use-package telephone-line rustic magit lsp-ui key-chord general flycheck evil-collection doom-themes counsel company amx all-the-icons-ivy afternoon-theme ace-window ace-jump-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
