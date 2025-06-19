;; GOTTA GO FAST!!!
(gcmh-mode)

;; BACKUP SETTINGS
(setq backup-directory-alist '(("." .  "~/.emacs.d/backups"))
      backup-by-copying t)

;; PACKAGE SETTINGS
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; FOREGROUND SETTINGS
(load-theme 'modus-vivendi)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq-default show-paren-delay 0)
(show-paren-mode)
(setq c-default-style "linux")
(blink-cursor-mode -1)
(setq-default display-fill-column-indicator-column 80)
(global-display-fill-column-indicator-mode 80)

;; GENERAL KEY SETTINGS
(setq backward-delete-char-untabify-method 'hungry)

(use-package evil
  :config (evil-mode 1))

;; LSP AND COMPLETION SETTINGS
(use-package company
  :hook (eglot-managed-mode . company-mode)
  :hook (eglot-managed-mode . (lambda () (eglot-inlay-hints-mode -1))))

(use-package eglot
  :hook (c-mode-common . eglot-ensure))

;; DIRED SETTINGS
(use-package dired-sidebar
  :commands (dired-sidebar-toggle-sidebar))

(keymap-global-set "C-'" 'dired-sidebar-toggle-sidebar)

(setq dired-omit-files
      (rx (seq bol "." (not (any ".")))))

(add-hook 'dired-mode-hook
	  (lambda ()
	    (keymap-local-set "C-h" 'dired-omit-mode)))

;; TERMINAL SETTING
(defun term () (interactive)
       (split-window-below 20 (selected-window))
       (eshell))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(global-display-line-numbers-mode t)
 '(highlight-indent-guides-method 'column)
 '(inhibit-startup-screen t)
 '(markdown-command "pandoc")
 '(package-selected-packages
   '(company dashboard dired-sidebar eglot-inactive-regions evil gcmh
	     markdown-mode yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
