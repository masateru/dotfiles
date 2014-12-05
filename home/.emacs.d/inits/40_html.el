(delete 'sgml-html-meta-auto-coding-function auto-coding-functions)

;; css-mode
;; 2010/10/04 http://www.trekdevel.net/archives/186
(autoload 'css-mode "css-mode" "CSS mode" t)
(setq auto-mode-alist
    (cons '("\\.css\\'" . css-mode) auto-mode-alist))
(setq cssm-indent-function #'cssm-c-style-indenter)

;; html-helper-mode
;; ref: http://www.trekdevel.net/archives/186
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.\\(html\\|htm\\|tpl\\|ctp\\)$" . html-helper-mode) auto-mode-alist))
(add-hook 'html-helper-mode-hook '(lambda ()
    (setq c-basic-offset 4)
    (setq c-tab-width 4)
    (setq c-argdecl-indent 0)
    (setq c-auto-newline nil)
    (setq c-continued-statement-offset 0)
    (setq c-indent-level 4)
    (setq c-label-offset -4)
    (setq c-tab-always-indent t)
    (setq indent-tabs-mode t)
    (setq tab-width 4)
    (setq-default tab-width 4)
) t)

;; ref:http://d.hatena.ne.jp/whitypig/20100811/1281541247
;; (setq html-helper-any-list-start
;;       "<dl\\|<ul\\|<ol\\|<menu\\|<dir\\|<select\\|<table\\|<tr\\|<form\\|<div\\|<head")
;; (setq html-helper-any-list-end
;;       "</dl>\\|</ul>\\|</ol>\\|</menu>\\|</dir>\\|</select>\\|</table>\\|</tr>\\|</form>\\|</div>\\|</head>")

;; ref:http://d.hatena.ne.jp/handlename/20101111/1289491101
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))


