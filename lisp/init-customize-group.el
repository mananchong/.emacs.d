;;; init-customize-group --- Customize group settings
;;; Commentary:
"Customize group settings"
;;; Code:

(defgroup manjis ()
  "Manjis's EMAcs config."
  :tag "Manjis"
  :link '(url-link :tag "GitHub" "https://github.com/mananchong/.emacs.d")
  :prefix "manjis-"
  :group 'applications)

(defcustom manjis-emacs-completion-engine 'ivy
  "Emacs completion engine to use.
Default is `ivy'."
  :tag "Emacs completion engine"
  :group 'manjis
  :type '(choice
          (const :tag "ido" ido)
          (const :tag "Ivy / Swiper" ivy)
          (const :tag "Helm" helm)
          (const :tag "Vertico" vertico)))

(defcustom manjis-use-evil nil
  "Use evil-mode.
Disabled by default."
  :tag "Evil"
  :group 'manjis
  :type '(boolean))

(defcustom manjis-lsp nil
  "Use LSP (Language Server Protocol) as code completion backend.
Disabled by default."
  :tag "Use LSP"
  :group 'manjis
  :type `(choice
          (const :tag "Don't use" ,nil)
          (const :tag "emacs-lsp/lsp-mode" lsp-mode)))

(defcustom manjis-mode-line 'smart-mode-line
  "Mode line to use.
Default is `smart-mode-line'"
  :tag "Mode line"
  :group 'manjis
  :type '(choice
          (const :tag "Emacs default" default)
          (const :tag "Smart mode line" smart-mode-line)
          (const :tag "Doom modeline" doom-modeline)
          (const :tag "Awesome Tray" awesome-tray)
          (const :tag "Telephone Line" telephone-line)
          (const :tag "Powerline" powerline)))

(defcustom manjis-theme 'vscode
  "Color theme for the whole Emacs.
Default is VSCode Dark"
  :tag "Theme"
  :group 'manjis
  :type '(choice
          (const :tag "VSCode Dark" vscode)
          (const :tag "moe-theme.el" moe-theme)
          (const :tag "Zenburn (high contrast)" hc-zenburn-theme)
          (const :tag "Zenburn" zenburn)
          (const :tag "Doom themes: peacock" doom-themes)
          (const :tag "Darkokai" darkokai-theme)
          (const :tag "Fluc UI" flucui-themes)
          (const :tag "Srcery" srcery-theme)
          (const :tag "Kaolin" kaolin-themes)
          (const :tag "Alect themes" alect-themes)
          (const :tag "Tron: Legacy" tron-legacy)
          (const :tag "Nord theme" nord)
          (const :tag "Bespoke-themes" bespoke)
          (const :tag "modus-themes" modus-themes)))

(defcustom manjis-theme-style 'dark
  "Use dark or light style of color theme (if the theme supports).
Default is `dark'"
  :tag "Theme style"
  :group 'manjis
  :type '(choice
          (const :tag "Light" light)
          (const :tag "Dark" dark)))

(defcustom manjis-has-jis-keycode nil
  "Define if keyboard can send JIS keycode."
  :tag "JIS keycode"
  :group 'manjis
  :type 'boolean)

(defcustom manjis-use-flycheck t
  "Use flycheck or flymake."
  :tag "FlyCheck"
  :group 'manjis
  :type 'boolean)

(provide 'init-customize-group)

;;; init-customize-group.el ends here
