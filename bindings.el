
(general-define-key
 :states '(normal visual insert emacs motion)
 :keymaps 'override
 :prefix "SPC"
 :non-normal-prefix "C-SPC"

 "SPC" '(counsel-M-x :which-key "M-x")
 "/"   '(swiper :which-key "swiper")

 "b"   '(:ignore t :which-key "buffer")
 "bs"  '(save-buffer :which-key "save")
 "bk"  '(kill-this-buffer :which-key "kill")
 "bK"  '(kill-buffer :which-key "kill other")
 "bo"  '(counsel-switch-buffer :which-key "switch")
 "bl"  '(ibuffer :which-key "list")

 "f"   '(:ignore t :which-key "find")
 "ff"  '(counsel-find-file :which-key "file")
 "fr"  '(counsel-recentf :which-key "recent")
 "fd"  '(counsel-dired :which-key "dir")
 "fp"  '(find-file-at-point :which-key "at point")
 "fci" 'visit-config
 "fci" '(visit-init :which-key "init")
 "fcb" '(visit-bindings :which-key "bindings")
 "fcp" '(visit-packages :which-key "packages")
 "fcf" '(visit-functions :which-key "functions")
 "fcs" '(visit-fish-config :which-key "fish")



 "w"   '(:ignore t :which-key "window")
 "w1"  '(toggle-maximize-buffer :which-key "toggle")
 "wk"  '(:ignore t :which-key "kill")
 "wkk" '(delete-window :which-key "this")
 "wko" '(ace-delete-window :which-key "other")
 "wkr" '(ace-delete-other-windows :which-key "retain")
 "wo"  '(ace-select-window :which-key "select")
 "ws"  '(:ignore t :which-key "split")
 "wsv" '(split-window-vertically :which-key "ver")
 "wsh" '(split-window-horizontally :which-key "hor")

 "e"   '(:ignore t :which-key "eval")
 "ee"  '(eval-expression :which-key "expr")
 "eb"  '(eval-buffer :which-key "buffer")
 "er"  '(eval-region :which-key "region")

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
 

 "h"   '(:ignore t :which-key "help")
 "hd"  '(:ignore t :which-key "describe")
 "hdf" 'counsel-describe-function
 "hdv" 'counsel-describe-variable
 "hdm" 'describe-mode
 "hdk" 'describe-key
 "hdb" 'describe-key-briefly
 "hs"  'find-function
 "hh"  'help
 
 )
