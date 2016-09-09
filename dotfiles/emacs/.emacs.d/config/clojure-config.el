;;**************************************
;;;; CLOJURE MODE **
(use-package cider
  :diminish "CDR"
  :config
  (require 'clojure-mode-extra-font-locking)
  (require 'cider-eval-sexp-fu)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-mode-hook #'subword-mode)
  (add-hook 'cider-repl-mode-hook #'subword-mode)
  (add-hook 'cider-repl-mode-hook #'company-mode)
  (add-hook 'cider-mode-hook #'company-mode)
  (setq nrepl-log-messages t)
  (setq nrepl-hide-special-buffers t)
  (setq cider-repl-pop-to-buffer-on-connect nil)
  (setq cider-show-error-buffer nil)
  (setq cider-auto-select-error-buffer nil)
  (setq nrepl-buffer-name-show-port t)
  (setq cider-repl-display-in-current-window t)
  (setq cider-prompt-save-file-on-load nil)
  (setq cider-repl-wrap-history t)
  (setq cider-repl-history-size 2000)
  (setq cider-ovelays-use-font-lock t)
  (setq cider-repl-display-help-banner nil)
  ;; Clojure Mode Functions
  (eval-after-load 'clojure-mode
    '(font-lock-add-keywords
      'clojure-mode `(("(\\(fn\\)[\[[:space:]]"
                       (0 (progn (compose-region (match-beginning 1)
                                                 (match-end 1) "λ")
                                 nil))))))
  (eval-after-load 'clojure-mode
    '(font-lock-add-keywords
      'clojure-mode `(("\\(#\\)("
                       (0 (progn (compose-region (match-beginning 1)
                                                 (match-end 1) "ƒ")
                                 nil))))))
  (eval-after-load 'clojure-mode
    '(font-lock-add-keywords
      'clojure-mode `(("\\(#\\){"
                       (0 (progn (compose-region (match-beginning 1)
                                                 (match-end 1) "∈")
                                 nil))))))
  (eval-after-load 'clojure-mode
    '(font-lock-add-keywords
      'clojure-mode `(("\\(#\\)_"
                       (0 (progn (compose-region (match-beginning 1)
                                                 (match-end 1) "#")
                                 nil))))))

  (defun cider-repl-command (cmd)
    "Execute commands on the cider repl"
    (cider-switch-to-repl-buffer)
    (goto-char (point-max))
    (insert cmd)
    (cider-repl-return)
    (cider-switch-to-last-clojure-buffer))

  (defun cider-repl-reset ()
    "Assumes reloaded + tools.namespace is used to reload everything"
    (interactive)
    (save-some-buffers)
    (cider-repl-command "(user/reset)"))

  (defun cider-reset-test-run-tests ()
    (interactive)
    (cider-repl-reset)
    (cider-test-run-tests))

  (define-key cider-mode-map (kbd "C-c r") 'cider-repl-reset)
  (define-key cider-mode-map (kbd "C-c .") 'cider-reset-test-run-tests)

  )

;; align-cljlet
(use-package align-cljlet
  :init
  (add-hook 'clojure-mode-hook
            '(lambda ()
               (define-key clojure-mode-map "\C-c\C-y" 'align-cljlet)))
  )

;;^^**********************************^^
(provide 'clojure-config)
