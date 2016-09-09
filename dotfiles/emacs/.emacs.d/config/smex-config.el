;;**************************************
;;;; SMEX **
;; SMEX Settings
(use-package smex
  :init
  (smex-initialize)
  (setq smex-save-file "~/.emacs.d/.smex-items")
  (setq smex-prompt-string "=>")
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  (global-set-key (kbd "C-c C-c M-X") 'smex-show-unbound-commands)
  )
;;^^**********************************^^
(provide 'smex-config)
