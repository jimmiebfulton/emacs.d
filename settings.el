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
(when (window-system)
    (mac-auto-operator-composition-mode)
    )
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

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
 
