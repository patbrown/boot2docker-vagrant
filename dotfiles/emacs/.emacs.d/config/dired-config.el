(use-package dired+
  :defer dired+
  :init
  (require 'dired)
  ;; Auto refresh buffers
  (global-auto-revert-mode 1)
  ;; Also auto refresh dired, but be quiet about it
  (setq global-auto-revert-non-file-buffers t)
  (setq auto-revert-verbose nil)
  (setq dired-recursive-copies (quote always))
  (setq dired-recursive-deletes (quote top))
  (setq dired-dwim-target t)
  (setq wdired-allow-to-change-permissions t)
  ;; Dired Map
  (define-key dired-mode-map (kbd "C-a") 'dired-back-to-start-of-files)
  (define-key dired-mode-map (kbd "k") 'dired-do-delete)
  (define-key dired-mode-map (kbd "<return>") 'dired-find-alternate-file)
  (define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))
  (define-key dired-mode-map (vector 'remap 'end-of-buffer) 'dired-jump-to-bottom)
  (define-key dired-mode-map (vector 'remap 'smart-down) 'dired-jump-to-bottom)

  ;; Dired Functions
  (defun dired-back-to-start-of-files ()
    (interactive)
    (backward-char (- (current-column) 2)))
  (defun dired-back-to-top ()
    (interactive)
    (beginning-of-buffer)
    (dired-next-line 4))
  (define-key dired-mode-map (vector 'remap 'beginning-of-buffer) 'dired-back-to-top)
  (define-key dired-mode-map (vector 'remap 'smart-up) 'dired-back-to-top)
  (defun dired-jump-to-bottom ()
    (interactive)
    (end-of-buffer)
    (dired-next-line -1))
  (defun open-file ()
    "Open the current file or dired marked files in external app."
    (interactive)
    (let ( doIt
           (myFileList
            (cond
             ((string-equal major-mode "dired-mode") (dired-get-marked-files))
             (t (list (buffer-file-name))))))
      (setq doIt (if (<= (length myFileList) 10)
                     t
                   (y-or-n-p "Open more than 10 files?")))
      (when doIt
        (cond
         ((string-equal system-type "darwin")
          (mapc (lambda (fPath) (shell-command (format "open \"%s\"" fPath)))  myFileList))
         ((string-equal system-type "gnu/linux")
          (mapc (lambda (fPath) (let ((process-connection-type nil)) (start-process "" nil "xdg-open" fPath))) myFileList))))))
  (defun show-in-finder ()
    "Show current file in desktop (OS's file manager)."
    (interactive)
    (cond
     ((string-equal system-type "darwin") (shell-command "open ."))
     ((string-equal system-type "gnu/linux")
      (let ((process-connection-type nil)) (start-process "" nil "xdg-open" "."))
      )))
  )
(setq dired-use-ls-dired nil)
;;^^**********************************^^
(provide 'dired-config)
