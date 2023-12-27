;;; manjis-font --- Core config for manjis
;;; Commentary:

;;; Code:

;; font size
(set-face-attribute 'default nil :height 140)

;; set default font
(set-frame-font
 (cond
  ((string-equal system-type "windows-nt")
   (if (member "IntelOne Mono" (font-family-list)) "IntelOne Mono" nil)
   (if (member "Rec Mono Casual" (font-family-list)) "Rec Mono Casual" nil)
   (if (member "Consolas" (font-family-list)) "Consolas" nil))
  ((string-equal system-type "darwin")
   (if (member "Menlo" (font-family-list)) "Menlo-16" nil))
  ((string-equal system-type "gnu/linux")
   (if (member "DejaVu Sans Mono" (font-family-list)) "DejaVu Sans Mono" nil))
  (t nil))
 t t)

;; set font for chinese characters
(set-fontset-font
 t
 '(#x4e00 . #x9fff)
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "微软雅黑" (font-family-list)) "Microsoft YaHei")
    ((member "Microsoft JhengHei" (font-family-list)) "Microsoft JhengHei")
        ((member "SimHei" (font-family-list)) "SimHei")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Hei" (font-family-list)) "Hei")
    ((member "Heiti SC" (font-family-list)) "Heiti SC")
    ((member "Heiti TC" (font-family-list)) "Heiti TC")))
    ((string-equal system-type "gnu/linux")
   (cond
    ((member "WenQuanYi Micro Hei" (font-family-list)) "WenQuanYi Micro Hei"))))
 )


(provide 'manjis-font)
;;; manjis-font.el ends here
