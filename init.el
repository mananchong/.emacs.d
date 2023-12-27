;;; manjis's emacs config
;; -*- lexical-binding: t -*-
;;; commentary:

"manjis's .emacs.d
Heavily inspired by nykma/nema"

;; if something is wrong
(setq debug-on-error t)

;; proxy
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http" . "127.0.0.1:7890")
     ("https" . "127.0.0.1:7890")))

(require 'package)
(package-initialize)

;; Core config files
(add-to-list 'load-path
             (expand-file-name "lisp" user-emacs-directory))

(require 'init-customize-group)

;; move customize-set-variable out of init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file)
  (load custom-file))

;;; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341
;; (when (version<=  "27" emacs-version)
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;; )

;; core layers
(require 'init-core)
(require 'init-basic)
(require 'init-appearance)
(require 'init-font)

;; Language-specific layers
(require 'init-ess)
(require 'init-c)
(require 'init-julia)
(require 'init-org)
(require 'init-completion)
(require 'init-zig)
(require 'init-vcs)

;; Tools layers
(require 'init-dict)
