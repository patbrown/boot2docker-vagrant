;;**************************************
;;;; UNDO TREE **
;; Undo Tree Settings
(use-package undo-tree
  :defer t
  :ensure t
  :diminish undo-tree-mode
  :init
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))
;;^^**********************************^^
(provide 'undo-tree-config)
