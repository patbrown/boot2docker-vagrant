;;**************************************
;;;; MINIBUFFER SETUP **
(use-package miniedit
  :defer t
  :ensure t
  :commands minibuffer-edit
  :init (miniedit-install))
;;**************************************
(provide 'minibuffer-config)
