;;**************************************
;;;; EXPAND REGION **
;; Expand Region Settings
(use-package expand-region
  :init
  (global-set-key (kbd "C-c =") 'er/expand-region)
  (global-set-key (kbd "C-c -") 'er/contract-region)
  )
;;^^**********************************^^
(provide 'expand-region-config)
