;; -*- coding: utf-8 -*-

;; jump to line number.
(global-set-key (kbd "M-g")       'goto-line)

;; 直前の行を繰り返す
;; ref: http://d.hatena.ne.jp/rubikitch/20110221/seq
;; F6でどんどん繰り返す
(defun duplicate-this-line-forward (n)
  "Duplicates the line point is on.  The point is next line.
 With prefix arg, duplicate current line this many times."
  (interactive "p")
  (when (eq (point-at-eol)(point-max))
    (save-excursion (end-of-line) (insert "\n")))
  (save-excursion
    (beginning-of-line)
    (dotimes (i n)
      (insert-buffer-substring (current-buffer) (point-at-bol)(1+ (point-at-eol))))))
(global-set-key [f6] 'duplicate-this-line-forward)

;; F7で、indent-regionとタブをスペースに変換
;; ref:http://d.hatena.ne.jp/gan2/20080224/1203830553
(global-set-key [f7] 'untabify-and-indent-buffer-all)
(defun untabify-and-indent-buffer-all()
  (interactive)
  (untabify (point-min) (point-max))
  (indent-region (point-min) (point-max)))


;; 数字のインクリメント
;; http://d.hatena.ne.jp/rubikitch/20110221/seq
(defun count-string-matches (regexp string)
  (with-temp-buffer
    (insert string)
    (count-matches regexp (point-min) (point-max))))
(defun seq (format-string from to)
  "Insert sequences with FORMAT-STRING.
FORMAT-STRING is like `format', but it can have multiple %-sequences."
  (interactive
   (list (read-string "Input sequence Format: ")
         (read-number "From: " 1)
         (read-number "To: ")))
  (save-excursion
    (loop for i from from to to do
          (insert (apply 'format format-string
                         (make-list (count-string-matches "%[^%]" format-string) i))
                  "\n")))
  (end-of-line))

;; 連番の長方形方式 
;; C-x r Nでリージョンを連番で置き換える
;; ref: http://d.hatena.ne.jp/rubikitch/20110221/seq
(eval-when-compile (require 'cl))
(defun number-rectangle (start end format-string from)
  "Delete (don't save) text in the region-rectangle, then number it."
  (interactive
   (list (region-beginning) (region-end)
         (read-string "Number rectangle: " (if (looking-back "^ *") "%d. " "%d"))
         (read-number "From: " 1)))
  (save-excursion
    (goto-char start)
    (setq start (point-marker))
    (goto-char end)
    (setq end (point-marker))
    (delete-rectangle start end)
    (goto-char start)
    (loop with column = (current-column)
          while (<= (point) end)
          for i from from   do
          (insert (format format-string i))
          (forward-line 1)
          (move-to-column column)))
  (goto-char start))
(global-set-key "\C-xrN" 'number-rectangle)

;; fullscreen
(global-set-key (kbd "M-<RET>") 'toggle-frame-fullscreen)

;;; 分割されたWindowの移動をカーソルで
;;; ref: http://d.hatena.ne.jp/mat_aki/20080421
(windmove-default-keybindings)
(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <down>") 'windmove-down)
(global-unset-key (kbd "ESC <right>"))
(global-unset-key (kbd "ESC <left>"))
(global-set-key (kbd "ESC <right>") 'windmove-right)
(global-set-key (kbd "ESC <left>") 'windmove-left)


