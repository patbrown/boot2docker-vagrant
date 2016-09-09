;;**************************************
;;;; RECENTF **
(use-package recentf
  :init
  (setq recentf-max-saved-items 200
        recentf-max-menu-items 15)
  (recentf-mode t)
  )
;;**************************************
(provide 'recentf-config)

(global-set-key (kbd "C-x C-r") 'ido-recentf-open)
