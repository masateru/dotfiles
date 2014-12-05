;; -*- coding: utf-8 -*-

;; 起動前に実行する処理

;; http://d.hatena.ne.jp/rubikitch/20071122/1195670407
(require 'cl)

;; byte-compile時のwarning抑制
;; ref:http://www.gfd-dennou.org/member/uwabami/cc-env/EmacsBasic.html
(setq byte-compile-warnings
      '(not
	free-vars
	unresolved
	callargs
	redefine
	;;obsolete
	noruntime
	cl-functions
	interactive-only
	;;make-local
	))

;; ChromeのTextareaで、Emacsをつかう
;; http://gihyo.jp/admin/serial/01/ubuntu-recipe/0126?page=2
(require 'edit-server)
(edit-server-start)

;; 全てのバッファを一気に閉じる
;; http://shida492.blog116.fc2.com/blog-entry-215.html
(defun close-all-buffers ()
  (interactive)
  (loop for buffer being the buffers
     do (kill-buffer buffer)))

;; ソースをHTML展開して、Keynote等に貼り付けやすくする
;; ref: http://kakutani.com/20110703.html#p01
(load "htmlize.el")
