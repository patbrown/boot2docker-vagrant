;;**************************************
;;;; AGGRESSIVE INDENT **
;; Aggressive Indent Settings
(use-package aggressive-indent
  :init
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  (add-hook 'css-mode-hook #'aggressive-indent-mode)
  (add-hook 'cider-repl-mode-hook #'aggressive-indent-mode)
  (add-hook 'prog-mode-hook #'aggressive-indent-mode)
  )
;;^^**********************************^^
(provide 'aggressive-indent-config)
