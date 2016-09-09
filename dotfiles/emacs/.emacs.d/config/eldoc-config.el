;;**************************************
;;;;  GLOBAL KEYBINDINGS **
(use-package "eldoc"
  :diminish eldoc-mode
  :commands turn-on-eldoc-mode
  :defer t
  :init
  (progn
    (add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
    (add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
    (add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
    (add-hook 'cider-mode-hook #'turn-on-eldoc-mode)
    (add-hook 'cider-repl-mode-hook #'turn-on-eldoc-mode)))
;;**************************************
(provide 'eldoc-config)
