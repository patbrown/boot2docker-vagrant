;;**************************************
;;;; EMAMUX **
(use-package emamux
  :init
  (global-set-key (kbd "C-c C-t s") 'emamux:send-command)
  (global-set-key (kbd "C-c C-t r") 'emamux:run-command)
  (global-set-key (kbd "C-c C-t e") 'emamux:run-last-command)
  (custom-set-variables
   '(emamux:completing-read-type 'ido))
  )
;;**************************************
(provide 'emamux-config)
