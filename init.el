(when
	(load
	 (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(windmove-default-keybindings 'meta)

(cua-mode t)

(require 'ido)
(ido-mode 'both)

(set-default 'truncate-lines t)

(setq-default tab-width 4)

(column-number-mode 1)

(set-scroll-bar-mode nil)

(show-paren-mode t)

(setq inhibit-startup-message t)

(set-default 'frame-title-format 
             (list "" "emacs" "@" (getenv "HOST") " : %f" ))

(setq font-lock-maximum-decoration t)

(defun hide-toolbar()
  (tool-bar-mode 0))
(add-hook 'window-setup-hook 'hide-toolbar)

(color-theme-zenburn)

;coffee script
;(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")

;(require 'coffee-mode)

;(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
;(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)