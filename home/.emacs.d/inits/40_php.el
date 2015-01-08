;; php-mode
;; (install-elisp "http://php-mode.svn.sourceforge.net/svnroot/php-mode/tags/php-mode-1.5.0/php-mode.el")
;;(require 'php-mode)
;;
;; 2010/10/04 change http://www.trekdevel.net/archives/186
(add-hook 'php-mode-hook 'turn-on-font-lock)
(autoload 'php-mode "php-mode" "PHP mode" t)

;; (defcustom php-file-patterns (list "\\.php[s34]?\\'" "\\.phtml\\'" "\\.inc\\'")
;;   "*List of file patterns for which to automatically invoke php-mode."
;;   :type '(repeat (regexp :tag "Pattern"))
;;   :group 'php)

;;(let ((php-file-patterns-temp php-file-patterns))
;;  (while php-file-patterns-temp
;;    (add-to-list 'auto-mode-alist
;;                 (cons (car php-file-patterns-temp) 'php-mode))
;;    (setq php-file-patterns-temp (cdr php-file-patterns-temp))))

(add-hook 'php-mode-hook '(lambda ()
    (setq c-basic-offset 4)
    (setq c-tab-width 4)
    (setq c-argdecl-indent 0)
    (setq c-auto-newline nil)
    (setq c-continued-statement-offset 0)
    (setq c-indent-level 4)
    (setq c-label-offset -4)
    (setq c-tab-always-indent t)
    (setq indent-tabs-mode nil)
    (setq tab-width 4)
    (setq-default tab-width 4)
) t)


;; ref: http://tech.kayac.com/archive/php-completion.html
;; phpの補完
(add-hook 'php-mode-hook
         (lambda ()
             (require 'php-completion)
             (php-completion-mode t)
             (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)
             (when (require 'auto-complete nil t)
             (make-variable-buffer-local 'ac-sources)
             (add-to-list 'ac-sources 'ac-source-php-completion)
             (auto-complete-mode t))))

;; smarty-mode
(add-to-list 'auto-mode-alist (cons "\\.tpl\\'" 'smarty-mode))
(autoload 'smarty-mode "smarty-mode" "Smarty Mode" t)

;; ref: http://d.hatena.ne.jp/syohex/20121025/1351175067
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
             (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))

(add-hook 'php-mode-hook 'helm-gtags-mode)


;; smart-newline
;; ref: http://rubikitch.com/2014/12/31/smart-newline/lll
(add-hook 'php-mode-hook ;; or any major-mode-hooks
	  (lambda ()
	    (smart-newline-mode t)))
