;;**************************************
;;;; BROWSE KILL RING **
(use-package browse-kill-ring
  :init
  (global-set-key (kbd "C-c C-y") 'browse-kill-ring)
  )
;;**************************************

;;**************************************
;;;; EASY KILL **
(use-package easy-kill
  :config
  (global-set-key [remap kill-ring-save] 'easy-kill)
  )
;;**************************************
(provide 'kill-ring-config)
