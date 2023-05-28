;;; manjis-basic --- Core config for manjis
;;; Commentary:

;;; Code:

(if (boundp 'save-place-file)
    (setq save-place-file (expand-file-name ".cache/places" user-emacs-directory)))

(setq project-list-file (expand-file-name ".cache/project.list" user-emacs-directory))

;; quelpa - For those packages which are not in MELPA
(use-package quelpa
  :config
  (use-package quelpa-use-package)
  (setq quelpa-update-melpa-p nil)
  (quelpa-use-package-activate-advice))

;; delight - Chage minor mode indicator in mode line
(use-package delight
  :config
  (delight '((eldoc-mode nil "eldoc")
	     (auto-revert-mode nil "autorevert")
	     (emacs-lisp-mode "ELisp" :major)
	     (abbrev-mode "" "abbrev"))))

;; Interactive regex replacer
(use-package anzu
  ;; :bind (("C-M-%" . 'anzu-query-replace-at-cursor)
  :delight
  ;; :init
  ;; (global-anzu-mode +1)
  )

;; which-key
(use-package which-key
  :delight
  :config
  (which-key-mode)
  (which-key-setup-side-window-right-bottom))

;; mwim - better default behavior
(use-package mwim
  :bind (("C-a" . mwim-beginning-of-code-or-line)
	 ("C-e" . mwim-end-of-code-or-line)))

;; ace-jump-mode - cursor quick jump
(use-package ace-jump-mode
  :bind (("C-." . ace-jump-mode)))

;; avy - jump to char
(use-package avy
  :bind (("C-:" . avy-goto-char)
         ("C-'" . avy-goto-char-timer)
         ("M-g f" . avy-goto-line)
         ("M-g w" . avy-goto-word-1)
         ("C-c C-j" . avy-resume))
  :config
  (setq avy-background t
        avy-all-windows t
        avy-timeout-seconds 0.3))

;; ace-window - Quickly switch windows
(use-package ace-window
  :bind (("C-M-o" . ace-window))
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

;; multiple-cursors
(use-package multiple-cursors
  :bind (("C-S-c" . mc/edit-lines)
         ("C-M-<" . mc/skip-to-previous-like-this)
	 ("C->" . mc/mark-next-like-this-symbol)
         ("C-M->" . mc/skip-to-next-like-this)
	 ("C-<" . mc/mark-previous-like-this-symbol)
	 ("C-c C->" . mc/mark-all-symbols-like-this)))

;; Better version of paredit{,-everywhere}
(use-package puni
  ;; :quelpa
  ;; (puni :fetcher github :repo "AmaiKinono/puni" :files ("puni.el" "LICENSE"))
  :init
  (puni-global-mode)
  (add-hook 'vterm-mode-hook #'puni-disable-puni-mode)
  (add-hook 'minibuffer-mode-hook #'puni-disable-puni-mode)
  :bind (:map puni-mode-map
              ("C-M-r" . puni-raise)
              ("C-M-." . puni-slurp-forward)
              ("C-M-," . puni-slurp-backward)
              ("s-." . puni-barf-forward)
              ("s-," . puni-barf-backward)))

(use-package editorconfig
  :delight
  :config
  (editorconfig-mode t))

;; encoding
(setq default-process-coding-system '(utf-8 . utf-8))

;; enable column numbers
(setq column-number-mode t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; using arrow for moving through buffers
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

;; recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(run-at-time nil (* 5 60) 'recentf-save-list)

;; parens matching and highlights
;; paren is internal pkg
(use-package paren
  :ensure nil
  :init
  (setq show-paren-delay 0)
  :config
  (show-paren-mode +1))

(provide 'manjis-basic)
;;; manjis-basic.el ends here
