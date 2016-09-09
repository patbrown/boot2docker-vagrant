
;;**************************************
;;;; PAREDIT **
;; Paredit Settings
(use-package paredit
  :config
  (autoload 'enable-paredit-mode "paredit")
  (defun maybe-map-paredit-newline ()
    (unless (or (memq major-mode '(inferior-emacs-lisp-mode cider-repl-mode))
                (minibufferp))
      (local-set-key (kbd "RET") 'paredit-newline)))
  (add-hook 'paredit-mode-hook 'maybe-map-paredit-newline)
  (dolist (hook (list
                 'cider-mode-hook
                 'cider-repl-mode-hook
                 'clojure-mode-hook
                 'csharp-mode-hook 
                 'emacs-lisp-mode-hook
                 'inf-clojure-mode-hook
                 'inf-clojure-minor-mode-hook
                 'lisp-interaction-mode-hook
                 'lisp-mode-hook
                 'monroe-mode-hook
                 'omnisharp-mode-hook
                 'sh-mode-hook
                 ))
    (add-hook hook '(lambda () (paredit-mode 1)))
    )
  )

(use-package paredit-everywhere
  :config
  (add-hook 'prog-mode-hook 'paredit-everywhere-mode)
  (add-hook 'css-mode-hook 'paredit-everywhere-mode)
  )
;;^^**********************************^^
(provide 'paredit-config)
