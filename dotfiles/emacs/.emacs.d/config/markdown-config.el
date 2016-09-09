;;**************************************
;;;; MARKDOWN MODE CONFIG  **
(use-package markdown-mode
  :config
  (progn
    (define-key markdown-mode-map (kbd "C-c C-v") 'markdown-preview)))
