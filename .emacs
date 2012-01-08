;;fullscreen
(interactive)
(set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth))
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

;;viper-mode
(setq viper-mode t)
(require `viper)

;;hiden tool-bar
(tool-bar-mode)

;;ecb
(add-to-list 'load-path "~/.emacs.d/ecb/")
(require 'ecb)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;markdown-mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode/")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))
