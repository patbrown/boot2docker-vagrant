;;**************************************
;;;; ACE JUMP MODE **
(use-package ace-jump-mode
  :init
  (autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
  (define-key global-map (kbd "C-c SPC") 'ace-jump-mode) (setq ace-jump-mode-gray-background nil))

;;**************************************
(provide 'ace-jump-config)
