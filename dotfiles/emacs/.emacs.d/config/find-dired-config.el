;;**************************************
;;;; FIND DIRED **
(use-package find-dired
  :config
  (setq find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld"))
  )
;;**************************************
(provide 'find-dired-config)
