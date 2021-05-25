(defconst emacs-start-time (current-time))
(setq gc-cons-threshold 402653184 gc-cons-percentage 0.6)

(menu-bar-mode -1)


(when (window-system) 
    (require 'server)
    (if (not (server-running-p))
        (server-start))
)

(when (window-system)
  (set-frame-size (selected-frame) 170 50)
  (set-frame-position (selected-frame) 50 650)
)

(load "~/.emacs.d/settings.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/bindings.el")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-minibuffer-history-key "M-p")
 '(package-selected-packages
   '(helm-ag helm-rg all-the-icons rainbow-delimiters evil-mc key-chord telephone-line general which-key swiper evil-collection evil helm use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40")))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40") :weight light))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "gold"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "forest green"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark turquoise"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "cornflower blue"))))
 '(telephone-line-accent-active ((t (:inherit mode-line :background "grey11" :foreground "dim gray"))))
 '(telephone-line-accent-inactive ((t (:inherit mode-line-inactive :background "grey11" :foreground "dim gray"))))
 '(telephone-line-projectile ((t (:inherit mode-line :weight bold)))))
