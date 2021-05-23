(defconst emacs-start-time (current-time))
(setq gc-cons-threshold 402653184 gc-cons-percentage 0.6)


(when (window-system) 
    (require 'server)
    (if (not (server-running-p))
        (server-start))
)

(when (window-system)
  (set-frame-size (selected-frame) 170 50)
  (set-frame-position (selected-frame) 50 600)
)


(load "~/.emacs.d/settings.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/bindings.el")

(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(multiple-cursors edit-indirect counsel-projectile projectile yasnippet which-key use-package telephone-line rustic magit lsp-ui key-chord general flycheck evil-collection doom-themes counsel company amx all-the-icons-ivy afternoon-theme ace-window ace-jump-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
