;;**************************************
;;;; GUIDE KEY **
(use-package guide-key
  :defer t
  :diminish guide-key-mode
  :init
  (progn
    (setq guide-key/guide-key-sequence '("C-x r" "C-x 4" "C-c" "C-c C-c" "C-c C-t" "C-c C-o"))
    (guide-key-mode 1)))  ; Enable guide-key-mode
;;**************************************
(provide 'guide-key-config)
