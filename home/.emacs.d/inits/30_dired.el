;; -*- coding: utf-8 -*-

;; Listing directory failed but access-file worked エラーの解消
;; ref: http://d.hatena.ne.jp/billest/20100930/1285809840
(when (eq system-type 'darwin)
  (require 'ls-lisp)
  (setq ls-lisp-use-insert-directory-program nil))

;;; Dired
(add-hook 'dired-load-hook
          '(lambda ()
             (load-library "ls-lisp")
             (setq ls-lisp-dirs-first t)
             (setq dired-listing-switches "-AFl --group-directories-first")
             (setq find-ls-option '("-exec ls -AFGl {} \;" . "-AFGl"))
             (setq grep-find-command "ack --nocolor --nogroup ")
             (require 'wdired)
             ))

;; ref: http://d.hatena.ne.jp/m2ym/20110228/1298868721
;; ref: http://d.hatena.ne.jp/m2ym/20110120/1295524932
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
;;(push '(dired-mode :position top) popwin:special-display-config)

;; direx
;; http://cx4a.blogspot.com/2011/12/popwineldirexel.html
;; direx:direx-modeのバッファをウィンドウ左辺に幅25でポップアップ
;; :dedicatedにtを指定することで、direxウィンドウ内でのバッファの切り替えが
;; ポップアップ前のウィンドウに移譲される
(require 'direx)
(setq direx:leaf-icon "  "
      ;;direx:open-icon "▾ "
      ;;direx:closed-icon "▸ ")
      direx:open-icon "- "
      direx:closed-icon "+ ")
(push '(direx:direx-mode :position left :width 40 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)

