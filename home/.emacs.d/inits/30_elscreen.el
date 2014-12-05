;; -*- coding: utf-8 -*-

;;; (load "elscreen" "Elscreen" t)
;;; ;;; ElScreen
;;; ;;(require 'elscreen)
;;; (if window-system
;;;     (define-key elscreen-map "\C-z" 'iconify-or-deiconify-frame)
;;;   (define-key elscreen-map "\C-z" 'suspend-emacs))
;;; (require 'elscreen-dired)
;;; 
;;; ;; http://wal.sh/code/elisp/trunk/medew/site-lisp/windzoom.el
;;; ;; (require 'windzoom)
;;; 
;;; ;; http://d.hatena.ne.jp/khiker/20100119/window_resize
;;; ;; 
;;; (defun my-window-resizer ()
;;;   "Control window size and position."
;;;   (interactive)
;;;   (let ((window-obj (selected-window))
;;;         (current-width (window-width))
;;;         (current-height (window-height))
;;;         (dx (if (= (nth 0 (window-edges)) 0) 1
;;;               -1))
;;;         (dy (if (= (nth 1 (window-edges)) 0) 1
;;;               -1))
;;;         action c)
;;;     (catch 'end-flag
;;;       (while t
;;;         (setq action
;;;               (read-key-sequence-vector (format "size[%dx%d]"
;;;                                                 (window-width)
;;;                                                 (window-height))))
;;;         (setq c (aref action 0))
;;;         (cond ((= c ?l)
;;;                (enlarge-window-horizontally dx))
;;;               ((= c ?h)
;;;                (shrink-window-horizontally dx))
;;;               ((= c ?j)
;;;                (enlarge-window dy))
;;;               ((= c ?k)
;;;                (shrink-window dy))
;;;               ;; otherwise
;;;               (t
;;;                (let ((last-command-char (aref action 0))
;;;                      (command (key-binding action)))
;;;                  (when command
;;;                    (call-interactively command)))
;;;                (message "Quit")
;;;                (throw 'end-flag t)))))))
;;; ;; window-resizer は C-c C-r (resize) で
;;; ;; http://d.hatena.ne.jp/mooz/20100119/p1
;;; (global-set-key "\C-c\C-r" 'my-window-resizer)
