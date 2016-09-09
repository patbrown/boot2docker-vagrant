;;**************************************
;;;; GO MODE **
(use-package go-mode
  :init
  (setenv "GOPATH" "/Users/p/.go")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook
   'go-mode-hook (lambda () (setq indent-tabs-mode t)))
  (add-hook 'go-mode-hook '(lambda ()
                             (local-set-key (kbd "C-c C-a") 'go-import-add)))
  (add-hook 'go-mode-hook '(lambda ()
                             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
  (add-hook 'go-mode-hook '(lambda ()
                             (local-set-key (kbd "C-c C-i") 'go-goto-imports)))
  (add-hook 'go-mode-hook '(lambda ()
                             (local-set-key (kbd "C-c C-f") 'gofmt)))
  (add-hook 'go-mode-hook '(lambda ()
                             (local-set-key (kbd "C-c C-v") 'godoc)))
  )

;;**************************************
(provide 'go-mode-config)
