;;; manjis's emacs config
;; -*- lexical-binding: t -*-
;;; commentary:

"manjis's .emacs.d
Heavily inspired by nykma/nema"

;; if something is wrong
(setq debug-on-error t)

(require 'package)
(package-initialize)

;; Core config files
(add-to-list 'load-path
             (expand-file-name "lisp" user-emacs-directory))

(require 'manjis-customize-group)

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
(require 'manjis-core)
(require 'manjis-basic)
(require 'manjis-appearance)
(require 'manjis-font)

;; Language-specific layers
(require 'manjis-r)
(require 'manjis-c)
(require 'manjis-julia)
(require 'manjis-org)
(require 'manjis-completion)
(require 'manjis-zig)
(require 'manjis-vcs)
