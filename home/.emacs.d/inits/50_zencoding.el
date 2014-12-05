;; zencoding-mode
;; http://www.goodpic.com/mt/archives2/2010/02/emacs_zencoding.html
(add-to-list 'load-path "~/.emacs.d/elisp")
(require 'zencoding-mode)
(add-hook 'html-helper-mode-hook 'zencoding-mode)
(add-hook 'xml-mode-hook 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'html-mode-hook 'zencoding-mode)
(define-key zencoding-mode-keymap (kbd "<C-return>") 'zencoding-expand-line)
;;(define-key zencoding-mode-keymap (kbd "<C-return>") 'zencoding-expand-yas)
;;(define-key zencoding-mode-keymap (kbd "<S-return>") 'zencoding-expand-line)
