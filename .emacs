;; General settings
(setq inhibit-startup-message t)
(global-display-line-numbers-mode t)
(column-number-mode t)
(show-paren-mode t)
(electric-pair-mode t)

;; Indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; File handling
(setq require-final-newline t)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; Backups - keep them out of working directories
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-saves/" t)))

;; Search
(setq case-fold-search t)

;; Useful keybindings
(global-set-key (kbd "C-x C-b") 'ibuffer)
