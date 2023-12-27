;;; manjis-c --- C & C++ layer
;;; Commentary:
"C & C++ layer"
;;; Code:

(use-package cc-mode)
;; (use-package semantic
;;   :config
;;   (global-semantic-idle-scheduler-mode))

;; cmake
(use-package cmake-mode)

(use-package ccls
  :if (eq manjis-lsp 'lsp-mode)
  :hook ((c-mode c++-mode objc-mode) . (lambda () (require 'ccls) (lsp)))
  :config (setq ccls-executable "/usr/bin/ccls"))

(provide 'manjis-c)

;;; manjis-c.el ends here
