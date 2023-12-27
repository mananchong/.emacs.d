;;; init-org --- Org config for manjis
;;; commentary:

;;; Code:
(use-package org
  :mode (("\\.org$" . org-mode))
  :bind
  (("C-c l" . org-store-link)
   ("C-c a" . org-agenda)
   ("C-c c" . org-capture))
  :config
  (org-babel-do-load-languages 'org-babel-load-languages '((R . t)))
  )

(provide 'init-org)
;;; init-org ends here
