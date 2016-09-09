;;**************************************
;;;; PAREDIT **
(use-package projectile
  :init
  (setq projectile-mode-line '(:eval (format " P[%s]" (projectile-project-name))))
  (add-hook 'clojure-mode-hook 'projectile-mode))
;;**************************************
(provide 'projectile-config)
