;;; -*- Coding: iso-2022-jp -*-

;; cask
;; ref: http://qiita.com/toshiwo/items/84cfa5e940ffdd69afaa
(require 'cask)
(cask-initialize)

;; init.elを分割する
;; http://tech.kayac.com/archive/divide-dot-emacs.html
(require 'init-loader)
;;(setq init-loader-show-log-after-init nil)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")

;; 00 一般設定
;; 10 起動前実行系
;; 20 関数定義
;; 30 追加機能系
;; 40 メジャーモード
;; 50 マイナーモード
;; 90 起動後実行系

