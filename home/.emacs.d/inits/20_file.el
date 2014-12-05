;; -*- coding: utf-8 -*-

;; 同名のファイル管理
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;;; find fileの大文字小文字の区別をしない
(setq completion-ignore-case t)

;;; ファイルの先頭付近に、last  updated:の文字を見つけたら、日付を自動で入れる
(require 'time-stamp)
(add-hook 'before-save-hook 'time-stamp)
(setq time-stamp-active t)
(setq time-stamp-start "Last Updated : ")
(setq time-stamp-format "%04y/%02m/%02d %02H:%02M")
(setq time-stamp-end " \\|$")
(setq time-stamp-line-limit 10) ;; ファイルの先頭から10行以内を探す

;;; #!が行頭にあると、chmod +xを自動的にやる
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;; open file as root
;; http://tech.kayac.com/archive/emacs.html
(defun th-rename-tramp-buffer ()
  (when (file-remote-p (buffer-file-name))
    (rename-buffer
     (format "%s:%s"
             (file-remote-p (buffer-file-name) 'method)
             (buffer-name)))))
(add-hook 'find-file-hook
          'th-rename-tramp-buffer)
(defadvice find-file (around th-find-file activate)
  "Open FILENAME using tramp's sudo method if it's read-only."
  (if (and (not (file-writable-p (ad-get-arg 0)))
           (y-or-n-p (concat "File "
                             (ad-get-arg 0)
                             " is read-only.  Open it as root? ")))
      (th-find-file-sudo (ad-get-arg 0))
    ad-do-it))
(defun th-find-file-sudo (file)
  "Opens FILE with root privileges."
  (interactive "F")
  (set-buffer (find-file (concat "/sudo::" file))))

;; シンボリックリンク
;; ref: http://d.hatena.ne.jp/syohex/20101203/1291385927
(setq vc-follow-symlinks t)

