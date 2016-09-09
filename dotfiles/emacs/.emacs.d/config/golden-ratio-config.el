;;**************************************
;;;; GOLDEN RATIO **
(use-package golden-ratio
  :diminish golden-ratio-mode
  :config
  (golden-ratio-mode 1)
  (setq golden-ratio-auto-scale t)
  ;; something to work with ace-window
  (add-to-list 'golden-ratio-extra-commands 'aw--callback)
  )
;;**************************************
(provide 'golden-ratio-config)
