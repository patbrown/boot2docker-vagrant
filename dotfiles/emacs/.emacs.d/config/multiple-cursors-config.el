;;**************************************
;;;; Multiple Cursors **
(use-package multiple-cursors
  :config
  (global-set-key (kbd "C-c m l") 'mc/edit-lines)
  (global-set-key (kbd "C-c m a") 'mc/edit-beginnings-of-lines)
  (global-set-key (kbd "C-c m e") 'mc/edit-ends-of-lines)
  (global-set-key (kbd "C-c m n") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-c m p") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c m m") 'mc/mark-all-dwim)
  (global-set-key (kbd "C-c n #") 'mc/insert-numbers)
  )

;;^^**********************************^^
(provide 'multiple-cursors-config)
