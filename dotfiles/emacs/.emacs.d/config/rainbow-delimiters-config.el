;;**************************************
;;;;  RAINBOW DELIMITERS**
;;
(use-package rainbow-delimiters
  :init
  (progn (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
         (add-hook 'cider-mode-hook #'rainbow-delimiters-mode)
         (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
         )
  )
;;^^**********************************^^
(provide 'rainbow-delimiters-config)
