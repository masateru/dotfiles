;;; -*- Coding: iso-2022-jp -*-

;; cask
;; ref: http://qiita.com/toshiwo/items/84cfa5e940ffdd69afaa
(require 'cask)
(cask-initialize)

;; init.el$B$rJ,3d$9$k(B
;; http://tech.kayac.com/archive/divide-dot-emacs.html
(require 'init-loader)
;;(setq init-loader-show-log-after-init nil)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")

;; 00 $B0lHL@_Dj(B
;; 10 $B5/F0A0<B9T7O(B
;; 20 $B4X?tDj5A(B
;; 30 $BDI2C5!G=7O(B
;; 40 $B%a%8%c!<%b!<%I(B
;; 50 $B%^%$%J!<%b!<%I(B
;; 90 $B5/F08e<B9T7O(B

