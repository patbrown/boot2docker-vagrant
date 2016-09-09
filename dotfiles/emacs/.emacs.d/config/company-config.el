;;**************************************
;;;; COMPANY MODE **
;; Company Settings
(use-package company
  :diminish company-mode
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'prog-mode-hook 'company-mode)
  (global-company-mode)
  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-omnisharp))
  (setq omnisharp--server-executable-path "~/bin/omnisharp")
  (global-set-key (kbd "C-TAB") #'company-complete)
  (global-set-key (kbd "TAB") #'company-indent-or-complete-common))
;;^^**********************************^^
(provide 'company-config)
