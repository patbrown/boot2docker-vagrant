;;**************************************
;;;; GENERAL SETTINGS **
;; user
(setq user-full-name "Patrick Brown"
      user-mail-address "contactpatbrown@gmail.com")
;; Startup
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq visible-bell t)
(setq inhibit-startup-echo-area-message "")
;(setq initial-buffer-choice "~/scratch/scratch.clj")
(setq gc-cons-threshold (* 20 1024 1024))

;; Window Configuration
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'tooltip-mode) (tooltip-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Enabled Functions
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-defun 'disabled nil)

;; Text Editing
(setq x-selct-enable-clipboard t)
(setq x-select-enable-primary t)
(setq save-interprogram-paste-before-kill t)
(setq x-select-enable-clipboard t
      x-select-enable-primary t)
(setq-default indent-tabs-mode nil)
;(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq sentence-end-double-space nil)
(setq vc-diff-switches '("-b" "-B" "-u"))
(setq vc-git-diff-switches nil)
;; Backup Files & Autosave
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; History
(setq savehist-file "~/.emacs.d/.savehist")
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

;; Buffer Navigation
(setq ns-pop-up-frames nil)
(size-indication-mode t)
(transient-mark-mode 1)
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq vc-follow-symlinks t)

;; General Look and Feel
(setq dired-use-ls-dired nil)
(setq display-time-24hr-format t)
(setq display-time-load-average t)
(display-time)
;;; (setq color-theme-is-global t)
(setq global-font-lock-mode 1)
(setq visible-bell t)
(if (fboundp 'fringe-mode)
    (fringe-mode -1))
(global-linum-mode 1)
(setq linum-format "%d  ")
(column-number-mode t)
(setq frame-title-format "%b")
(setq frame-title-format '((:eval default-directory)))
(show-paren-mode 1)
(visual-line-mode 1)
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333333")
;(set-face-foreground 'hl-line "#111111")
(require 'wc-mode)
(wc-mode t)

;; Text Encoding
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;^^**********************************^^
(provide 'general-config)
