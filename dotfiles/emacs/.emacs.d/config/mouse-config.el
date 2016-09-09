;;**************************************
;;;;  MOUSE **
;; OSX and Iterm mouse scrolling
(require 'mouse)
(xterm-mouse-mode t)
(setq mouse-wheel-scroll-amount '(0.01))
(global-set-key [mouse-4] '(lambda ()
                             (interactive)
                             (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                             (interactive)
                             (scroll-up 1)))
(global-set-key [S-mouse-1] 'ibuffer)
(global-set-key [C-S-mouse-1] 'list-register)
;; C+mup [mouse-21]
;; C+mdown [mouse-20]
;; S+mdown global-set-key [S-mouse-8]
;; S+mup global-set-key [S-mouse-9]
;; C+S+mdown global-set-key [mouse-24]
;; C+S+mup global-set-key [mouse-25]
(defun track-mouse (e))
(setq mouse-sel-mode t)
(setq mouse-yank-at-point t)
;;**************************************
(provide 'mouse-config)
