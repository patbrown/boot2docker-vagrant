;;**************************************
;;;; CSHARP MODE **
;; CSHARP Settings
(use-package csharp-mode 
  :init
  (add-hook 'csharp-mode-hook 'omnisharp-mode)
  )

(use-package omnisharp
  :init
  (defun my-csharp-mode ()
    (add-to-list 'company-backends 'company-omnisharp)
    (omnisharp-mode)
    (company-mode)
    (flycheck-mode)
    (turn-on-eldoc-mode))
  (setq omnisharp-company-do-template-completion t)
  (setq omnisharp-company-strip-trailing-brackets nil)
  (add-hook 'csharp-mode-hook 'my-csharp-mode)

  )
;;^^**********************************^^
(provide 'csharp-config)
