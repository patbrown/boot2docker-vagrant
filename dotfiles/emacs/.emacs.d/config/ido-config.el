;;**************************************
;;;; IDO MODE **
;; IDO Settings
(use-package ido
  :init
  (ido-mode t)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (setq ido-create-new-buffer 'always)
  (setq ido-file-extensions-order '(".clj" ".cljs" ".boot" ".cljx" ".el" ".js"))
  (setq ido-ignore-extensions t)
  )
;;^^**********************************^^

;;**************************************
;;;; FLX IDO **
(use-package flx-ido
  :init
  (flx-ido-mode 1)
  ;; disable ido faces to see flx highlights.
  (setq ido-enable-flex-matching t)
  (setq gc-cons-threshold 20000000))
;;**************************************

;;**************************************
;;;; IDO VERTICAL MODE **
(use-package ido-vertical-mode
  :init
  (ido-vertical-mode 1)
  (setq ido-vertical-show-count t)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)
  )
;;**************************************
(provide 'ido-config)
