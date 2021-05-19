(defun visit-init() "Open init.el."
       (interactive)
       (find-file "~/.emacs.d/init.el")
       )

(defun visit-packages() "Open packages.el."
       (interactive)
       (find-file "~/.emacs.d/packages.el")
       )

(defun visit-bindings() "Open bindings.el."
       (interactive)
       (find-file "~/.emacs.d/bindings.el")
       )

(defun visit-functions() "Open functions.el"
       (interactive)
       (find-file "~/.emacs.d/functions.el")
       )

(defun visit-fish-config() "Open config.fish"
       (interactive)
       (find-file "~/.config/fish/config.fish")
       )

(defun toggle-maximize-buffer () "Maximize buffer."
  (interactive)
  (if (= 1 (length (window-list)))
      (jump-to-register '_)
    (progn
      (window-configuration-to-register '_)
      (delete-other-windows))))

