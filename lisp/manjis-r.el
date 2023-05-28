;;; manjis-r --- R config for manjis
;;; commentary:

;;; Code:

(use-package ess
  :ensure t
  ;; :bind (:map ess-mode-map
              ;; ("C-n" . ess-eval-line-and-step))
  :config
  (setq comint-scroll-to-bottom-on-input t)
  (setq comint-scroll-to-bottom-on-output t)
  (setq comint-move-point-for-output t)
  :mode ("\\.R\\'" . R-mode))

(provide 'manjis-r)
;;; manjis-r ends here
