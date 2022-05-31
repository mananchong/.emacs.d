;; lisp editing configurations
;; by nanchong ma
(use-package projectile
  :ensure t
  ;; :pin melpa-stable
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))
(provide 'init-projectile)
;; init-projectile ends here
