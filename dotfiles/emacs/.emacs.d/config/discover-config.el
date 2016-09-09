;;**************************************
;;;; DISCOVER **
(use-package discover
  :config
  (global-discover-mode 1)
  )
;;**************************************

;;**************************************
;;;; DISCOVER MY MAJOR **
(use-package discover-my-major
  :config
  (global-set-key (kbd "C-h C-m") 'discover-my-major)
  )
;;**************************************
(provide 'discover-config)
