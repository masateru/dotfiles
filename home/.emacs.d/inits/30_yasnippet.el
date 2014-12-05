;; -*- coding: utf-8 -*-
;; yasnippet
;; ref:http://konbu13.hatenablog.com/entry/2014/01/12/113300
(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/mySnippets" 
        "~/.emacs.d/snippets"
        ))

(yas-global-mode 1)

(custom-set-variables '(yas-trigger-key "TAB"))
