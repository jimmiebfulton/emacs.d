(define-key minibuffer-local-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-ns-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-completion-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-must-match-map (kbd "<escape>") 'keyboard-escape-quit)
(define-key minibuffer-local-isearch-map (kbd "<escape>") 'keyboard-escape-quit)

(general-define-key
 :states '(normal)
 "/"   'swiper
 )

(general-define-key
 :states '(normal visual insert emacs motion)
 :keymaps 'override
 :prefix "SPC"
 :non-normal-prefix "C-SPC"

 ":"  '(helm-M-x :which-key "M-x")
 "u"   'universal-argument

 "f"   '(:ignore t :which-key "Find")
 "ff"  '(helm-find-files :which-key "File")
 "fr"  '(helm-recentf :which-key "Recent")
 "fc"  '(:ignore t :which-key "Configs")
 "fci" 'visit-config
 "fci" '(visit-init :which-key "init")
 "fcb" '(visit-bindings :which-key "bindings")
 "fcp" '(visit-packages :which-key "packages")
 "fcf" '(visit-functions :which-key "functions")
 "fcs" '(visit-settings :which-key "settings")
 "fcF" '(visit-fish-config :which-key "fish")

 "b"   '(:ignore t :which-key "Buffers")
 "b>"  '(next-buffer :which-key "next")
 "b<"  '(previous-buffer :which-key "previous")
 "bb"  '(helm-mini :which-key "Helm Mini")
 "bn"  '(evil-buffer-new :which-key "new")
 "bs"  '(save-buffer :which-key "save")
 "bk"  '(kill-this-buffer :which-key "kill")
 "bK"  '(kill-buffer :which-key "kill other")
 "bo"  '(helm-buffers-list :which-key "Switch")
 "bl"  '(ibuffer :which-key "List")
 "bw"  '(write-file :which-key "write")

 "e"   '(:ignore t :which-key "Eval")
 "ee"  '(eval-expression :which-key "expr")
 "eb"  '(eval-buffer :which-key "buffer")
 "er"  '(eval-region :which-key "region")

 "g"   '(:ignore t :which-key "Git")
 "gs"  '(magit-status :which-key "status")
 "gp"  '(magit-pull :which-key "pull")
 "gP"  '(magit-push :which-key "push")
 "gco" '(magit-checkout :which-key "checkout")
 "gcl" '(magit-clone :which-key "clone")
 "gci" '(magit-commit :which-key "commit")
 "gb"  '(magit-branch-or-checkout :which-key "branch")

 "h"   '(:ignore t :which-key "Help")
 "hd"  '(:ignore t :which-key "Describe")
 "hdf" 'counsel-describe-function
 "hdv" 'counsel-describe-variable
 "hdm" 'describe-mode
 "hdk" 'describe-key
 "hdb" 'describe-key-briefly
 "hs"  'find-function
 "hh"  'help

 "j"   '(:ignore t :which-key "jump")
 "jc"  '(ace-jump-char-mode :which-key "char")
 "jw"  '(ace-jump-word-mode :which-key "word")
 "jl"  '(ace-jump-line-mode :which-key "line")
 "jb"  '(ace-jump-mode-pop-mark :which-key "back")
 "j<"  '(evil-goto-first-line :which-key "head")
 "j>"  '(evil-goto-line :which-key "tail")
 "jf"  '(find-file-at-point :which-key "file")
 "jd"  '(dired-at-point :which-key "directory")
 "ju"  '(browse-url-at-point :which-key "url")

 "s"   '(:ignore t :which-key "Search")
 "sd"  '(helm-rg :which-key "Directory")
 "sg"  '(helm-google-suggest :which-key "Google")

 "t"   '(:ignore t :which-key "Text")
 "tc"  '(comment-or-uncomment-region :which-key "Comment Region")
 "tl"  '(comment-line :which-key "Comment Line")
 "ti"  '(indent-region :which-key "Indent Region")

 "w"   '(:ignore t :which-key "window")
 "ww"  '(toggle-maximize-buffer :which-key "toggle")
 "wk"  '(delete-window :which-key "kill this")
 "wK" '(ace-delete-window :which-key "kill other")
 "wr" '(ace-delete-other-windows :which-key "kill retain")
 "wo"  '(ace-select-window :which-key "select")
 "wv" '(split-window-vertically :which-key "split v")
 "wh" '(split-window-horizontally :which-key "split h")

 )

;; (general-define-key
;;  :states '(visual)
;;  :prefix "SPC"
;;  :non-normal-prefix "C-SPC"

;;  "t"   '(:ignore t :which-key "Text")
;;  "tc"  '(:ignore t :which-key "Comment")
;;  "tcc"  '(comment-or-uncomment-region :which-key "Region")
;; )
;; ;; (general-define-key
;;  :states '(normal visual insert emacs motion)
;;  :keymaps 'override
;;  :prefix "SPC"
;;  :non-normal-prefix "C-SPC"

;;  "SPC" '(counsel-M-x :which-key "M-x")
;;  "TAB" '(ace-select-window :which-key "window")

;;  "b"   '(:ignore t :which-key "buffer")
;;  "b>"  '(next-buffer :which-key "next")
;;  "b<"  '(previous-buffer :which-key "previous")
;;  "bn"  '(evil-buffer-new :which-key "new")
;;  "bs"  '(save-buffer :which-key "save")
;;  "bk"  '(kill-this-buffer :which-key "kill")
;;  "bK"  '(kill-buffer :which-key "kill other")
;;  "bo"  '(counsel-switch-buffer :which-key "switch")
;;  "bl"  '(ibuffer :which-key "list")
;;  "bw"  '(write-file :which-key "write")

;;  ;; This is the file menu
;;  "f"   '(:ignore t :which-key "find")
;;  "ff"  '(counsel-find-file :which-key "file")
;;  "fr"  '(counsel-recentf :which-key "recent")
;;  "fR"  '(counsel-buffer-or-recentf :which-key "buffer or recent")
;;  "fd"  '(counsel-dired :which-key "dir")
;;  "fp"  '(find-file-at-point :which-key "at point")
;;  "fci" 'visit-config
;;  "fci" '(visit-init :which-key "init")
;;  "fcb" '(visit-bindings :which-key "bindings")
;;  "fcp" '(visit-packages :which-key "packages")
;;  "fcf" '(visit-functions :which-key "functions")
;;  "fcs" '(visit-settings :which-key "settings")
;;  "fcF" '(visit-fish-config :which-key "fish")

;;  "g"   '(:ignore t :which-key "git")
;;  "gs"  '(magit-status :which-key "status")
;;  "gp"  '(magit-pull :which-key "pull")
;;  "gP"  '(magit-push :which-key "push")
;;  "gco" '(magit-checkout :which-key "checkout")
;;  "gcl" '(magit-clone :which-key "clone")
;;  "gci" '(magit-commit :which-key "commit")
;;  "gb"  '(magit-branch-or-checkout :which-key "branch")

;;  "p"   '(:ignore t :which-key "project")
;;  "pf"  'counsel-git
;;  "pp"  (general-simulate-key "C-c p" :which-key "projectile")
;;  "p/"  '(counsel-projectile-rg :which-key "rg")

;;  "w"   '(:ignore t :which-key "window")
;;  "ww"  '(toggle-maximize-buffer :which-key "toggle")
;;  "wk"  '(delete-window :which-key "kill this")
;;  "wK" '(ace-delete-window :which-key "kill other")
;;  "wr" '(ace-delete-other-windows :which-key "kill retain")
;;  "wo"  '(ace-select-window :which-key "select")
;;  "wv" '(split-window-vertically :which-key "split v")
;;  "wh" '(split-window-horizontally :which-key "split h")

;;  "e"   '(:ignore t :which-key "eval")
;;  "ee"  '(eval-expression :which-key "expr")
;;  "eb"  '(eval-buffer :which-key "buffer")
;;  "er"  '(eval-region :which-key "region")

;;  "j"   '(:ignore t :which-key "jump")
;;  "jc"  '(ace-jump-char-mode :which-key "char")
;;  "jw"  '(ace-jump-word-mode :which-key "word")
;;  "jl"  '(ace-jump-line-mode :which-key "line")
;;  "jb"  '(ace-jump-mode-pop-mark :which-key "back")
;;  "j<"  '(evil-goto-first-line :which-key "head")
;;  "j>"  '(evil-goto-line :which-key "tail")
;;  "jf"  '(find-file-at-point :which-key "file")
;;  "jd"  '(dired-at-point :which-key "directory")
;;  "ju"  '(browse-url-at-point :which-key "url")
 

;;  "h"   '(:ignore t :which-key "help")
;;  "hd"  '(:ignore t :which-key "describe")
;;  "hdf" 'counsel-describe-function
;;  "hdv" 'counsel-describe-variable
;;  "hdm" 'describe-mode
;;  "hdk" 'describe-key
;;  "hdb" 'describe-key-briefly
;;  "hs"  'find-function
;;  "hh"  'help
 
;;  )

;; ;;; esc quits
;; (defun minibuffer-keyboard-quit ()
;;   "Abort recursive edit.
;; In Delete Selection mode, if the mark is active, just deactivate it;
;; then it takes a second \\[keyboard-quit] to abort the minibuffer."
;;   (interactive)
;;   (if (and delete-selection-mode transient-mark-mode mark-active)
;;       (setq deactivate-mark  t)
;;     (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
;;     (abort-recursive-edit)))
;; (define-key evil-normal-state-map [escape] 'keyboard-quit)
;; (define-key evil-visual-state-map [escape] 'keyboard-quit)
;; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
;; (global-set-key [escape] 'keyboard-quit)

