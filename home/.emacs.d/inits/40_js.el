;; javascript-mode
;; 2010-11-19 js2に変更
;; https://github.com/mooz/js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; 2010-11-19 以下を削除
;; 2010/10/04 http://www.trekdevel.net/archives/186
;;(add-to-list 'auto-mode-alist (cons  "\\.\\(js\\|as\\|json\\|jsn\\)\\'" 'javascript-mode))
;;(autoload 'javascript-mode "javascript" nil t)
;;(setq js-indent-level 2)
