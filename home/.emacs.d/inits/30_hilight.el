;; -*- coding: utf-8 -*-

;;; ref: http://d.hatena.ne.jp/suztomo/20081123/1227466198
;;; C-s,C-wで同じ単語をハイライト
(defun isearch-forward-with-heading ()
  "Search the word your cursor looking at."
  (interactive)
  (command-execute 'backward-word)
  (command-execute 'isearch-forward))

(global-set-key "\C-s" 'isearch-forward-with-heading)
