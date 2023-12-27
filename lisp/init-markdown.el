;;; init-markdown --- Markdown config for manjis
;;; commentary:

;;; Code:

(use-package markdown-mode
  :mode ("\\.md$" . markdown-mode)
  :hook (markdown-mode . auto-fill-mode)
    :bind (:map markdown-mode-map
              ("C-c ." . org-time-stamp)
        )
  :config
  (set-face-attribute 'markdown-code-face nil :inherit 'org-block)
  )


(provide 'init-markdown)
;;; init-markdown ends here
