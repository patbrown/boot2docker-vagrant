(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(setq magit-last-seen-setup-instructions "1.4.0")
(setq max-lisp-eval-depth 10000)
(load "server")
(unless (server-running-p) (server-start))

;;**************************************
;;;; CASK SETUP **
;(cond ((string-equal system-type "darwin")   ; Mac OS X
;  (progn   (require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")))
; ((string-equal system-type "gnu/linux") ; linux
					;  (progn    (require 'cask "~/.cask/cask.el"))))
(require 'cask "~/.cask/cask.el")
(cask-initialize)
;;**************************************

;;**************************************
;;;; USE-PACKAGE SETUP **
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)
;;**************************************

;;**************************************
;;;; PALLET SETUP **
(require 'pallet)
(pallet-mode t)
                                        ;(pallet-install)
;;**************************************

;;**************************************
;;;; ADD PACKAGES **
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
(require 'ace-jump-config)
(require 'ace-jump-zap-config)
(require 'aggressive-indent-config)
(require 'automode-config)
(require 'clojure-config)
(require 'company-config)
(require 'csharp-config)
(require 'dired-config)
(require 'discover-config)
(require 'dockerfile-config)
(require 'eldoc-config)
(require 'emamux-config)
(require 'exec-path-from-shell)
(require 'expand-region-config)
(require 'find-dired-config)
(require 'general-config)
(require 'go-mode-config)
(require 'golden-ratio-config)
(require 'guide-key-config)
(require 'hooks-config)
(require 'ido-config)
(require 'kbd-config)
(require 'kill-ring-config)
(require 'magit-config)
(require 'minibuffer-config)
(require 'fns)
(require 'mode-line-config)
(require 'mouse-config)
(require 'multiple-cursors-config)
(require 'neo-tree-config)
(require 'pallet)
(require 'paredit-config)
(require 'pbcopy)
(require 'phi-config)
(require 'projectile-config)
(require 'rainbow-delimiters-config)
(require 'recentf-config)
(require 'registers-config)
(require 'smex-config)
(require 'theme-config)
(require 'undo-tree-config)
(require 'windmove-config)
(require 'yaml-config)
;;**************************************


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:inherit nil :background "black" :box (:line-width 2 :color "grey45" :style released-button) :underline t :weight extra-bold)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-boot-parameters "cider repl -s wait")
 '(emamux:completing-read-type (quote ido))
 '(inf-clojure-program "boot repl")
 '(omnisharp--curl-executable-path (quote /usr/bin/curl))
 '(omnisharp-company-sort-results t)
 '(omnisharp-server-executable-path
   (quote /Users/p/bin/omnisharp-server/OmniSharp/bin/Debug/OmniSharp\.exe)))

(setq omnisharp-debug t)
;(setq cider-version "0.12.0-SNAPSHOT")


