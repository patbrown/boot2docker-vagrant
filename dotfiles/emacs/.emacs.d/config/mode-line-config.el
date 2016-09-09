;;**************************************
;;;; MODE LINE **

(use-package smart-mode-line
  :defer t
  :init
  (setq sml/name-width 40)
  (setq sml/mode-width 'full)
  (setq sml/shorten-directory t)
  (setq sml/shorten-modes t)
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'respectful)
  (sml/setup)
  (sml/apply-theme 'respectful)
  )

(defmacro rename-modeline (package-name mode new-name)
  `(eval-after-load ,package-name
     '(defadvice ,mode (after rename-modeline activate)
        (setq mode-name ,new-name))))

(rename-modeline "clojure-mode" clojure-mode "clj")
(rename-modeline "paredit-mode" paredit-mode "()")

;;**************************************
(provide 'mode-line-config)
