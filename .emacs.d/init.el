(gcmh-mode)

(setq backup-directory-alist '(("." . "backups"))
      backup-by-copying t)

(load-theme 'leuven)
(global-display-line-numbers-mode)

(setq-default show-paren-delay 0)
(show-paren-mode)

(setq c-default-style "linux")

(blink-cursor-mode -1)

(setq-default display-fill-column-indicator-column 80)

(global-display-fill-column-indicator-mode 80)

(setq backward-delete-char-untabify-method 'hungry)

(use-package company
  :hook (eglot-managed-mode . company-mode)
  :hook (eglot-managed-mode . (lambda () (eglot-inlay-hints-mode -1))))

(use-package eglot
  :hook (c-mode-common . eglot-ensure))
  
(use-package evil
  :config (evil-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages '(evil company yasnippet lua-mode go-mode gcmh)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )