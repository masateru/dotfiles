;; mmm-mode in php
;; ref: http://bluestar.s32.xrea.com/text/php-mode.php
;; ref: http://blog.supermomonga.com/ (install)
;; (require 'mmm-mode)
;; (setq mmm-global-mode 'maybe)
;; (mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
;; (mmm-add-classes
;;  '((html-php
;;     :submode php-mode
;;     :front "<\\?\\(php\\)?"
;;     :back "\\?>")))
;; (add-to-list 'auto-mode-alist '("\\.php?\\'" . html-helper-mode))

;; (require 'mmm-mode)
;; (require 'mmm-auto)
;; (require 'mmm-vars)
;; (require 'mmm-compat)
;; (setq mmm-global-mode 'maybe)
;; (setq mmm-submode-decoration-level 2)
;; ;; mmm-mode の色設定
;; (set-face-background 'mmm-default-submode-face "gray15")
;; この辺りはめんどくさいので設定してない。
;; (set-face-background 'mmm-output-submode-face  "LightBlue")
;; (set-face-background 'mmm-code-submode-face    "LightGray")
;; (set-face-background 'mmm-comment-submode-face "LightYellow")
;; (set-face-background 'mmm-special-submode-face "Yellow")
;; ;; HTML + PHP
;; (mmm-add-classes
;;  '((html-php
;;     :submode php-mode
;;     :front "<\\?\\(php\\)?"
;;     :back "\\?>")))
;; ;; HTML + CSS
;; (mmm-add-classes
;;  '((html-css
;;     :submode css-mode
;;     :front "<style [^>]*>?"
;;     :back "</style>?")))
;; ;; HTML + JavaScript
;; (mmm-add-classes
;;  '((html-js
;;     :submode js2-mode
;;     :front "<script [^>]*>?"
;;     :back "</script>?")))
;; ;; mmm-mode を使うファイルたち
;; (mmm-add-mode-ext-class 'html-helper-mode "\\.php?\\'" 'html-php)
;; (mmm-add-mode-ext-class 'html-helper-mode "\\.s?html?\\'" 'html-js)
;; (mmm-add-mode-ext-class 'html-helper-mode "\\.s?html?\\'" 'html-css)
;; (mmm-add-mode-ext-class 'html-helper-mode "\\.ctp?\\'" 'html-php)
;; (mmm-add-mode-ext-class 'html-helper-mode "\\.ctp?\\'" 'html-css)
;; (mmm-add-mode-ext-class 'html-helper-mode "\\.ctp?\\'" 'html-js)

;; 開いてるバッファをmmm-modeでパースしなおし
;; (global-set-key [f7] 'mmm-parse-buffer)
