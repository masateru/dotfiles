;; -*- coding: utf-8 -*-

;;; ;; anything
;;; ;; http://d.hatena.ne.jp/rubikitch/20100718/anything
;;; (require 'anything-startup)
;;; 
;;; (setq anything-c-filelist-file-name "/tmp/all.filelist")
;;; (setq anything-grep-candidates-fast-directory-regexp "^/tmp")
;;; 
;;; ;; http://d.hatena.ne.jp/rubikitch/20091224/recent
;;; (require 'recentf-ext)
;;; 
;;; ;;ref:http://havelog.ayumusato.com/computer/software/e120-emacs-startup.html 
;;; (global-set-key (kbd "C-c f") 'anything-recentf)
;;; ;;(global-set-key (kbd "M-y") 'anything-show-kill-ring)
;;; ;;(global-set-key (kbd "C-x b") 'anything-for-files)
;;; 
;;; ;; ref: http://d.hatena.ne.jp/m2ym/20110120/1295524932
;;; (setq anything-samewindow nil)
;;; (push '("*anything*" :height 20) popwin:special-display-config)
;;; (push '("*anything recentf*" :height 20) popwin:special-display-config)
;;; (push '("*anything complete*" :height 20) popwin:special-display-config)
;;; (push '("*anything find-file*" :height 20) popwin:special-display-config)
;;; 
