;; -*- coding: utf-8 -*-

;; ログの記録量を増やす
(setq message-log-max 10000)

;;; 履歴存数を増やす
(setq history-length 1000)

;; ダイアログボックスを使わない
(setq use-dialog-box nil)
(defalias 'message-box 'message)

;; yesで答る部分もyで答えられるように
(defalias 'yes-or-no-p 'y-or-n-p)

;; Scratch Bufferを自動保存
;; http://blog.lifeflow.jp/2010/02/emacs-scratch.html
(defun save-scratch-data ()
  (let ((str (progn
               (set-buffer (get-buffer "*scratch*"))
               (buffer-substring-no-properties
                (point-min) (point-max))))
        (file "~/.scratch"))
    (if (get-file-buffer (expand-file-name file))
        (setq buf (get-file-buffer (expand-file-name file)))
      (setq buf (find-file-noselect file)))
    (set-buffer buf)
    (erase-buffer)
    (insert str)
    (save-buffer)
    (kill-buffer buf)))

(defadvice save-buffers-kill-emacs
  (before save-scratch-buffer activate)
  (save-scratch-data))

(defun read-scratch-data ()
  (let ((file "~/.scratch"))
    (when (file-exists-p file)
      (set-buffer (get-buffer "*scratch*"))
      (erase-buffer)
      (insert-file-contents file))
    ))

(read-scratch-data)

;; mini bufferではIMEをOffにする
(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)

;; findをackで行う
(setq grep-find-command "ack --nogroup ")

;; 変更のあったファイルの自動再読み込み
;; ref: http://yoshiori.github.com/blog/2013/01/31/file-update-emacs/
;; ref: http://d.hatena.ne.jp/syohex/20101203/1291385927
(global-auto-revert-mode 1)
(setq auto-revert-interval 10)
(setq auto-revert-check-vc-info t)

