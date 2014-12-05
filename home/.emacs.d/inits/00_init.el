;; -*- coding: utf-8 -*-

;; PATH
;; http://sakito.jp/emacs/emacsshell.html#path
;; より下に記述した物が PATH の先頭に追加されます
(dolist (dir (list
	      "/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin"
	      "/sbin"
	      "/usr/sbin"
	      "/bin"
	      "/usr/bin"
	      "/usr/local/sbin"
	      "/usr/local/bin"
              (expand-file-name "~/bin")
              ))
  ;; PATH と exec-path に同じ物を追加します
  (when ;; (and 
         (file-exists-p dir) ;; (not (member dir exec-path)))
    (setenv "PATH" (concat dir ":" (getenv "PATH")))
    (setq exec-path (append (list dir) exec-path))))

;; mail address
(setq user-mail-address "ohnishi@key-p.co.jp")

;; not backup
(setq make-backup-files nil)

;; ベルを鳴らさない
(setq ring-bell-function 'ignore)


;; スタートページ非表示
(setq inhibit-startup-message t)

;; Dired-kをつかうように
;; ref:http://d.hatena.ne.jp/syohex/20140403/1396512763
(require 'dired-k)
(define-key dired-mode-map (kbd "K") 'dired-k)

;; キルリングを保存
;; ref:http://d.hatena.ne.jp/rubikitch/20110226/savekill
(require 'savekill)

;; emacsclientの為の設定
;; ref: http://qiita.com/items/2bdcd9cd5b701b1112e6
(require 'server)
(unless (server-running-p) ;; 複数サーバ起動を防ぐ
  (server-start))

;; ref:http://niku.name/articles/2013/04/30/emacs%E3%81%A7ls%20does%20not%20support%20--dired;%20see%20%60dired-use-ls-dired'%20for%20more%20details.%E3%81%A8%E5%87%BA%E3%81%9F%E3%81%A8%E3%81%8D%E3%81%AE%E5%AF%BE%E5%87%A6%E6%96%B9%E6%B3%95
(setq dired-use-ls-dired t)

;; C-zで、最小化しないように
;; globalなC-zを無効化
;; http://d.hatena.ne.jp/sandai/20120304/p2
(global-unset-key "\C-z")

;;; ref:http://kawachodev.hatenablog.jp/entry/homebrew-cocoa-emacs-24.3
;;; ダイアログが閉じられない問題に対応
(setq use-dialog-box nil)
