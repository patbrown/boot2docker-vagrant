;;**************************************
;;;;  REGISTERS **
(defvar refile-map (make-sparse-keymap))

(defmacro defregister (key file)
  `(progn
     (set-register ,key (cons 'file ,file))
     (define-key refile-map
       (char-to-string ,key)
       (lambda (prefix)
         (interactive "p")
         (let ((org-refile-targets '(((,file) :maxlevel . 6)))
               (current-prefix-arg (or current-prefix-arg '(4))))
           (call-interactively 'org-refile))))))

(defregister ?i "~/.emacs.d/init.el")
(defregister ?C "~/.emacs.d/Cask")
(defregister ?c "~/.emacs.d/config")
(defregister ?D "~/Dropbox")
(defregister ?z "~/.zshrc")
;;**************************************
(provide 'registers-config)
