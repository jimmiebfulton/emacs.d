;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (setq evil-emacs-state-modes (delq 'ibuffer-mode evil-emacs-state-modes))
  )

;; Ivy
(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (global-set-key (kbd "C-c C-r") 'ivy-resume))


(use-package company
  :ensure t
  :diminish ""
  :init
  ;; (add-hook 'prog-mode-hook 'company-mode)
  ;; (add-hook 'comint-mode-hook 'company-mode)
  :config
  (global-company-mode))


(use-package amx
  :ensure t
  :config
  (amx-mode 1)
  )


(use-package swiper
  :ensure t
  )

(use-package which-key
  :ensure t
  :init
  (setq which-key-idle-delay 0.5)
  :config
  (which-key-mode t)
  (which-key-setup-minibuffer))

(use-package counsel
  :ensure t
  :config
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history))

(use-package telephone-line
  :ensure t
  :config
  (telephone-line-mode 1))

(use-package general
  :ensure t
  :config
  (general-override-mode)
  )

;; Theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

(use-package all-the-icons-ivy
  :ensure t
  :config
  (all-the-icons-ivy-setup))

(use-package ace-window
  :ensure t
  :defer t
  )

(use-package ace-jump-mode
  :ensure t
  :defer t
  )

