;; package-initialize is called automatically if not found commented out
;; (package-initialize)

(require 'package)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;;(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Helm
(use-package helm
  :ensure t
  :demand t
  :config
  (helm-mode 1)
  (setq completion-styles '(flex))
  (setq helm-display-function 'helm-display-buffer-in-own-frame)
  (define-key helm-find-files-map (kbd "C-i") 'helm-ff-TAB)
  )

(use-package helm-rg
  :ensure t
  )

(use-package helm-ag
  :ensure t
  )


;; undo-tree
(use-package undo-tree
  :ensure t
  )

;; Evil
(use-package evil
  :ensure t
  :init
   (setq evil-want-keybinding nil)
   (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1)
  (global-undo-tree-mode)
  (add-hook 'evil-local-mode-hook 'turn-on-undo-tree-mode)
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)
		       
		       
)

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init)
  )

(use-package evil-escape
  :ensure t
  :init
  (setq evil-escape-key-sequence "jf")
  (setq-default evil-escape-delay 0.2)
  (setq evil-escape-unordered-key-sequence t)
  :config
  (evil-escape-mode)
  )

(use-package evil-mc
  :ensure t
  :config
  (global-evil-mc-mode 1)
  )

;; ;; Ivy
(use-package ivy
  :ensure t
  :config
  ;; (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (global-set-key (kbd "C-c C-r") 'ivy-resume))

;; (use-package amx
;;   :ensure t
;;   :config
;;   (amx-mode 1)
;;   )



(use-package company
  :ensure t
  :config
  (global-company-mode))



(use-package swiper
  :ensure t
  )

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1)
  )  

(use-package counsel
  :ensure t
  :config
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history))

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on)
  )

;; (use-package counsel-projectile
;;   :ensure t
;;   :defer t
;;   )

(use-package general
  :ensure t
  :config
  (general-override-mode)
  )

;; (when (window-system)
  (use-package telephone-line
    :ensure t
    :config
   (setq telephone-line-height 24
	   telephone-line-evil-use-short-tag nil)
    (telephone-line-mode 1)
    )
  ;; )

;; (when (window-system)

;;   (use-package all-the-icons-ivy
;;     :ensure t
;;     :config
;;     (all-the-icons-ivy-setup))
;; )

(use-package all-the-icons
  :ensure t
  )

(use-package ace-window
  :ensure t
  :defer t
  )

(use-package ace-jump-mode
  :ensure t
  :defer t
  )

;; Git
(use-package magit
  :ensure t
  )

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  )

(use-package neotree
  :ensure t
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq neo-smart-open t)
  (setq neo-autorefresh t)
  :config
  (global-set-key [f8] 'neotree-toggle)
  ;; (setq projectile-switch-project-action 'neotree-projectile-action)
  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
  (evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
  (evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
  (evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
  (evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)
  )

(defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      ;; (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root."))))
;; ;;
;; ;; Rust Support
;; ;;
;; ;; https://robert.kra.hn/posts/2021-02-07_rust-with-emacs/#rust-analyzer
;; ;;
(use-package rustic
  :ensure t
  :config
  (setq rustic-lsp-server 'rls)
  )

(use-package lsp-mode
  :ensure t
  )
;; (use-package rustic
;;   :ensure
;;   :bind (:map rustic-mode-map
;;               ("M-j" . lsp-ui-imenu)
;;               ("M-?" . lsp-find-references)
;;               ("C-c C-c l" . flycheck-list-errors)
;;               ("C-c C-c a" . lsp-execute-code-action)
;;               ("C-c C-c r" . lsp-rename)
;;               ("C-c C-c q" . lsp-workspace-restart)
;;               ("C-c C-c Q" . lsp-workspace-shutdown)
;;               ("C-c C-c s" . lsp-rust-analyzer-status))
;;   :config
;;   ;; uncomment for less flashiness
;;   ;; (setq lsp-eldoc-hook nil)
;;   ;; (setq lsp-enable-symbol-highlighting nil)
;;   ;; (setq lsp-signature-auto-activate nil)

;;   ;; comment to disable rustfmt on save
;;   (setq rustic-format-on-save t)
;;   (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))

;; (defun rk/rustic-mode-hook ()
;;   ;; so that run C-c C-c C-r works without having to confirm
;;   (setq-local buffer-save-without-query t))

;; (use-package lsp-mode
;;   :ensure
;;   :commands lsp
;;   :custom
;;   ;; what to use when checking on-save. "check" is default, I prefer clippy
;;   (lsp-rust-analyzer-cargo-watch-command "clippy")
;;   (lsp-eldoc-render-all t)
;;   (lsp-idle-delay 0.6)
;;   (lsp-rust-analyzer-server-display-inlay-hints t)
;;   :config
;;   (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;; (use-package lsp-ui
;;   :ensure
;;   :commands lsp-ui-mode
;;   :custom
;;   (lsp-ui-peek-always-show t)
;;   (lsp-ui-sideline-show-hover t)
;;   (lsp-ui-doc-enable nil))

;; (use-package yasnippet
;;   :ensure
;;   :config
;;   (yas-reload-all)
;;   (add-hook 'prog-mode-hook 'yas-minor-mode)
;;   (add-hook 'text-mode-hook 'yas-minor-mode))

(use-package flycheck
  :ensure t
  :config
  (flycheck-mode 1))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode)) 
  )

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (R . t)
   (shell . t)
   )
 )
