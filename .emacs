;;fullscreen
(interactive)
(set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth))
;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
;; CEDET component (including EIEIO) gets activated by another
;; package (Gnus, auth-source, ...).
(load-file "~/.emacs.d/cedet/cedet-devel-load.el")

;; Add further minor-modes to be enabled by semantic-mode.
;; See doc-string of `semantic-default-submodes' for other things
;; you can use here.
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
;;(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)

;; Enable Semantic
;;(semantic-mode 1)

;; Enable EDE (Project Management) features
;;(global-ede-mode 1)
         ; Enable template insertion menu

 ;;emacs-for-python
 (load-file "~/.emacs.d/emacs-for-python/epy-init.el")

 (add-to-list 'load-path "~/.emacs.d/emacs-for-python/") ;; tell where to load the various files
 (require 'epy-setup) ;; It will setup other loads, it is required!
 (require 'epy-python) ;; If you want the python facilities [optional]
 (require 'epy-completion) ;; If you want the autocompletion settings [optional]
 (require 'epy-editing) ;; For configurations related to editing [optional]
 (require 'epy-bindings) ;; For my suggested keybindings [optional]

;;python-mode
(add-to-list 'load-path "~/.emacs.d/python-mode/") 
(setq py-install-directory "~/.emacs.d/python-mode/")
(require 'python-mode)

;;color-theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/") 
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)

;;hiden tool-bar
(tool-bar-mode)


;;markdown-mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode/")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;cscope
(load-file "/usr/share/emacs/site-lisp/xcscope.el")
(require 'xcscope)

;;sbcl
(setq inferior-lisp-program "/usr/bin/sbcl");

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ede-project-directories (quote ("/home/simsun/starfish/fetch_epg")))
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;tabbar
(add-to-list 'load-path "~/.emacs.d/tabbar")
(require 'tabbar)
(tabbar-mode 1)

;;tabbar-ruler
(setq EmacsPortable-global-tabbar 't) ; 开启标签栏支持
(setq EmacsPortable-global-ruler 't) ; 开启全局标尺
;(setq EmacsPortable-popup-menu 't) ; 弹出式菜单.
(setq EmacsPortable-popup-toolbar 't) ; 弹出式工具栏
(add-to-list 'load-path "~/.emacs.d/tabbar-ruler.el")
(require 'tabbar-ruler)

