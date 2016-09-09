;;**************************************
;;;; EXEC PATH FROM SHELL **
(use-package exec-path-from-shell
  :init
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))
;;**************************************
(provide 'exec-path-from-shell)
